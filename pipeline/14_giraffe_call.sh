#!/usr/bin/env bash
# Giraffe map → pack → call (short-read discovery on graph).
# Rewritten from andrew010417/pangenome_graph_pipeline 04+05.
# Prefer MC --giraffe GBZ when available; else autoindex from GFA or ref+VCF.
set -euo pipefail

: "${WORK_DIR:?}"
: "${SAMPLE:?}"
: "${R1:?}" ; : "${R2:?}"
THREADS="${THREADS:-16}"
OUT="${GIRAFFE_OUT:-$WORK_DIR/giraffe}"
PREFIX="${INDEX_PREFIX:-$OUT/vitis}"
mkdir -p "$OUT"

if [[ ! -f "${PREFIX}.giraffe.gbz" ]]; then
  if [[ -n "${GFA:-}" ]]; then
    vg autoindex --workflow giraffe -g "$GFA" -p "$PREFIX" -t "$THREADS"
  elif [[ -n "${FASTA_REF:-}" && -n "${PANEL_VCF:-}" ]]; then
    vg autoindex --workflow giraffe -r "$FASTA_REF" -v "$PANEL_VCF" -p "$PREFIX" -t "$THREADS"
  else
    echo "need existing ${PREFIX}.giraffe.gbz, or GFA=, or FASTA_REF=+PANEL_VCF="
    exit 1
  fi
fi

GAM="$OUT/${SAMPLE}.gam"
PACK="$OUT/${SAMPLE}.pack"
VCF="$OUT/${SAMPLE}.vcf"

vg giraffe -Z "${PREFIX}.giraffe.gbz" -m "${PREFIX}.min" -d "${PREFIX}.dist" \
  -f "$R1" -f "$R2" -t "$THREADS" > "$GAM"

# Note: some vg builds want -a for GAM into pack; confirm `vg pack --help`
vg pack -x "${PREFIX}.giraffe.gbz" -a "$GAM" -o "$PACK" -t "$THREADS"

vg call "${PREFIX}.giraffe.gbz" -k "$PACK" -s "$SAMPLE" --ploidy 2 -t "$THREADS" > "$VCF"
bgzip -f -@"$THREADS" "$VCF"
tabix -f -p vcf "${VCF}.gz" || true
echo "[OK] ${VCF}.gz"
