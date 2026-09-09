#!/usr/bin/env bash
# Genotype a known panel with PanGenie (k-mer HMM) — complement to giraffe call.
# From andrew010417/pangenome_graph_pipeline 06+07 (panel prep + genotype).
set -euo pipefail

: "${WORK_DIR:?}"
: "${SAMPLE:?}"
: "${READS:?fastq.gz (interleaved or single; PanGenie -i)}"
: "${FASTA_REF:?}"
: "${PANEL_VCF:?graph-derived VCF}"
THREADS="${THREADS:-16}"
OUT="${PANGENIE_OUT:-$WORK_DIR/pangenie}"
mkdir -p "$OUT"

PANEL_BI="$OUT/panel.biallelic.vcf.gz"
bcftools norm -m -any -f "$FASTA_REF" -Oz -o "$PANEL_BI" "$PANEL_VCF"
bcftools sort -Oz -o "$PANEL_BI.tmp.gz" "$PANEL_BI" && mv "$PANEL_BI.tmp.gz" "$PANEL_BI"
tabix -f -p vcf "$PANEL_BI"
echo "[check] sample columns should be per-individual, not per-haplotype:"
bcftools query -l "$PANEL_BI" | head

PREFIX="$OUT/$SAMPLE"
PanGenie -i "$READS" -r "$FASTA_REF" -v "$PANEL_BI" -o "$PREFIX" \
  -s "$SAMPLE" -t "$THREADS" -j "$THREADS" \
  2>&1 | tee "$OUT/${SAMPLE}.pangenie.log"
echo "[OK] expect ${PREFIX}_genotyping.vcf — confirm PanGenie CLI for your version (v3+ may split index/genotype)"
