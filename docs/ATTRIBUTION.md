# Attribution (字爹 / peer templates)

Scripts under `pipeline/` are **rewritten for this *Vitis* lab grain**.
No third-party genotypes ship here.

## Wave 1 — graph build defaults

| Peer | Code / paper | Reused idea |
|------|----------------|-------------|
| Cannabis sativa | [COMInterop/lighthouse](https://github.com/COMInterop/lighthouse) `pangenome/` | PanSN → per-chr → PGGB → panacus |
| Potato (phased) | [Chenglin20170390/Haplotype-diversity](https://github.com/Chenglin20170390/Haplotype-diversity) | Mash; PGGB vs MC; vcfbub bins; odgi PAV |
| North American *Vitis* | [noecochetel/North_American_Vitis_Pangenome](https://github.com/noecochetel/North_American_Vitis_Pangenome) (MIT) | `-p 85 -s 10k`; LV=0 class; vg genotyping |

## Wave 2 — VCF / alignment companions

| Peer | Code | Reused idea |
|------|------|-------------|
| Graph VCF post | [Shuhua-Group/PanGenome_VCF_PostProcess](https://github.com/Shuhua-Group/PanGenome_VCF_PostProcess) | vcfbub → trim ALTs → small vs SV |
| *Oryza* | [LengFeng00/oryza-pangenome-pipeline](https://github.com/LengFeng00/oryza-pangenome-pipeline) | SyRI pan-SV merge |
| Tomato | [YaoZhou89/TGG](https://github.com/YaoZhou89/TGG) | HiFi multi-caller pointer |

## Wave 3 — dual graph + genotyping

| Peer | Code | Reused idea |
|------|------|-------------|
| Dual PGGB/MC + giraffe/PanGenie | [andrew010417/pangenome_graph_pipeline](https://github.com/andrew010417/pangenome_graph_pipeline) | `cactus-pangenome` wrapper; giraffe pack/call; PanGenie panel; odgi+panacus QC |
| Wheat graph protocol | [Chenghong412/wheat_pangenome](https://github.com/Chenghong412/wheat_pangenome) | per-chr `minigraph -cxggs`; map assemblies → GAF |
| Maize graph protocol | [Jia-nianhua/Maize-Graph-Pangenome](https://github.com/Jia-nianhua/Maize-Graph-Pangenome) | minigraph / cactus construction layout |
| Barley minigraph | [mb47/minigraph-barley](https://github.com/mb47/minigraph-barley) | incremental per-chr build; odgi heaps saturation |
| Barley wild relative | [jia-wu-feng/Pan_Bulbosum](https://github.com/jia-wu-feng/Pan_Bulbosum) | haplotype-resolved graph folder contract |

## Orchestration (optional)

- [nf-core/pangenome](https://github.com/nf-core/pangenome)
- [WarrenLab/minigraph-cactus-nf](https://github.com/WarrenLab/minigraph-cactus-nf)

## Core tools

pggb · wfmash · minigraph · cactus · odgi · panacus · vg · PanGenie · vcfbub · bcftools · seqkit · mash · SyRI

Do not commit unpublished assemblies or private sample matrices.
