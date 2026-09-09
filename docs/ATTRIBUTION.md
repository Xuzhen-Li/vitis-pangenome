# Attribution (字爹 / peer templates)

Scripts under `pipeline/` are **rewritten for this *Vitis* lab grain**.
No third-party genotypes ship here.

## Graph build + plant defaults

| Peer | Code / paper | Reused idea |
|------|----------------|-------------|
| Cannabis sativa | [COMInterop/lighthouse](https://github.com/COMInterop/lighthouse) `pangenome/` · Pike et al. *Sci Data* | PanSN → per-chr → PGGB → panacus order; repeat-aware starting flags |
| Potato (phased) | [Chenglin20170390/Haplotype-diversity](https://github.com/Chenglin20170390/Haplotype-diversity) · Cheng et al. *Nature* 2025 | Mash screen; PGGB vs Minigraph-Cactus; `vg deconstruct` + `vcfbub` size bins; odgi PAV / non-ref |
| **North American *Vitis*** | [noecochetel/North_American_Vitis_Pangenome](https://github.com/noecochetel/North_American_Vitis_Pangenome) (MIT) · Cochetel et al. *Genome Biology* 2023 | Same genus: wfmash `-p 85 -s 10000`; LV=0 bubble extract; SNP/INDEL/INS/DEL/MNP class; vg reconstruct → map → pack → call; gene/core modeling sketch |

## Downstream VCF / SV companions

| Peer | Code | Reused idea |
|------|------|-------------|
| Human / CPC graph VCF | [Shuhua-Group/PanGenome_VCF_PostProcess](https://github.com/Shuhua-Group/PanGenome_VCF_PostProcess) | `vcfbub` cap → trim unseen ALTs → length-group multiallelics → split small vs SV (≥50 bp) |
| *Oryza* pan-genome | [LengFeng00/oryza-pangenome-pipeline](https://github.com/LengFeng00/oryza-pangenome-pipeline) | SyRI-based pan-SV merge (type + ±bp_slop + reciprocal overlap) as **alignment-based** check beside the graph |
| Tomato graph / T2T | [YaoZhou89/TGG](https://github.com/YaoZhou89/TGG), [ChunmeiShi02/TomatoT2Tsuperpangenome](https://github.com/ChunmeiShi02/TomatoT2Tsuperpangenome) | Multi-caller HiFi SV + SyRI/plotsr pairing notes (pointer only; heavy callers stay on your cluster) |

## Orchestration (optional)

- [nf-core/pangenome](https://github.com/nf-core/pangenome) — Nextflow wrapper around PGGB-family tools when you outgrow bash
- [WarrenLab/minigraph-cactus-nf](https://github.com/WarrenLab/minigraph-cactus-nf) — MC as second view for mapping-heavy cohorts

## Core tools

pggb · wfmash · odgi · panacus · vg · vcfbub · bcftools · seqkit · mash · SyRI (optional)

Do not commit unpublished assemblies or private sample matrices.
