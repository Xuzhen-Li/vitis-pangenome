# vitis-pangenome

*Vitis* pangenome graphs, presence/absence variation, and mixed-variant / dosage methods.

## This is not

- Not the SNP capture panel — [grapeancestry/chip](https://github.com/Xuzhen-Li/grapeancestry/tree/main/chip)
- Not TE library curation — [vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- Not plastid-only work — [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid)
- Not synteny / collinearity — [vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny)

No unpublished genotypes, private coordinates, or sample-level matrices in this repo.

## Pipeline

Scripts in [`pipeline/`](pipeline/) are rewritten from public crop (and one same-genus) playbooks:

| Blueprint | Role here |
|-----------|-----------|
| [COMInterop/lighthouse](https://github.com/COMInterop/lighthouse) can-pan | Step order, plant PGGB |
| [Haplotype-diversity](https://github.com/Chenglin20170390/Haplotype-diversity) (potato) | Mash, SV size bins, odgi PAV |
| [North_American_Vitis_Pangenome](https://github.com/noecochetel/North_American_Vitis_Pangenome) | **Same genus** defaults (`-p 85 -s 10k`), LV=0 class, vg genotyping |
| [PanGenome_VCF_PostProcess](https://github.com/Shuhua-Group/PanGenome_VCF_PostProcess) | Graph-VCF cleanup |
| [oryza-pangenome-pipeline](https://github.com/LengFeng00/oryza-pangenome-pipeline) | SyRI pan-SV merge (alignment check) |

Credit table: [`docs/ATTRIBUTION.md`](docs/ATTRIBUTION.md) · NA *Vitis* knobs: [`docs/NA_VITIS_PARAMS.md`](docs/NA_VITIS_PARAMS.md).

| Step | Script |
|------|--------|
| Overview | [`pipeline/00_overview.md`](pipeline/00_overview.md) |
| PanSN rename | [`01_rename_pansn.py`](pipeline/01_rename_pansn.py) |
| Purge + split | [`02_purge_split.sh`](pipeline/02_purge_split.sh) |
| Mash | [`03_mash_divergence.sh`](pipeline/03_mash_divergence.sh) |
| PGGB | [`04_pggb_per_chr.sh`](pipeline/04_pggb_per_chr.sh) |
| Raw VCF | [`05_variants.sh`](pipeline/05_variants.sh) |
| panacus / PAV | [`06_panacus_pav.sh`](pipeline/06_panacus_pav.sh) |
| LV=0 class | [`07_vcf_classify.sh`](pipeline/07_vcf_classify.sh) |
| vg genotype | [`08_vg_genotype_sketch.sh`](pipeline/08_vg_genotype_sketch.sh) |
| VCF post | [`09_vcf_postprocess.sh`](pipeline/09_vcf_postprocess.sh) |
| SyRI pan-SV | [`10_syri_pan_sv_merge.py`](pipeline/10_syri_pan_sv_merge.py) |
| More pointers | [`11_pointers.md`](pipeline/11_pointers.md) |

Config: [`config/example.env`](config/example.env).

```bash
cp config/example.env config/local.env   # edit; keep private
set -a && source config/local.env && set +a
# … run 01→06 for the graph, then 07–10 as needed
```

## See also

[vitis-te](https://github.com/Xuzhen-Li/vitis-te) · [vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny) · [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid) · [grapeancestry](https://github.com/Xuzhen-Li/grapeancestry)

**Author:** Xuzhen Li · [ORCID](https://orcid.org/0000-0003-3670-6657)
