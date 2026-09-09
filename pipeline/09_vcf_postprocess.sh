#!/usr/bin/env bash
# Post-process a graph-deconstructed VCF (Shuhua-Group/PanGenome_VCF_PostProcess idea).
# Steps: vcfbub length cap → drop unseen ALTs → split multiallelics → small vs SV by |Δlen|.
set -euo pipefail

: "${PAN_VCF:?input deconstructed VCF (.vcf.gz)}"
: "${WORK_DIR:?}"
OUT_PREFIX="${OUT_PREFIX:-vitis_pan}"
VCFBUB_MAX="${VCFBUB_MAX:-10000000}"
SV_LEN_MIN="${SV_LEN_MIN:-50}"
THREADS="${THREADS:-8}"
OUT="$WORK_DIR/vcf/post"
mkdir -p "$OUT"

step1="$OUT/${OUT_PREFIX}.bub.vcf.gz"
if command -v vcfbub >/dev/null; then
  vcfbub -l 0 -r "$VCFBUB_MAX" -i "$PAN_VCF" | bgzip -c > "$step1"
else
  echo "[WARN] vcfbub missing; copying input"
  cp -f "$PAN_VCF" "$step1"
fi
tabix -f -p vcf "$step1" || true

step2="$OUT/${OUT_PREFIX}.trim.vcf.gz"
bcftools view -a -Oz -o "$step2" --threads "$THREADS" "$step1"
tabix -f -p vcf "$step2"

step3="$OUT/${OUT_PREFIX}.norm.vcf.gz"
bcftools norm -m -any -Oz -o "$step3" --threads "$THREADS" "$step2"
tabix -f -p vcf "$step3"

# length classify (biallelic assumption after norm)
small="$OUT/${OUT_PREFIX}.small_variants.vcf.gz"
sv="$OUT/${OUT_PREFIX}.SVs.vcf.gz"
bcftools view -e "abs(strlen(ALT)-strlen(REF))>=${SV_LEN_MIN}" -Oz -o "$small" "$step3"
bcftools view -i "abs(strlen(ALT)-strlen(REF))>=${SV_LEN_MIN}" -Oz -o "$sv" "$step3"
tabix -f -p vcf "$small" "$sv"
echo "[OK] $small and $sv"
echo "Note: full allele-length grouping of complex multiallelics is in upstream module.py; this is the bash skeleton."
