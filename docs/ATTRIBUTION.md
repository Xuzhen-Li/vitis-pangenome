# Attribution (字爹 / peer templates)

This pipeline folder is **adapted** for *Vitis* from public crop-pangenome integration scripts.
It is not a fork and does not ship third-party genotype data.

## Primary templates

| Crop | Paper / data | Code | What we reused |
|------|----------------|------|----------------|
| Cannabis sativa | Pike et al., *Scientific Data* (reference-free 66-haplotype PGGB graph) | [COMInterop/lighthouse](https://github.com/COMInterop/lighthouse) `pangenome/` (can-pan) | Step order: PanSN rename → per-chromosome split → PGGB → panacus; plant-repeat-aware PGGB flags as a **starting point** |
| Potato (phased) | Cheng et al., *Nature* (2025) hybrid-potato haplotype design | [Chenglin20170390/Haplotype-diversity](https://github.com/Chenglin20170390/Haplotype-diversity) `scripts/Graph construction by PGGB and MC/` | Mash divergence screen, PGGB vs Minigraph-Cactus notes, `vg deconstruct` + `vcfbub` size bins, odgi PAV / non-ref path ideas |

## Core tools (cite in papers)

- [pggb](https://github.com/pangenome/pggb) — graph build
- [odgi](https://github.com/pangenome/odgi), [panacus](https://github.com/marschall-lab/panacus) — stats / growth curves
- [vg](https://github.com/vgteam/vg), [vcfbub](https://github.com/pangenome/vcfbub) — deconstruct / SV size filters
- Optional: [Minigraph-Cactus](https://github.com/ComparativeGenomicsToolkit/cactus) — linear-reference-aware graphs (potato authors noted base loss in divergent plant regions; prefer PGGB when HDRs matter)

## License note

Upstream potato / cannabis script repos did not declare an SPDX license at the time of adaptation.
Scripts here are **rewritten** for *Vitis* (19 chromosomes, PN40024-style refs, clonal notes) under this repository’s terms.
Do not paste unpublished assemblies or private sample matrices into public commits.
