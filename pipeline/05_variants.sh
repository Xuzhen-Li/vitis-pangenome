#!/usr/bin/env bash
# Variant layers from per-chr GFA (potato Haplotype-diversity deconstruct + vcfbub bins).
set -euo pipefail

: "${WORK_DIR:?}"
: "${REF_PATH:?set REF_PATH e.g. PN40024#1}"
PGGB_OUT="${PGGB_OUT:-$WORK_DIR/pggb}"
VCF_OUT="${VCF_OUT:-$WORK_DIR/vcf}"
THREADS="${THREADS:-16}"
mkdir -p "$VCF_OUT"/{raw,snps,indels,sv_50_1Mb,sv_gt1Mb}

shopt -s nullglob
for gfa in "$PGGB_OUT"/chr*/*.final.gfa "$PGGB_OUT"/chr*/*smooth*.gfa; do
  [[ -e "$gfa" ]] || continue
  base=$(basename "$(dirname "$gfa")")
  raw="$VCF_OUT/raw/${base}.vcf.gz"
  if [[ ! -f "$raw" ]]; then
    vg deconstruct -P "$REF_PATH" -H '#' -e -a -t "$THREADS" "$gfa" \
      | bgzip -c > "$raw"
    tabix -p vcf "$raw" || true
  fi
  bcftools view -v snps -O z -o "$VCF_OUT/snps/${base}.vcf.gz" "$raw"
  # indel <50bp ; SV 50bp–1Mb ; large >1Mb  (potato bins)
  if command -v vcfbub >/dev/null; then
    vcfbub -i "$raw" -A 1 -a 50 -l 0 | bgzip -c > "$VCF_OUT/indels/${base}.vcf.gz"
    vcfbub -i "$raw" -A 50 -a 1000000 -l 0 | bgzip -c > "$VCF_OUT/sv_50_1Mb/${base}.vcf.gz"
    vcfbub -i "$raw" -A 1000000 -a 100000000 -l 0 | bgzip -c > "$VCF_OUT/sv_gt1Mb/${base}.vcf.gz"
  fi
done
echo "[OK] VCFs under $VCF_OUT (install vcfbub for size bins)"
