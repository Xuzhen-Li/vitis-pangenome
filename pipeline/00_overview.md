# Vitis pangenome graph — working order

Peers: cannabis can-pan · potato Haplotype-diversity · **North American *Vitis*** ·
Shuhua VCF post · *Oryza* SyRI pan-SV. Details: [docs/ATTRIBUTION.md](../docs/ATTRIBUTION.md).

## Graph path

1. PanSN rename — `01_rename_pansn.py`
2. Purge + per-chr split — `02_purge_split.sh`
3. Mash divergence — `03_mash_divergence.sh`
4. PGGB per chromosome — `04_pggb_per_chr.sh` (default `-p 85 -s 10k` like NA *Vitis*)
5. Raw VCF — `05_variants.sh`
6. Growth / PAV notes — `06_panacus_pav.sh`

## Downstream (extra blueprints)

7. LV=0 + class — `07_vcf_classify.sh` (NA *Vitis*)
8. vg genotype sketch — `08_vg_genotype_sketch.sh` (NA *Vitis*)
9. VCF postprocess — `09_vcf_postprocess.sh` (Shuhua-Group)
10. SyRI pan-SV merge — `10_syri_pan_sv_merge.py` (*Oryza*; alignment check)
11. Orchestration / tomato pointers — `11_pointers.md`
