#!/usr/bin/env bash
# Per-chromosome minigraph (-cxggs) then optional map-to-graph.
# Pattern from Chenghong412/wheat_pangenome, Jia-nianhua/Maize-Graph-Pangenome,
# and mb47/minigraph-barley incremental builds.
# Lighter than full MC; good backbone SV call before cactus join.
set -euo pipefail

: "${WORK_DIR:?}"
: "${REF_FA:?reference chromosome FASTA (PanSN header preferred)}"
: "${HAP_LIST:?text file: one haplotype FASTA path per line (same chrom extractions)}"
THREADS="${THREADS:-16}"
CHROM="${CHROM:?e.g. chr01}"
OUT="${MG_OUT:-$WORK_DIR/minigraph}"
mkdir -p "$OUT/$CHROM"

gfa="$OUT/$CHROM/${CHROM}.minigraph.gfa"
# Build: ref first, then each haplotype in list order
mapfile -t haps < "$HAP_LIST"
minigraph -cxggs -t "$THREADS" "$REF_FA" "${haps[@]}" > "$gfa"
echo "[OK] $gfa"

# Optional: map assemblies back for GAF (wheat assembly.map2graph.sh pattern)
if [[ "${MAP_ASSEMBLIES:-0}" == "1" ]]; then
  for fa in "$REF_FA" "${haps[@]}"; do
    base=$(basename "$fa")
    base=${base%.gz}; base=${base%.fasta}; base=${base%.fa}
    minigraph "$gfa" "$fa" > "$OUT/$CHROM/${base}.map2graph.gaf"
  done
fi
