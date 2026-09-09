#!/usr/bin/env bash
# Sketch: reconstruct a lighter vg graph from ref+VCF and genotype WGS.
# Steps condensed from North American Vitis 0.09_variant_genotyping.md.
# Edit SAMPLE_LIST / FASTQ layout; do not commit private reads.
set -euo pipefail

: "${WORK_DIR:?}"
: "${FASTA_REF:?linear reference FASTA for vg construct}"
: "${REF_VCF:?bgzip+tabix VCF relative to that ref}"
THREADS="${THREADS:-24}"
GRAPH="${GRAPH_NAME:-vitis_reconstruct}"
VG_DIR="${VG_DIR:-$WORK_DIR/vg}"
MAP_DIR="${MAP_DIR:-$WORK_DIR/map}"
mkdir -p "$VG_DIR" "$MAP_DIR" "$WORK_DIR/logs"

echo "[1/6] vg construct"
vg construct -r "$FASTA_REF" -v "$REF_VCF" -t "$THREADS" -m 32 \
  > "$VG_DIR/${GRAPH}.vg"

echo "[2/6] xg + snarls"
vg index -x "$VG_DIR/${GRAPH}.xg" --temp-dir "$WORK_DIR/tmp" -t "$THREADS" \
  "$VG_DIR/${GRAPH}.vg"
vg snarls -t "$THREADS" "$VG_DIR/${GRAPH}.xg" > "$VG_DIR/${GRAPH}.snarls"

echo "[3/6] prune + gcsa"
vg prune -r -p -t "$THREADS" "$VG_DIR/${GRAPH}.vg" > "$VG_DIR/${GRAPH}.pruned.vg"
vg index -g "$VG_DIR/${GRAPH}.gcsa" --temp-dir "$WORK_DIR/tmp" -t "$THREADS" \
  "$VG_DIR/${GRAPH}.pruned.vg"

if [[ -z "${SAMPLE_LIST:-}" ]]; then
  echo "[STOP] set SAMPLE_LIST=path/to/samples.txt (one id per line; expects FASTQ_DIR/\${id}_1.fastq.gz)"
  exit 0
fi
: "${FASTQ_DIR:?}"

echo "[4/6] map"
while read -r sample; do
  [[ -z "$sample" || "$sample" =~ ^# ]] && continue
  vg map -x "$VG_DIR/${GRAPH}.xg" -g "$VG_DIR/${GRAPH}.gcsa" -t "$THREADS" \
    -f "$FASTQ_DIR/${sample}_1.fastq.gz" -f "$FASTQ_DIR/${sample}_2.fastq.gz" \
    > "$MAP_DIR/${sample}.gam"
done < "$SAMPLE_LIST"

echo "[5/6] pack"
while read -r sample; do
  [[ -z "$sample" || "$sample" =~ ^# ]] && continue
  vg pack -x "$VG_DIR/${GRAPH}.xg" -g "$MAP_DIR/${sample}.gam" -Q 5 \
    -o "$MAP_DIR/${sample}.pack" -t "$THREADS"
done < "$SAMPLE_LIST"

echo "[6/6] call"
while read -r sample; do
  [[ -z "$sample" || "$sample" =~ ^# ]] && continue
  vg call "$VG_DIR/${GRAPH}.xg" -k "$MAP_DIR/${sample}.pack" \
    -r "$VG_DIR/${GRAPH}.snarls" -t "$THREADS" \
    > "$MAP_DIR/${sample}.call.vcf"
done < "$SAMPLE_LIST"
echo "[OK] calls under $MAP_DIR"
