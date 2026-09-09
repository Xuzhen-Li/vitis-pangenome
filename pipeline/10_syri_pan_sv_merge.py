#!/usr/bin/env python3
"""Merge SyRI SV calls into a non-redundant pan-SV BED.

Adapted from LengFeng00/oryza-pangenome-pipeline scripts/05_sv_detection/merge_pan_SVs.sh
(type match + breakpoint slop + reciprocal length overlap). Use as an
alignment-based check beside the PGGB graph — not a replacement.
"""
from __future__ import annotations

import argparse
from collections import defaultdict
from pathlib import Path


def parse_syri(path: Path, min_size: int) -> list[tuple]:
    unit = path.name.replace("_syri.out", "").replace(".syri.out", "")
    rows = []
    for line in path.read_text().splitlines():
        if not line or line.startswith("#"):
            continue
        f = line.split("\t")
        if len(f) < 10:
            continue
        chrom, start, end = f[0], int(f[1]), int(f[2])
        svtype, parent = f[8], f[9]
        if svtype not in {"INS", "DEL", "DUP", "INV", "TRANS"}:
            continue
        if parent != "NOTAL":
            continue
        svlen = abs(end - start)
        if svlen < min_size:
            continue
        rows.append((chrom, min(start, end), max(start, end), svtype, svlen, unit))
    return rows


def overlaps(a, b, bp_slop: int, min_ro: float) -> bool:
    if a[0] != b[0] or a[3] != b[3]:
        return False
    if abs(a[1] - b[1]) > bp_slop or abs(a[2] - b[2]) > bp_slop:
        return False
    inter = max(0, min(a[2], b[2]) - max(a[1], b[1]))
    if inter == 0:
        return False
    ro = inter / float(min(a[4], b[4]))
    return ro >= min_ro


def cluster(rows: list, bp_slop: int, min_ro: float) -> list:
    by_key: dict[tuple, list] = defaultdict(list)
    for r in rows:
        by_key[(r[0], r[3])].append(r)
    clusters = []
    for key, group in by_key.items():
        group = sorted(group, key=lambda x: (x[1], x[2]))
        used = [False] * len(group)
        for i, r in enumerate(group):
            if used[i]:
                continue
            members = [r]
            used[i] = True
            for j in range(i + 1, len(group)):
                if used[j]:
                    continue
                if overlaps(r, group[j], bp_slop, min_ro):
                    members.append(group[j])
                    used[j] = True
            chrom, start, end, svtype, _, _ = members[0]
            units = sorted({m[5] for m in members})
            clusters.append(
                (chrom, start, end, svtype, abs(end - start), len(units), ",".join(units))
            )
    return clusters


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--sv-dir", type=Path, required=True)
    ap.add_argument("-o", "--out", type=Path, required=True)
    ap.add_argument("--min-size", type=int, default=50)
    ap.add_argument("--bp-slop", type=int, default=500)
    ap.add_argument("--min-ro", type=float, default=0.5)
    args = ap.parse_args()

    rows = []
    for p in sorted(args.sv_dir.glob("*syri.out")):
        rows.extend(parse_syri(p, args.min_size))
    for p in sorted(args.sv_dir.glob("*.syri.out")):
        if p not in list(args.sv_dir.glob("*syri.out")):
            rows.extend(parse_syri(p, args.min_size))

    print(f"raw SVs: {len(rows)}")
    clumps = cluster(rows, args.bp_slop, args.min_ro)
    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w") as fh:
        fh.write("#chrom\tstart\tend\ttype\tlen\tn_units\tunits\n")
        for c in sorted(clumps, key=lambda x: (x[0], x[1])):
            fh.write("\t".join(map(str, c)) + "\n")
    print(f"pan-SV clusters: {len(clumps)} -> {args.out}")


if __name__ == "__main__":
    main()
