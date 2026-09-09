# Vitis pangenome graph — working order

Adapted from cannabis **can-pan** (COMInterop/lighthouse) and potato **Haplotype-diversity** graph notes.
Run chromosome-scale haplotypes only; purge scraps first.

1. **PanSN rename** — `01_rename_pansn.py` → `SAMPLE#HAP#chrNN`
2. **Purge + concat + split** — `02_purge_split.sh` → one FASTA per chromosome across haplotypes
3. **Divergence screen** — `03_mash_divergence.sh` (potato pattern) → tune `-p` / `-s`
4. **Build** — `04_pggb_per_chr.sh` → per-chr GFA / ODGI
5. **Variants** — `05_variants.sh` → VCF; SNP vs indel vs SV bins
6. **Growth / PAV** — `06_panacus_pav.sh` → ordered-histgrowth + notes for odgi pav

Optional later: Minigraph-Cactus for a reference-anchored view; keep PGGB when highly diverged regions matter (potato / cannabis papers).

See [docs/ATTRIBUTION.md](../docs/ATTRIBUTION.md).
