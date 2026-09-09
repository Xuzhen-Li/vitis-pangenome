#!/usr/bin/env bash
# Purge short scaffolds, concat haplotypes, split one FASTA per chromosome.
# Pattern from cannabis can-pan (seqkit purge + split-per-chr); Vitis default 19 chrs.
set -euo pipefail

: "${HAP_FASTA_DIR:?set HAP_FASTA_DIR}"
: "${WORK_DIR:?set WORK_DIR}"
MIN_LEN="${MIN_LEN:-10000000}"
CHROMS="${CHROMS:-chr01 chr02 chr03 chr04 chr05 chr06 chr07 chr08 chr09 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19}"

PURGED="$WORK_DIR/purged"
SPLIT="$WORK_DIR/by_chr"
mkdir -p "$PURGED" "$SPLIT"

for fa in "$HAP_FASTA_DIR"/*.{fa,fasta,fa.gz,fasta.gz}; do
  [[ -e "$fa" ]] || continue
  base=$(basename "$fa")
  base=${base%.gz}
  base=${base%.fasta}
  base=${base%.fa}
  out="$PURGED/${base}.fa"
  if [[ "$fa" == *.gz ]]; then
    seqkit seq -m "$MIN_LEN" "$fa" > "$out"
  else
    seqkit seq -m "$MIN_LEN" "$fa" > "$out"
  fi
done

ALL="$WORK_DIR/all_haps.fa"
cat "$PURGED"/*.fa > "$ALL"
samtools faidx "$ALL"

# Split by PanSN trailing #chrNN
python3 - "$ALL" "$SPLIT" $CHROMS <<'PY'
import sys
from pathlib import Path
inp, outdir = Path(sys.argv[1]), Path(sys.argv[2])
wanted = set(sys.argv[3:])
outdir.mkdir(parents=True, exist_ok=True)
handles = {c: open(outdir / f"{c}.fa", "w") for c in wanted}
cur = None
with inp.open() as f:
    for line in f:
        if line.startswith(">"):
            chrom = line.strip()[1:].split("#")[-1]
            cur = handles.get(chrom)
        if cur:
            cur.write(line)
for h in handles.values():
    h.close()
print(f"wrote {len(wanted)} chromosome FASTAs under {outdir}")
PY

for c in $CHROMS; do
  samtools faidx "$SPLIT/$c.fa"
done
echo "[OK] purged >= ${MIN_LEN} bp; split under $SPLIT"
