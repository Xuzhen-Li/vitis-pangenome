#!/usr/bin/env bash
# Per-chromosome mash triangle to set PGGB -p (potato Haplotype-diversity pattern).
set -euo pipefail

: "${WORK_DIR:?}"
SPLIT="${SPLIT:-$WORK_DIR/by_chr}"
OUT="$WORK_DIR/mash"
mkdir -p "$OUT"

for fa in "$SPLIT"/chr*.fa; do
  [[ -e "$fa" ]] || continue
  base=$(basename "$fa" .fa)
  mash triangle "$fa" > "$OUT/${base}.mdist"
done

# Rough top distances across chromosomes (tune PGGB -p from ~1 - max_dist)
awk 'NR>1 {for(i=2;i<=NF;i++) if($i+0==$i) print $i}' "$OUT"/*.mdist \
  | sort -gr | head -n 20 | tee "$OUT/top_distances.txt"

echo "[OK] inspect $OUT/top_distances.txt then set PGGB_P in config/local.env"
