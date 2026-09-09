# vitis-pangenome

*Vitis* pangenome graphs, presence/absence variation, and mixed-variant / dosage methods.

## This is not

- Not the SNP capture panel — [grapeancestry/chip](https://github.com/Xuzhen-Li/grapeancestry/tree/main/chip)
- Not TE library curation — [vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- Not plastid-only work — [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid)
- Not synteny / collinearity — [vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny)

No unpublished genotypes, private coordinates, or sample-level matrices in this repo.

## Pipeline (filled from peer crop projects)

Working scripts live under [`pipeline/`](pipeline/). They are **rewritten for grape** from:

- Cannabis reference-free PGGB playbook — [COMInterop/lighthouse](https://github.com/COMInterop/lighthouse) `pangenome/` (Pike et al., *Scientific Data*)
- Potato phased pangenome graph notes — [Chenglin20170390/Haplotype-diversity](https://github.com/Chenglin20170390/Haplotype-diversity) (Cheng et al., *Nature* 2025)

Full credit table: [`docs/ATTRIBUTION.md`](docs/ATTRIBUTION.md).

| Step | Script |
|------|--------|
| Overview | [`pipeline/00_overview.md`](pipeline/00_overview.md) |
| PanSN rename | [`pipeline/01_rename_pansn.py`](pipeline/01_rename_pansn.py) |
| Purge + per-chr split | [`pipeline/02_purge_split.sh`](pipeline/02_purge_split.sh) |
| Mash divergence | [`pipeline/03_mash_divergence.sh`](pipeline/03_mash_divergence.sh) |
| PGGB per chromosome | [`pipeline/04_pggb_per_chr.sh`](pipeline/04_pggb_per_chr.sh) |
| VCF / SV size bins | [`pipeline/05_variants.sh`](pipeline/05_variants.sh) |
| panacus + PAV notes | [`pipeline/06_panacus_pav.sh`](pipeline/06_panacus_pav.sh) |

Config skeleton: [`config/example.env`](config/example.env).

### Quick start (on your cluster)

```bash
cp config/example.env config/local.env   # edit paths; keep local.env private
set -a && source config/local.env && set +a
python3 pipeline/01_rename_pansn.py -i hap.fa -o hap.pansn.fa --sample MyCultivar --hap 1
bash pipeline/02_purge_split.sh
bash pipeline/03_mash_divergence.sh      # then adjust PGGB_P / PGGB_S
bash pipeline/04_pggb_per_chr.sh
bash pipeline/05_variants.sh
GFA=work/pggb/chr01/*.final.gfa bash pipeline/06_panacus_pav.sh
```

Tools: `pggb`, `samtools`, `seqkit`, `mash`, `vg`, `bcftools`, `panacus`; optional `vcfbub`, Minigraph-Cactus.

## Why these peers

Grape shares plant-pangenome pain with potato and cannabis: high repeat content, haplotype-resolved assemblies, and structural diversity where Minigraph-Cactus can drop bases in HDRs. Prefer **PGGB per chromosome** for discovery; keep a reference-anchored graph as a second view when needed.

## See also

- [vitis-te](https://github.com/Xuzhen-Li/vitis-te) · [vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny) · [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid) · [grapeancestry](https://github.com/Xuzhen-Li/grapeancestry)

**Author:** Xuzhen Li · [ORCID](https://orcid.org/0000-0003-3670-6657)
