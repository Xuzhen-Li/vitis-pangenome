# Vitis pangenome — working order

Full credit: [docs/ATTRIBUTION.md](../docs/ATTRIBUTION.md) · dual-graph: [docs/DUAL_GRAPH.md](../docs/DUAL_GRAPH.md).

## A. PGGB discovery path

1. `01_rename_pansn.py` → 2. `02_purge_split.sh` → 3. `03_mash_divergence.sh`
4. `04_pggb_per_chr.sh` → 5. `05_variants.sh` → 6. `06_panacus_pav.sh`
7. `07_vcf_classify.sh` → 8. `08_vg_genotype_sketch.sh` (legacy map path)
9. `09_vcf_postprocess.sh` → 10. `10_syri_pan_sv_merge.py` (alignment check)

## B. Second graph + modern genotyping (wave 3)

12. `12_minigraph_cactus.sh` — MC / giraffe-ready
13. `13_minigraph_per_chr.sh` — light minigraph backbone
14. `14_giraffe_call.sh` — short-read discovery
15. `15_pangenie_genotype.sh` — panel genotyping
16. `16_graph_qc.sh` — odgi + panacus before calling

Pointers: `11_pointers.md`.
