#!/usr/bin/env bash
# Growth curves (cannabis can-pan panacus) + pointer for odgi PAV (potato).
set -euo pipefail

: "${WORK_DIR:?}"
: "${THREADS:?}"
GFA="${GFA:?merged or per-chr .gfa}"
BASE="${BASE:-vitis_pan}"
OUT="$WORK_DIR/panacus"
mkdir -p "$OUT"

export RUST_LOG=info
panacus ordered-histgrowth \
  -c bp --groupby-haplotype \
  -l 1,1,1 -q 0.01,0.06,0.9 \
  -o table -t "$THREADS" \
  "$GFA" > "$OUT/${BASE}-ordered.tsv"

if command -v panacus-visualize >/dev/null; then
  panacus-visualize -e -f pdf "$OUT/${BASE}-ordered.tsv" > "$OUT/${BASE}.pdf"
fi

cat <<'NOTE'
# Optional PAV (potato odgi pav pattern), after ODGI index exists:
# odgi pav -t $THREADS -i graph.og -b ref.chrNN.100kb.bed > pavs.tsv
#
# Non-reference ranges:
# odgi paths -i graph.og -t $THREADS --non-reference-ranges ref.chrNN.list > nonref.bed
NOTE
echo "[OK] $OUT/${BASE}-ordered.tsv"
