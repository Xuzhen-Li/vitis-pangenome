# Methods catalog for *Vitis*

This is the reading entry for the 2026-11 methods survey. It does not change the default pipeline in [`pipeline/00_overview.md`](../pipeline/00_overview.md).

**252 entries**, kept in two existing files (not merged into one):

- Main catalog: 162 entries (`V001`–`V162`) in [`PANGENOME_CATALOG.md`](PANGENOME_CATALOG.md)
- Supplement 1: 90 entries (`VS001`–`VS090`) in [`PANGENOME_CATALOG_SUPPLEMENT_1.md`](PANGENOME_CATALOG_SUPPLEMENT_1.md)

A one-line index of every entry (name, type, section, and a jump to the row) is in [`CATALOG_INDEX_2026-11.md`](CATALOG_INDEX_2026-11.md).

**How to read the supplement.** It is already on [PR #1](https://github.com/Xuzhen-Li/vitis-pangenome/pull/1), but a genetics review failed it on a must-fix (①-1). Use it together with [`PANGENOME_CATALOG_SUPPLEMENT_1_ERRATUM.md`](PANGENOME_CATALOG_SUPPLEMENT_1_ERRATUM.md). Formal inclusion waits on a revision. The main catalog also has wording fixes in [`PANGENOME_CATALOG_ERRATUM.md`](PANGENOME_CATALOG_ERRATUM.md); those sentences have not been applied to the catalog files.

## Boundary

- TE library construction: [vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- Gene models (coordinates, GFF3, proteins): [gene-structure-annotation](https://github.com/Xuzhen-Li/gene-structure-annotation)
- GO / KEGG / readable names / domains: [gene-function-annotation](https://github.com/Xuzhen-Li/gene-function-annotation)
- This repository: pangenome graphs, presence/absence variation, and genotyping of sites already in the graph

Giraffe + `vg call` and PanGenie genotype variant sites already in the graph; they do not add new alleles.

## By type

| Type | Main | Supplement | Combined |
|---|---:|---:|---:|
| tool | 121 | 47 | 168 |
| analysis | 26 | 35 | 61 |
| idea | 15 | 1 | 16 |
| resource | 0 | 6 | 6 |
| format | 0 | 1 | 1 |
| **Total** | **162** | **90** | **252** |

## By section

Counts add the two files. Links go to that section in each file (an em dash means the supplement has no section 13, and the main catalog has no section 15).

| # | Section | Main | Supplement | Combined |
|---|---|---:|---:|---:|
| 1 | [Upstream inputs: phased assemblies](PANGENOME_CATALOG.md#1-upstream-inputs-phased-assemblies) | 5 | [4](PANGENOME_CATALOG_SUPPLEMENT_1.md#1-upstream-inputs-phased-assemblies) | 9 |
| 2 | [Graph construction](PANGENOME_CATALOG.md#2-graph-construction) | 17 | [2](PANGENOME_CATALOG_SUPPLEMENT_1.md#2-graph-construction) | 19 |
| 3 | [Assembly and graph QC before genotyping](PANGENOME_CATALOG.md#3-assembly-and-graph-qc-before-genotyping) | 14 | [3](PANGENOME_CATALOG_SUPPLEMENT_1.md#3-assembly-and-graph-qc-before-genotyping) | 17 |
| 4 | [Variant discovery: sequence PAV, structural variants and TE insertions](PANGENOME_CATALOG.md#4-variant-discovery-sequence-pav-structural-variants-and-te-insertions) | 21 | [5](PANGENOME_CATALOG_SUPPLEMENT_1.md#4a-variant-discovery-a-sequence-and-window-pav-growth-curves) (4a+4b) | 26 |
| 5 | [Cohort genotyping and read-to-graph mapping](PANGENOME_CATALOG.md#5-cohort-genotyping-and-read-to-graph-mapping) | 17 | [7](PANGENOME_CATALOG_SUPPLEMENT_1.md#5-cohort-genotyping-and-read-to-graph-mapping-known-sites) | 24 |
| 6 | [Synteny, alignment and comparative maps](PANGENOME_CATALOG.md#6-synteny-alignment-and-comparative-maps) | 8 | [3](PANGENOME_CATALOG_SUPPLEMENT_1.md#6-synteny-alignment-and-comparative-maps) | 11 |
| 7 | [Graph-aware gene presence and family copy-number](PANGENOME_CATALOG.md#7-graph-aware-gene-presence-and-family-copy-number) | 13 | [4](PANGENOME_CATALOG_SUPPLEMENT_1.md#7-graph-aware-gene-presence-and-family-copy-number) | 17 |
| 8 | [Graph analysis, indexing and formats](PANGENOME_CATALOG.md#8-graph-analysis-indexing-and-formats) | 11 | [5](PANGENOME_CATALOG_SUPPLEMENT_1.md#8-graph-analysis-indexing-and-formats) | 16 |
| 9 | [Visualization](PANGENOME_CATALOG.md#9-visualization) | 12 | [8](PANGENOME_CATALOG_SUPPLEMENT_1.md#9-visualization) | 20 |
| 10 | [Expression, QTL and pangenome-GWAS](PANGENOME_CATALOG.md#10-expression-qtl-and-pangenome-gwas) | 12 | [14](PANGENOME_CATALOG_SUPPLEMENT_1.md#10a-expression-and-epigenome-layers-on-the-pangenome) (10a+10b) | 26 |
| 11 | [Evolution, ancestry and introgression](PANGENOME_CATALOG.md#11-evolution-ancestry-and-introgression) | 7 | [5](PANGENOME_CATALOG_SUPPLEMENT_1.md#11-evolution-ancestry-and-introgression) | 12 |
| 12 | [Vitis pangenome studies and public resources](PANGENOME_CATALOG.md#12-vitis-pangenome-studies-and-public-resources) | 9 | [10](PANGENOME_CATALOG_SUPPLEMENT_1.md#12-vitis-pangenome-studies-and-public-resources) | 19 |
| 13 | [Workflows and pipelines](PANGENOME_CATALOG.md#13-workflows-and-pipelines) | 6 | — | 6 |
| 14 | [Ideas still untested on Vitis](PANGENOME_CATALOG.md#14-ideas-still-untested-on-vitis) | 10 | [3](PANGENOME_CATALOG_SUPPLEMENT_1.md#14-ideas-still-untested-on-vitis) | 13 |
| 15 | Peer plant pangenome studies and reviews | — | [17](PANGENOME_CATALOG_SUPPLEMENT_1.md#15-peer-plant-pangenome-studies-and-reviews-new-section-in-this-supplement) | 17 |
| | **Total** | **162** | **90** | **252** |

## Not yet verified

These rows are still marked 待确认 in the catalog files. Preprints are labelled in the row itself and are not listed here unless they also have an unresolved check.

- [V005 NOHIC](PANGENOME_CATALOG.md#L44) — code URL not checked (preprint)
- [V078 msyd](PANGENOME_CATALOG.md#L169) — publication not checked
- [V153 COSIGT on ancient grape seeds](PANGENOME_CATALOG.md#L316) — not tried on *Vitis*
- [V162 Personalized-graph scaffolding](PANGENOME_CATALOG.md#L325)
- [VS032 pantree](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs032) — journal DOI not checked (preprint DOI is given)
- [VS072 Evo 2](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs072) — paper DOI not checked; not tested on *Vitis*

## Errata (wording not yet applied)

- Main catalog: [`PANGENOME_CATALOG_ERRATUM.md`](PANGENOME_CATALOG_ERRATUM.md) — must-fix ①-3 on V093 (NLR-Annotator is a structure-layer locus finder; this catalog only borrows the locus list for copy-number), plus suggested wording for V045, V074, V055 and V092
- Supplement 1: [`PANGENOME_CATALOG_SUPPLEMENT_1_ERRATUM.md`](PANGENOME_CATALOG_SUPPLEMENT_1_ERRATUM.md) — must-fix ①-1 (Helixer, Liftoff, LiftOn, TOGA and NLR-Annotator must not be treated as one class), plus suggested wording for several supplement rows
