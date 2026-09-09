#!/usr/bin/env bash
# Pre-genotype QC: odgi stats + panacus histgrowth.
# From andrew010417/pangenome_graph_pipeline 08_graph_qc.sh;
# barley mb47 also uses odgi heaps for saturation by group.
set -euo pipefail

: "${WORK_DIR:?}"
: "${GFA:?}"
THREADS="${THREADS:-8}"
OUT="${QC_OUT:-$WORK_DIR/qc}"
mkdir -p "$OUT"
OG="$OUT/graph.og"

odgi build -g "$GFA" -o "$OG" -t "$THREADS"
odgi stats -i "$OG" -S -t "$THREADS" > "$OUT/odgi_stats_summary.yaml"
cat "$OUT/odgi_stats_summary.yaml"

panacus histgrowth -t "$THREADS" "$GFA" > "$OUT/panacus_growth.tsv"
echo "[OK] $OUT/panacus_growth.tsv — flattening growth ≈ enough diversity; still climbing → add haplotypes"
echo "Optional (barley pattern): odgi heaps -i $OG … then heaps_fit.R from odgi"
