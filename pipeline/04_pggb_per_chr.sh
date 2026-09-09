#!/usr/bin/env bash
# Per-chromosome PGGB for Vitis.
# Starting flags blend cannabis can-pan (stricter plant defaults) and potato Nature notes.
# Always re-tune with mash / a pilot chromosome before a full panel.
set -euo pipefail

: "${WORK_DIR:?}"
: "${THREADS:?}"
SPLIT="${SPLIT:-$WORK_DIR/by_chr}"
OUT="${PGGB_OUT:-$WORK_DIR/pggb}"
PGGB_P="${PGGB_P:-92}"
PGGB_S="${PGGB_S:-20000}"
PGGB_K="${PGGB_K:-49}"
PGGB_N="${PGGB_N:-}"
REF_PATH="${REF_PATH:-}"   # e.g. PN40024#1 for -V

mkdir -p "$OUT"

for fa in "$SPLIT"/chr*.fa; do
  [[ -e "$fa" ]] || continue
  [[ -f "${fa}.fai" ]] || samtools faidx "$fa"
  base=$(basename "$fa" .fa)
  outdir="$OUT/$base"
  if [[ -d "$outdir" ]]; then
    echo "[SKIP] $base exists"
    continue
  fi
  echo "[RUN] PGGB $base"
  args=(
    -i "$fa"
    -o "$outdir"
    -p "$PGGB_P"
    -s "$PGGB_S"
    -k "$PGGB_K"
    -t "$THREADS"
    -T "$THREADS"
    -m -S
  )
  [[ -n "$PGGB_N" ]] && args+=( -n "$PGGB_N" )
  [[ -n "$REF_PATH" ]] && args+=( -V "${REF_PATH}:1000" )
  pggb "${args[@]}"
done
echo "[OK] graphs under $OUT"
