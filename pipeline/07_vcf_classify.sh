#!/usr/bin/env bash
# Classify graph VCFs: LV=0 → norm → SNP/INS/DEL/MNP/other.
# Rewritten from North American Vitis playbook 0.07_infer_variants.md
# (noecochetel/North_American_Vitis_Pangenome, MIT).
set -euo pipefail

: "${WORK_DIR:?}"
VCF_IN="${VCF_IN:-$WORK_DIR/vcf/raw}"
OUT="${VCF_CLASS:-$WORK_DIR/vcf/class}"
THREADS="${THREADS:-8}"
mkdir -p "$OUT"/{lv0,norm,snp,ins,del,mnp,other,stats}

shopt -s nullglob
for vcf in "$VCF_IN"/*.vcf "$VCF_IN"/*.vcf.gz; do
  [[ -e "$vcf" ]] || continue
  base=$(basename "$vcf" .gz)
  base=${base%.vcf}
  lv0="$OUT/lv0/${base}.lv0.vcf"
  if [[ ! -f "$lv0" ]]; then
    if [[ "$vcf" == *.gz ]]; then
      { bcftools view -h "$vcf"; bcftools view -H "$vcf" | grep 'LV=0' || true; } \
        | sed 's:\t$:\t.:g' | perl -pe 's/\t(?=\t)/\t./g' > "$lv0"
    else
      { grep '^#' "$vcf"; grep 'LV=0' "$vcf" || true; } \
        | sed 's:\t$:\t.:g' | perl -pe 's/\t(?=\t)/\t./g' > "$lv0"
    fi
  fi
  norm="$OUT/norm/${base}.norm.vcf"
  if [[ ! -f "$norm" ]]; then
    if [[ -n "${FASTA_REF:-}" ]]; then
      bcftools norm -m-any --check-ref w --fasta-ref "$FASTA_REF" \
        --threads "$THREADS" -Ov -o "$norm" "$lv0"
    else
      bcftools norm -m-any --threads "$THREADS" -Ov -o "$norm" "$lv0"
    fi
  fi
  bcftools view -v snps  -Ov -o "$OUT/snp/${base}.snp.vcf"   "$norm"
  bcftools view -v indels -Ov -o "$OUT/tmp_indel.vcf" "$norm"
  bcftools filter -i 'strlen(REF)<strlen(ALT)' -Ov -o "$OUT/ins/${base}.ins.vcf" "$OUT/tmp_indel.vcf"
  bcftools filter -i 'strlen(REF)>strlen(ALT)' -Ov -o "$OUT/del/${base}.del.vcf" "$OUT/tmp_indel.vcf"
  rm -f "$OUT/tmp_indel.vcf"
  bcftools view -v mnps -Ov -o "$OUT/mnp/${base}.mnp.vcf" "$norm" || true
  # residual
  grep -vwFf <(grep -v '^#' "$OUT/snp/${base}.snp.vcf" "$OUT/ins/${base}.ins.vcf" \
    "$OUT/del/${base}.del.vcf" "$OUT/mnp/${base}.mnp.vcf" 2>/dev/null || true) \
    "$norm" > "$OUT/other/${base}.other.vcf" || true
done
echo "[OK] classified under $OUT (set FASTA_REF for --check-ref)"
