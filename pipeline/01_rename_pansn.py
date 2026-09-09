#!/usr/bin/env python3
"""Rename FASTA headers to PanSN: SAMPLE#HAP#chrNN for Vitis pangenome builds.

Rewritten for this repo from the cannabis can-pan rename pattern
(COMInterop/lighthouse pangenome/1-rename-pansn.py) and the potato
Haplotype-diversity PanSN note (A157#1#chr01 style).

Edit HEADER_MAP or pass a TSV map; do not hard-code private sample IDs in git.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path


def load_map(path: Path | None) -> dict[str, str]:
    """Optional TSV: old_header_prefix\\tSAMPLE#HAP#chrNN (full new name without '>')."""
    if path is None:
        return {}
    out: dict[str, str] = {}
    for line in path.read_text().splitlines():
        if not line.strip() or line.startswith("#"):
            continue
        old, new = line.split("\t", 1)
        out[old.strip()] = new.strip()
    return out


def guess_pansn(header: str, default_hap: str) -> str | None:
    """Best-effort guesses for common public Vitis assemblies.

    Examples handled:
      PN40024.chr01 / PN40024_chr01 / chr01 → need --sample
      SAMPLE_HAP1_chr01
    """
    h = header.split()[0]
    m = re.match(r"^(.+?)[#_]([12]|hap[12]|HAP[12])[#_](chr0?\d{1,2})$", h, re.I)
    if m:
        sample, hap, chrom = m.group(1), m.group(2), m.group(3).lower()
        hap_n = "1" if hap[-1] == "1" else "2"
        chrom = f"chr{int(chrom.replace('chr', '')):02d}"
        return f"{sample}#{hap_n}#{chrom}"
    m = re.match(r"^(.+?)[._](chr0?\d{1,2})$", h, re.I)
    if m:
        sample, chrom = m.group(1), m.group(2).lower()
        chrom = f"chr{int(chrom.replace('chr', '')):02d}"
        return f"{sample}#{default_hap}#{chrom}"
    return None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("-i", "--input", type=Path, required=True)
    ap.add_argument("-o", "--output", type=Path, required=True)
    ap.add_argument("--map", type=Path, help="TSV old\\tnew PanSN names")
    ap.add_argument("--sample", help="Default sample name when header is only chrNN")
    ap.add_argument("--hap", default="1", help="Default haplotype digit when missing")
    args = ap.parse_args()

    rename = load_map(args.map)
    n_ok = n_fail = 0
    with args.input.open() as inf, args.output.open("w") as outf:
        for line in inf:
            if not line.startswith(">"):
                outf.write(line)
                continue
            old = line[1:].strip().split()[0]
            if old in rename:
                new = rename[old]
            elif args.sample and re.match(r"^chr0?\d{1,2}$", old, re.I):
                chrom = f"chr{int(old.lower().replace('chr', '')):02d}"
                new = f"{args.sample}#{args.hap}#{chrom}"
            else:
                new = guess_pansn(old, args.hap)
            if not new:
                print(f"[WARN] cannot map: {old}", file=sys.stderr)
                n_fail += 1
                outf.write(line)
                continue
            outf.write(f">{new}\n")
            n_ok += 1
            print(f"{old} -> {new}")
    print(f"done: {n_ok} renamed, {n_fail} left as-is", file=sys.stderr)
    return 0 if n_fail == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
