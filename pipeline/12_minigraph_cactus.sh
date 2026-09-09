#!/usr/bin/env bash
# Second-view graph: Minigraph-Cactus via cactus-pangenome.
# Rewritten from andrew010417/pangenome_graph_pipeline scripts/02a_*.sh
# (and maize Jia-nianhua cactus.sh / sugarcane MC practice).
# Use when you need giraffe-ready GBZ + VCF for large WGS panels.
# Keep PGGB (04) as discovery graph — plant HDR bases can drop in MC.
set -euo pipefail

: "${WORK_DIR:?}"
: "${MC_SEQFILE:?TSV: sample_id<TAB>/path/to.fa  (reference row must match MC_REF)}"
: "${MC_REF:?reference sample id matching a row in MC_SEQFILE}"
THREADS="${THREADS:-32}"
OUTNAME="${OUTNAME:-vitis_mc}"
OUT="${MC_OUT:-$WORK_DIR/mc}"
JOBSTORE="${MC_JOBSTORE:-$WORK_DIR/mc_jobstore}"
mkdir -p "$OUT"

command -v cactus-pangenome >/dev/null || { echo "need cactus-pangenome"; exit 1; }
grep -q "^${MC_REF}"$'\t' "$MC_SEQFILE" || { echo "MC_REF not in seqfile"; exit 1; }

# Confirm flags with: cactus-pangenome --help  (names drift across Cactus versions)
cactus-pangenome \
  "$JOBSTORE" \
  "$MC_SEQFILE" \
  --outDir "$OUT" \
  --outName "$OUTNAME" \
  --reference "$MC_REF" \
  --vcf --gbz --gfa --giraffe \
  --maxCores "$THREADS" \
  2>&1 | tee "$OUT/cactus_pangenome.log"

echo "[OK] expect ${OUTNAME}.{vcf.gz,gbz,gfa.gz} under $OUT — verify names for your Cactus version"
echo "Resume failed runs with the same JOBSTORE + cactus --restart (see cactus docs)"
