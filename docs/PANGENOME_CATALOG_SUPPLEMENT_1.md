# Pangenome methods catalog for *Vitis* — supplement 1 (v3)

Additional entries not present in `docs/PANGENOME_CATALOG.md` (PR #1, commit a16315c). Same columns and section numbers as that file; section 15 is new. IDs use the prefix `VS` so they cannot clash with `V001`–`V162`.

Snapshot: 2026-11-13 (Asia/Shanghai). DOIs and titles were checked against Crossref (DataCite for data DOIs) and links against the GitHub API or an HTTP request on the same day. Entries marked [待确认] still need a check; preprints are marked [preprint].

Biological order is unchanged: build the graph → QC the graph → genotype the cohort. Sequence/window PAV (4a), SVs (4b) and gene-level presence/copy-number (7) are kept apart.

## Contents

| # | Section | Entries |
|---|---|---|
| 1 | [Upstream inputs: phased assemblies](#1-upstream-inputs-phased-assemblies) | 4 |
| 2 | [Graph construction](#2-graph-construction) | 2 |
| 3 | [Assembly and graph QC before genotyping](#3-assembly-and-graph-qc-before-genotyping) | 3 |
| 4a | [Variant discovery (a): sequence and window PAV, growth curves](#4a-variant-discovery-a-sequence-and-window-pav-growth-curves) | 3 |
| 4b | [Variant discovery (b): structural variants](#4b-variant-discovery-b-structural-variants) | 2 |
| 5 | [Cohort genotyping and read-to-graph mapping (known sites)](#5-cohort-genotyping-and-read-to-graph-mapping-known-sites) | 7 |
| 6 | [Synteny, alignment and comparative maps](#6-synteny-alignment-and-comparative-maps) | 3 |
| 7 | [Graph-aware gene presence and family copy-number](#7-graph-aware-gene-presence-and-family-copy-number) | 4 |
| 8 | [Graph analysis, indexing and formats](#8-graph-analysis-indexing-and-formats) | 5 |
| 9 | [Visualization](#9-visualization) | 8 |
| 10a | [Expression and epigenome layers on the pangenome](#10a-expression-and-epigenome-layers-on-the-pangenome) | 6 |
| 10b | [QTL, pangenome-GWAS and genomic prediction](#10b-qtl-pangenome-gwas-and-genomic-prediction) | 8 |
| 11 | [Evolution, ancestry and introgression](#11-evolution-ancestry-and-introgression) | 5 |
| 12 | [Vitis pangenome studies and public resources](#12-vitis-pangenome-studies-and-public-resources) | 10 |
| 14 | [Ideas still untested on Vitis](#14-ideas-still-untested-on-vitis) | 3 |
| 15 | [Peer plant pangenome studies and reviews (new section in this supplement)](#15-peer-plant-pangenome-studies-and-reviews-new-section-in-this-supplement) | 17 |

Total: 90 entries.

## 1. Upstream inputs: phased assemblies

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs001"></a>VS001 | GCI | tool | 2024 | Genome Continuity Inspector scoring T2T assemblies from read alignments. | Distinguish true T2T grape haplotypes from gap-filled ones before graph building. | [doi:10.1093/bioinformatics/btae633](https://doi.org/10.1093/bioinformatics/btae633) · [link](https://github.com/yeeus/GCI) |
| <a id="vs002"></a>VS002 | RagTag | tool | 2022 | Reference-guided scaffolding, patching and correction. | Bring older contig-level Vitis assemblies to chromosome scale for PanSN per-chromosome graphs. | [doi:10.1186/s13059-022-02823-7](https://doi.org/10.1186/s13059-022-02823-7) · [link](https://github.com/malonge/RagTag) |
| <a id="vs003"></a>VS003 | Hi-C phasing with GreenHill | tool | 2023 | Hi-C based scaffolding and phasing of haplotypes. | Option for phasing grapes without parental data. | [doi:10.1186/s13059-023-03006-8](https://doi.org/10.1186/s13059-023-03006-8) · [link](https://github.com/ShunOuchi/GreenHill) |
| <a id="vs004"></a>VS004 | PhaseGrass | tool | 2025 | Reference-based phasing workflow producing chromosome-level haplotype-resolved diploid assemblies. | Phasing strategy for highly heterozygous outcrossing genomes like grape cultivars. | [doi:10.1038/s41467-025-66377-5](https://doi.org/10.1038/s41467-025-66377-5) · [link](https://github.com/Yutang-ETH/PhaseGrass) |

[Back to contents](#contents)

## 2. Graph construction

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs005"></a>VS005 | SweepGA | tool | 2025 | All-vs-all genome alignment with plane-sweep filtering and scaffold chaining (FastGA/wfmash). (year = repo created; no paper checked) | Removes TE-driven spurious cross-chromosome alignments, a known grape problem. | [link](https://github.com/pangenome/sweepga) |
| <a id="vs006"></a>VS006 | SibeliaZ | tool | 2020 | Locally collinear blocks across many closely related genomes. | Synteny-block view of grape haplotypes as a graph-free alternative. | [doi:10.1038/s41467-020-19777-8](https://doi.org/10.1038/s41467-020-19777-8) · [link](https://github.com/medvedevgroup/SibeliaZ) |

[Back to contents](#contents)

## 3. Assembly and graph QC before genotyping

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs007"></a>VS007 | gretl | tool | 2024 | Graph statistics (node/path similarity, bootstrap growth, windows). | Window-level graph stats to compare PGGB vs MC grape graphs. | [doi:10.1093/bioinformatics/btae755](https://doi.org/10.1093/bioinformatics/btae755) · [link](https://github.com/MoinSebi/gretl) |
| <a id="vs008"></a>VS008 | gfastats | tool | 2022 | Assembly/graph statistics and manipulation. | Uniform N50/gap stats across Vitis assemblies. | [doi:10.1093/bioinformatics/btac460](https://doi.org/10.1093/bioinformatics/btac460) · [link](https://github.com/vgl-hub/gfastats) |
| <a id="vs009"></a>VS009 | skani | tool | 2023 | Fast ANI estimation via sparse chaining. | More accurate pairwise identity than Mash for wild-species graphs. | [doi:10.1038/s41592-023-02018-3](https://doi.org/10.1038/s41592-023-02018-3) · [link](https://github.com/bluenote-1577/skani) |

[Back to contents](#contents)

## 4a. Variant discovery (a): sequence and window PAV, growth curves

Sequence or window presence/absence and growth curves. These are not gene-level PAV; gene-level calls are in section 7.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs010"></a>VS010 | PanK-Pipeline | tool | 2025 | k-mer presence/absence genotyping to VCF, PCA, structure and phylogeny (Brassica rapa demo). Sequence-level PAV, not gene PAV. (year = repo created; no paper checked) | Reference-free sequence PAV across grape accessions. | [link](https://github.com/caixu0518/PanK-Pipeline) |
| <a id="vs011"></a>VS011 | panagram | tool | 2022 | Alignment-free pangenome browser/analysis using KMC k-mer indexes. Sequence-level presence, not gene PAV. (year = repo created; no paper checked) | k-mer PAV browsing along grape chromosomes. | [link](https://github.com/kjenike/panagram) |
| <a id="vs012"></a>VS012 | pangrowth | tool | 2024 | Pangenome growth/openness from k-mers or from gene families. (year = repo created; no paper checked) | Report k-mer (sequence) and gene-family growth separately for Vitis; they answer different questions. | [link](https://github.com/gi-bielefeld/pangrowth) |

[Back to contents](#contents)

## 4b. Variant discovery (b): structural variants

Discovery of SVs from assemblies or graph decomposition.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs013"></a>VS013 | Inversions in pangenome graphs | analysis | 2026 | How inversions are represented and detected in graphs. | Grape SV maps report many inversions near centromeres; graph VCFs can misrepresent them. | [doi:10.1093/nargab/lqag125](https://doi.org/10.1093/nargab/lqag125) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC13669635/) |
| <a id="vs014"></a>VS014 | collapse-bubble | tool | 2024 | Merges redundant SV alleles within the same bubble in Minigraph-Cactus VCFs while keeping phased genotypes. (year = repo created; no paper checked) | Cleans MC deconstruct VCF before grape GWAS marker sets. | [link](https://github.com/Han-Cao/collapse-bubble) |

[Back to contents](#contents)

## 5. Cohort genotyping and read-to-graph mapping (known sites)

Genotyping of sites that already exist in the graph or panel, plus read mapping. These tools do not discover alleles that are absent from the graph.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs015"></a>VS015 | Locityper | tool | 2025 | Genotypes complex polymorphic loci by choosing the best pair of known haplotypes from a panel (short or long reads). | Cohort genotyping of NLR or other hypervariable grape loci against haplotypes already in the panel; it does not discover new alleles. | [doi:10.1038/s41588-025-02362-4](https://doi.org/10.1038/s41588-025-02362-4) · [link](https://github.com/tprodanov/locityper) |
| <a id="vs016"></a>VS016 | GraphChainer | tool | 2023 | Co-linear chaining for long-read graph alignment. | More accurate long-read placement in repeats. | [doi:10.1093/bioinformatics/btad460](https://doi.org/10.1093/bioinformatics/btad460) · [link](https://github.com/algbio/GraphChainer) |
| <a id="vs017"></a>VS017 | RecAlign | tool | 2026 | Recombination-aware long-read alignment to variation graphs. | Reads from recombinant grape progeny switch haplotypes. | [doi:10.1186/s12859-026-06640-8](https://doi.org/10.1186/s12859-026-06640-8) · [link](https://github.com/AlgoLab/rec_align_exps) |
| <a id="vs018"></a>VS018 | Moni-align | tool | 2025 | Short-read aligner on an r-index over a genome collection. | Graph-free pangenome mapping alternative for local grape regions. | [doi:10.1101/gr.279858.124](https://doi.org/10.1101/gr.279858.124) · [link](https://github.com/maxrossi91/moni-align) |
| <a id="vs019"></a>VS019 | Plant graph genotyper benchmark + ensemble | analysis | 2024 | Benchmarks vg, GraphTyper2, BayesTyper, PanGenie etc. on plant genomes; ensemble pipeline. | Choose a grape cohort genotyper from plant (not human) evidence. | [doi:10.1186/s13059-024-03239-1](https://doi.org/10.1186/s13059-024-03239-1) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC11003132/) |
| <a id="vs020"></a>VS020 | GLIMPSE2 | tool | 2023 | Phasing and imputation of low-coverage sequencing from a reference panel. | Impute known graph SV/SNP sites into skim-sequenced grape populations; known sites only. | [doi:10.1038/s41588-023-01438-3](https://doi.org/10.1038/s41588-023-01438-3) · [link](https://github.com/odelaneau/GLIMPSE) |
| <a id="vs021"></a>VS021 | Practical Haplotype Graph (PHG v2) | tool | 2022 | Stores panel haplotypes and imputes them into low-coverage or low-density samples. | Low-cost imputation of known grape panel haplotypes into breeding populations; known sites only. | [doi:10.1093/bioinformatics/btac410](https://doi.org/10.1093/bioinformatics/btac410) · [link](https://github.com/maize-genetics/phg_v2) |

[Back to contents](#contents)

## 6. Synteny, alignment and comparative maps

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs022"></a>VS022 | MUMmer4 | tool | 2018 | Whole-genome alignment (nucmer) and utilities. | Input to SyRI; still standard for grape SV papers. | [doi:10.1371/journal.pcbi.1005944](https://doi.org/10.1371/journal.pcbi.1005944) · [link](https://github.com/mummer4/mummer) |
| <a id="vs023"></a>VS023 | FastGA | tool | 2025 | Fast genome-to-genome aligner producing .1aln (used by sweepga). | Speeds up all-vs-all alignment of 50+ grape haplotypes. | [doi:10.1093/bioadv/vbaf238](https://doi.org/10.1093/bioadv/vbaf238) · [link](https://github.com/thegenemyers/FASTGA) |
| <a id="vs024"></a>VS024 | WGDI | tool | 2022 | WGD, collinearity and ancestral karyotype analyses. | Grape gamma triplication; ancestral karyotype for Vitaceae comparisons. | [doi:10.1016/j.molp.2022.10.018](https://doi.org/10.1016/j.molp.2022.10.018) · [link](https://github.com/SunPengChuan/wgdi) |

[Back to contents](#contents)

## 7. Graph-aware gene presence and family copy-number

Only graph- or alignment-aware gene presence and family copy-number. Gene models and functional labels stay in gene-structure-annotation and gene-function-annotation.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs025"></a>VS025 | GET_PANGENES | tool | 2023 | Clusters syntenic gene models across genomes from WGA into pangenes. | Graph/alignment-aware gene PAV for grape haplotypes using existing gene models. | [doi:10.1186/s13059-023-03071-z](https://doi.org/10.1186/s13059-023-03071-z) · [link](https://github.com/Ensembl/plant-scripts/tree/master/pangenes) |
| <a id="vs026"></a>VS026 | PanOryza pangene catalog | analysis | 2025 | Stable pangene IDs across 16+ rice genomes. | Model for a stable grape pangene ID catalog linked to Grapedia IDs. | [doi:10.1101/gr.280790.125](https://doi.org/10.1101/gr.280790.125) |
| <a id="vs027"></a>VS027 | Melon pan-NLRome graph | analysis | 2026 | Adaptive-sampling assemblies of NLR regions in 143 accessions, PGGB subgraphs, node- and k-mer GWAS. | Template for Rpv/Run NLR clusters in grape: targeted long-read assembly, locus subgraphs, NLR allele counts. | [doi:10.1093/hr/uhag399](https://doi.org/10.1093/hr/uhag399) |
| <a id="vs028"></a>VS028 | NLR neighborhoods by graph traversal (Arabidopsis) | analysis | 2025 | Defines NLR neighborhoods by walking a pangenome graph to syntenic single-copy anchors (odgi). | Graph-aware definition of NLR family copy-number regions in Vitis. | [doi:10.1016/j.chom.2025.07.011](https://doi.org/10.1016/j.chom.2025.07.011) |

[Back to contents](#contents)

## 8. Graph analysis, indexing and formats

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs029"></a>VS029 | ropebwt3 | tool | 2024 | BWT construction and FM-index search for very large sequence collections. (year = repo created; no paper checked) | Exact-match queries (e.g. marker k-mers) across all grape haplotypes. | [link](https://github.com/lh3/ropebwt3) |
| <a id="vs030"></a>VS030 | Billi | tool | 2025 | Bubble/snarl detection algorithm for large pangenome graphs (preprint). [preprint] | Bubble decomposition defines the variant sites that are later genotyped. | [doi:10.1101/2025.11.21.689636](https://doi.org/10.1101/2025.11.21.689636) |
| <a id="vs031"></a>VS031 | Popping bubbles (arXiv) | analysis | 2024 | Theory/algorithms for bubble structures in pangenome graphs (arXiv preprint). [preprint, arXiv 2410.20932] | Background for how variant sites are defined in grape graphs. | [link](https://arxiv.org/abs/2410.20932) |
| <a id="vs032"></a>VS032 | Cataloging variants in pangenome graphs (pantree) | analysis | 2025 | Defines graph variants via reference trees and outputs VCF catalogs. [preprint] [journal version in Cell Genomics; journal DOI 待确认, preprint DOI shown] | Consistent variant IDs across grape graph versions. | [doi:10.1101/2025.08.04.668502](https://doi.org/10.1101/2025.08.04.668502) |
| <a id="vs033"></a>VS033 | GFA specification | format | 2015 | GFA 1/2 format specification incl. W-lines. (year = repo created; no paper checked) | Shared format for all graph tools here. | [link](https://github.com/GFA-spec/GFA-spec) |

[Back to contents](#contents)

## 9. Visualization

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs034"></a>VS034 | GfaViz | tool | 2018 | GFA1/GFA2 visualization. | Quick figures of small subgraphs. | [doi:10.1093/bioinformatics/bty1046](https://doi.org/10.1093/bioinformatics/bty1046) · [link](https://github.com/ggonnella/gfaviz) |
| <a id="vs035"></a>VS035 | NGenomeSyn | tool | 2023 | Multi-genome synteny figures. | Publication-ready synteny across Vitis species. | [doi:10.1093/bioinformatics/btad121](https://doi.org/10.1093/bioinformatics/btad121) · [link](https://github.com/hewm2008/NGenomeSyn) |
| <a id="vs036"></a>VS036 | SVbyEye | tool | 2025 | R package for assembly-level SV visualization (miropeats-style). | Visualize complex SVs at loci such as Rpv3 or Run1 across assemblies. | [doi:10.1093/bioinformatics/btaf332](https://doi.org/10.1093/bioinformatics/btaf332) · [link](https://github.com/daewoooo/SVbyEye) |
| <a id="vs037"></a>VS037 | ModDotPlot | tool | 2024 | Fast identity-heatmap dot plots for tandem repeats. | Compare grape centromere arrays across haplotypes. | [doi:10.1093/bioinformatics/btae493](https://doi.org/10.1093/bioinformatics/btae493) · [link](https://github.com/marbl/ModDotPlot) |
| <a id="vs038"></a>VS038 | StainedGlass | tool | 2022 | Identity heatmaps of tandem repeat structures. | Complementary centromere/rDNA view. | [doi:10.1093/bioinformatics/btac018](https://doi.org/10.1093/bioinformatics/btac018) · [link](https://github.com/mrvollger/StainedGlass) |
| <a id="vs039"></a>VS039 | waragraph | tool | 2022 | GPU pangenome graph viewer (1D/2D). (year = repo created; no paper checked) | Interactive whole-graph browsing. | [link](https://github.com/chfi/waragraph) |
| <a id="vs040"></a>VS040 | strangepg | tool | 2023 | Interactive viewer for very large GFA graphs with coarsening and live layout. (year = repo created; no paper checked) | View whole-chromosome grape graphs. | [link](https://github.com/qwx9/strangepg) |
| <a id="vs041"></a>VS041 | gfalook | tool | 2025 | Pangenome graph rendering tool in the pangenome org (odgi-viz style). (year = repo created; no paper checked) | Lightweight figures of PGGB grape graphs. | [link](https://github.com/pangenome/gfalook) |

[Back to contents](#contents)

## 10a. Expression and epigenome layers on the pangenome

Pangenome-level expression and epigenome analyses. This is not RNA evidence for gene-structure annotation and not functional annotation.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs042"></a>VS042 | Graph Peak Caller | tool | 2019 | ChIP-seq peak calling on graphs. | Peak calling in SV regions for grape epigenomics. | [doi:10.1371/journal.pcbi.1006731](https://doi.org/10.1371/journal.pcbi.1006731) · [link](https://github.com/uio-bmi/graph_peak_caller) |
| <a id="vs043"></a>VS043 | methylation on graphs: panmethyl | tool | 2024 | Nextflow pipeline mapping long-read methylation to GFA pangenomes. (year = repo created; no paper checked) | Methylation over non-reference grape sequence from ONT/HiFi. | [link](https://github.com/cgroza/panmethyl) |
| <a id="vs044"></a>VS044 | modkit | tool | 2023 | Extracts modified-base calls (5mC/6mA) from ONT BAMs. (year = repo created; no paper checked) | Haplotype-resolved methylation from the same ONT data used for assemblies. | [link](https://github.com/nanoporetech/modkit) |
| <a id="vs045"></a>VS045 | Phased epigenomics in a Vitis hybrid | analysis | 2025 | Allele-specific methylation via phased graphs in a grape trio. | Direct Vitis precedent for haplotype-resolved epigenomics. | [doi:10.1186/s13059-025-03858-2](https://doi.org/10.1186/s13059-025-03858-2) · [link](https://github.com/noecochetel/Epigenomics_Trio) |
| <a id="vs046"></a>VS046 | Clonal genome-methylome map in grapevine | analysis | 2026 | Somatic SVs and methylation across grape clones. | Clonal propagation means somatic SVs must be separated from inherited heterozygosity. | [doi:10.1186/s13059-026-04184-x](https://doi.org/10.1186/s13059-026-04184-x) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC13352677/) |
| <a id="vs047"></a>VS047 | Barley pan-transcriptome | analysis | 2025 | Core/shell/cloud transcripts across 20 genotypes. | Template for a grape pan-transcriptome classification. | [doi:10.1038/s41588-024-02069-y](https://doi.org/10.1038/s41588-024-02069-y) · [link](https://doi.org/10.1038/s41588-024-02069-y) |

[Back to contents](#contents)

## 10b. QTL, pangenome-GWAS and genomic prediction

Association and prediction using graph or k-mer variants.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs048"></a>VS048 | kGWASflow | tool | 2023 | Snakemake workflow for k-mer GWAS with post-GWAS mapping. | Ready-to-run k-mer GWAS for grape panels. | [doi:10.1093/g3journal/jkad246](https://doi.org/10.1093/g3journal/jkad246) · [link](https://github.com/akcorut/kGWASflow) |
| <a id="vs049"></a>VS049 | PanKmer | tool | 2023 | k-mer pangenome indexing, presence/absence and association, reference-free. | Reference-free comparison of many grape assemblies. | [doi:10.1093/bioinformatics/btad621](https://doi.org/10.1093/bioinformatics/btad621) · [link](https://gitlab.com/salk-tm/pankmer) |
| <a id="vs050"></a>VS050 | kmdiff | tool | 2022 | Differential k-mer analysis between groups with population-structure correction. | Case/control k-mers (e.g. resistant vs susceptible grapes). | [doi:10.1093/bioinformatics/btac689](https://doi.org/10.1093/bioinformatics/btac689) · [link](https://github.com/tlemane/kmdiff) |
| <a id="vs051"></a>VS051 | pyseer | tool | 2018 | k-mer/unitig/PAV association with mixed models (microbial origin). | Unitig-GWAS idea transferable to grape PAV. | [doi:10.1093/bioinformatics/bty539](https://doi.org/10.1093/bioinformatics/bty539) · [link](https://github.com/mgalardini/pyseer) |
| <a id="vs052"></a>VS052 | panGWAS (PHAC) | tool | 2025 | Pangenome-wide association pipeline (SNP, PAV, SV) using pyseer (microbial). (year = repo created; no paper checked) | Idea source for multi-variant-class association. | [link](https://github.com/phac-nml/pangwas) |
| <a id="vs053"></a>VS053 | Cucumber graph pangenome in breeding | analysis | 2025 | SV dynamics across breeding history; SV burden in genomic prediction (preprint). [preprint] | SV burden as a predictor for grape breeding lines. | [doi:10.1101/2025.07.17.665377](https://doi.org/10.1101/2025.07.17.665377) |
| <a id="vs054"></a>VS054 | SV vs SNP genomic selection in rice | analysis | 2025 | Systematic SV vs SNP genomic prediction comparison. | Expect SVs alone ~ SNPs; check before claiming gains in grape GS. | [doi:10.1016/j.cj.2025.08.005](https://doi.org/10.1016/j.cj.2025.08.005) · [link](https://doi.org/10.1016/j.cj.2025.08.005) |
| <a id="vs055"></a>VS055 | Pan-genome PAV in gene-bank genomic prediction | analysis | 2025 | PAV and low-call-rate SNPs as extra GP predictors. | Grape germplasm collections are gene-bank-like. | [doi:10.1007/s00122-025-05080-x](https://doi.org/10.1007/s00122-025-05080-x) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC12594682/) |

[Back to contents](#contents)

## 11. Evolution, ancestry and introgression

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs056"></a>VS056 | ARG-Needle | tool | 2023 | Large-scale ARG inference and ARG-based association. | Genealogy-wide association for grape traits. | [doi:10.1038/s41588-023-01379-x](https://doi.org/10.1038/s41588-023-01379-x) · [link](https://github.com/PalamaraLab/arg-needle) |
| <a id="vs057"></a>VS057 | Dsuite | tool | 2021 | Fast ABBA-BABA statistics. | Wild-to-cultivated introgression (sylvestris, V. amurensis). | [doi:10.1111/1755-0998.13265](https://doi.org/10.1111/1755-0998.13265) · [link](https://github.com/millanek/Dsuite) |
| <a id="vs058"></a>VS058 | Mashtree | tool | 2019 | Mash-distance neighbor-joining trees. | Quick sanity tree of assemblies before graph construction. | [doi:10.21105/joss.01762](https://doi.org/10.21105/joss.01762) · [link](https://github.com/lskatz/mashtree) |
| <a id="vs059"></a>VS059 | Dual domestication of grapevine | analysis | 2023 | 3,525-accession population genomics of grapevine domestication. | Population framework to place pangenome SVs in domestication history. | [doi:10.1126/science.add8655](https://doi.org/10.1126/science.add8655) |
| <a id="vs060"></a>VS060 | Clonal diversity in grapevine (review) | analysis | 2025 | Review of somatic variation in grape clones and breeding use. | Clone-level variation is a grape-specific pangenome layer. | [doi:10.1007/s00122-025-04986-w](https://doi.org/10.1007/s00122-025-04986-w) · [link](https://link.springer.com/article/10.1007/s00122-025-04986-w) |

[Back to contents](#contents)

## 12. Vitis pangenome studies and public resources

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs061"></a>VS061 | PN_T2T reference | resource | 2023 | Telomere-to-telomere PN40024 reference (PN_T2T / v5). | Coordinate backbone used by Grapepan and Grapedia. | [doi:10.1093/hr/uhad061](https://doi.org/10.1093/hr/uhad061) |
| <a id="vs062"></a>VS062 | Pierre et al. data deposit | resource | 2026 | Haplotyped assemblies, annotations, TE annotation and graph for 16 cultivars. | Downloadable cultivated-grape graph. | [doi:10.57745/ckd4h5](https://doi.org/10.57745/ckd4h5) · [link](https://doi.org/10.57745/ckd4h5) |
| <a id="vs063"></a>VS063 | Muscadinia rotundifolia Trayshed diploid assembly | resource | 2021 | Phased Trayshed assembly; chr7/chr20 fusion; R-gene expansion. | Outgroup for a Vitaceae super-pangenome; karyotype difference must be handled. | [doi:10.1093/g3journal/jkab033](https://doi.org/10.1093/g3journal/jkab033) |
| <a id="vs064"></a>VS064 | Muscadine Carlos assembly + pan-genome | resource | 2023 | Carlos assembly and 4-genome synteny pan-genome. | Pierce's disease resistance genes absent from vinifera. | [doi:10.1186/s12864-023-09514-y](https://doi.org/10.1186/s12864-023-09514-y) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC10357881/) |
| <a id="vs065"></a>VS065 | Wild side of grape genomics (review) | analysis | 2024 | Review of 45 wild grape genomes and pangenomics. | Map of available wild Vitis assemblies. | [doi:10.1016/j.tig.2024.04.014](https://doi.org/10.1016/j.tig.2024.04.014) · [link](https://doi.org/10.1016/j.tig.2024.04.014) |
| <a id="vs066"></a>VS066 | Grape family phylogenomics | analysis | 2026 | Chromosome-level genomes and phylogenomics across Vitaceae, including SV effects on A/B compartments. | Family-scale outgroups for Vitis graphs and a 3D-genome angle on SVs. | [doi:10.1038/s41477-026-02442-1](https://doi.org/10.1038/s41477-026-02442-1) · [link](https://www.nature.com/articles/s41477-026-02442-1) |
| <a id="vs067"></a>VS067 | Diploid phasing from draft (Minio et al.) | tool | 2022 | Pipeline (HaploSync) to build diploid-phased chromosomes. | Upgrade older grape assemblies to phased haplotypes. | [doi:10.1093/g3journal/jkac143](https://doi.org/10.1093/g3journal/jkac143) |
| <a id="vs068"></a>VS068 | Grapevine sex determination | analysis | 2020 | Haplotype-resolved sex locus of Vitis. | Known SV-rich locus to validate graph representation. | [doi:10.1038/s41467-020-16700-z](https://doi.org/10.1038/s41467-020-16700-z) · [link](https://www.nature.com/articles/s41467-020-16700-z) |
| <a id="vs069"></a>VS069 | VitExpress + haplotype-resolved assembly | resource | 2024 | Haplotype-resolved grape assembly with an open expression platform. | Expression lookup for genes in graph SV regions. | [doi:10.1073/pnas.2403750121](https://doi.org/10.1073/pnas.2403750121) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC11161759/) |
| <a id="vs070"></a>VS070 | Munage haplotype-resolved assemblies | resource | 2025 | Haplotype-resolved genome of an ancient Xinjiang cultivar. | Adds Central Asian diversity to graph inputs. | [doi:10.1093/hr/uhaf274](https://doi.org/10.1093/hr/uhaf274) |

[Back to contents](#contents)

## 14. Ideas still untested on Vitis

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs071"></a>VS071 | GPN | tool | 2023 | DNA language model for unsupervised variant-effect prediction (first trained on Arabidopsis/Brassicales). | Could rank graph SNP/indel candidates in non-coding grape regions; not tested on Vitis. | [doi:10.1073/pnas.2311219120](https://doi.org/10.1073/pnas.2311219120) · [link](https://github.com/songlab-cal/gpn) |
| <a id="vs072"></a>VS072 | Evo 2 | tool | 2025 | Genome-scale DNA language model across domains of life. (year = repo created; no paper checked) [待确认: paper DOI not checked] | Exploratory variant-effect scoring; not tested on Vitis [待确认]. | [link](https://github.com/ArcInstitute/evo2) |
| <a id="vs073"></a>VS073 | Pan-proteome with predicted structures (barley abstract) | idea | 2026 | Conference abstract: 856,971 proteoforms from 76 barley genotypes with predicted-structure clustering. [conference abstract, not peer-reviewed] | Idea for a grape pan-proteome layer; abstract only, not peer-reviewed. | [link](https://ipk-bit.github.io/ib2026-abstract-book/abstracts/full-talks/144/) |

[Back to contents](#contents)

## 15. Peer plant pangenome studies and reviews (new section in this supplement)

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| <a id="vs074"></a>VS074 | Pangenome graphs review | analysis | 2020 | Review of pangenome graph models and tools. | Background for repo docs. | [doi:10.1146/annurev-genom-120219-080406](https://doi.org/10.1146/annurev-genom-120219-080406) |
| <a id="vs075"></a>VS075 | Plant T2T methods review | analysis | 2024 | Review of plant T2T assembly and pangenome use. | Assembly standards for Vitis T2T graphs. | [doi:10.1038/s41588-024-01830-7](https://doi.org/10.1038/s41588-024-01830-7) · [link](https://www.nature.com/articles/s41588-024-01830-7) |
| <a id="vs076"></a>VS076 | Potato wild/cultivated genomes | analysis | 2022 | 44 diploid potato genomes; SVs and deleterious load in clonal crop. | Clonal, heterozygous crop parallel to grapevine. | [doi:10.1038/s41586-022-04822-x](https://doi.org/10.1038/s41586-022-04822-x) · [link](https://www.nature.com/articles/s41586-022-04822-x) |
| <a id="vs077"></a>VS077 | Rice super pan-genome | analysis | 2022 | Rice super pan-genome with graph genome. | Graph-based population SV design. | [doi:10.1038/s41422-022-00685-z](https://doi.org/10.1038/s41422-022-00685-z) · [link](https://www.nature.com/articles/s41422-022-00685-z) |
| <a id="vs078"></a>VS078 | Barley pangenome | analysis | 2024 | 76 barley genomes, SV in domestication. | Large plant pangenome methods (minigraph per chr). | [doi:10.1038/s41586-024-08187-1](https://doi.org/10.1038/s41586-024-08187-1) · [link](https://www.nature.com/articles/s41586-024-08187-1) |
| <a id="vs079"></a>VS079 | Arabidopsis 69 accessions | analysis | 2024 | Species-wide pan-genome with genome structure conservation. | Methods for core/dispensable classification in plants. | [doi:10.1038/s41588-024-01715-9](https://doi.org/10.1038/s41588-024-01715-9) · [link](https://www.nature.com/articles/s41588-024-01715-9) |
| <a id="vs080"></a>VS080 | Cucumber graph pan-genome | analysis | 2022 | Graph pan-genome with trait SVs. | Graph SV-trait design in a fruit crop. | [doi:10.1038/s41467-022-28362-0](https://doi.org/10.1038/s41467-022-28362-0) · [link](https://www.nature.com/articles/s41467-022-28362-0) |
| <a id="vs081"></a>VS081 | Maize 26 genomes (NAM) | analysis | 2021 | NAM founder genomes and pan-gene analysis. | Pan-gene classification and PAV reference design. | [doi:10.1126/science.abg5289](https://doi.org/10.1126/science.abg5289) |
| <a id="vs082"></a>VS082 | Soybean pan-genome | analysis | 2020 | Graph-based soybean pan-genome. | Early graph genome for a crop. | [doi:10.1016/j.cell.2020.05.023](https://doi.org/10.1016/j.cell.2020.05.023) · [link](https://doi.org/10.1016/j.cell.2020.05.023) |
| <a id="vs083"></a>VS083 | Wheat multiple genomes | analysis | 2020 | 10+ wheat genomes and introgressions. | Introgression mapping via multiple assemblies. | [doi:10.1038/s41586-020-2961-x](https://doi.org/10.1038/s41586-020-2961-x) · [link](https://www.nature.com/articles/s41586-020-2961-x) |
| <a id="vs084"></a>VS084 | Pearl millet pangenome (heat tolerance) | analysis | 2023 | Pangenome SVs associated with heat tolerance. | SV-to-abiotic-stress design relevant to grape heat/drought work. | [doi:10.1038/s41588-023-01302-4](https://doi.org/10.1038/s41588-023-01302-4) · [link](https://www.nature.com/articles/s41588-023-01302-4) |
| <a id="vs085"></a>VS085 | Apple haplotype-resolved genomes (rootstock dwarfing) | analysis | 2024 | Near-gapless haplotype-resolved apple genomes used to map rootstock-induced dwarfing. | Woody grafted perennial like grape; template for a Vitis rootstock pangenome. | [doi:10.1038/s41588-024-01657-2](https://doi.org/10.1038/s41588-024-01657-2) · [link](https://www.nature.com/articles/s41588-024-01657-2) |
| <a id="vs086"></a>VS086 | Eggplant graph pangenomes + pan-phenome | analysis | 2025 | Two graph pangenomes from 40 assemblies plus a 368-accession pan-phenome. | Shows sequence growth curves stay open while protein-family curves close; same split needed for Vitis. | [doi:10.1038/s41467-025-64866-1](https://doi.org/10.1038/s41467-025-64866-1) · [link](https://www.nature.com/articles/s41467-025-64866-1) |
| <a id="vs087"></a>VS087 | What are we learning from plant pangenomes? | analysis | 2025 | Annual Review of Plant Biology overview of plant pangenome findings. | Background review. | [doi:10.1146/annurev-arplant-090823-015358](https://doi.org/10.1146/annurev-arplant-090823-015358) |
| <a id="vs088"></a>VS088 | From structural pangenomes to functional panomics | analysis | 2026 | Review: graph coordinates, panNLRomes, pantranscriptomics, panepigenomics. | Recent synthesis matching this catalog's scope. | [doi:10.1093/molbev/msag087](https://doi.org/10.1093/molbev/msag087) |
| <a id="vs089"></a>VS089 | Pangenomes for large/complex plant genomes | analysis | 2025 | Review of construction strategies and representation formats for complex plant genomes. | Format choices for a Vitis release. | [doi:10.1016/j.jare.2025.01.052](https://doi.org/10.1016/j.jare.2025.01.052) · [link](https://pmc.ncbi.nlm.nih.gov/articles/PMC12684929/) |
| <a id="vs090"></a>VS090 | Complexity welcome (review) | analysis | 2025 | Perspective on graph pangenomes for plant population genomics. | Conceptual framing for graph-based popgen in Vitis. | [doi:10.1017/qpb.2025.10028](https://doi.org/10.1017/qpb.2025.10028) · [link](https://www.cambridge.org/core/journals/quantitative-plant-biology/article/complexity-welcome-pangenome-graphs-for-comprehensive-population-genomics/B2DD25F2FD0B4CB91D238DFD2257E7FA) |

[Back to contents](#contents)

## Notes

- Not included on purpose: Helixer, LiftOn, Liftoff, TOGA and NLR-Annotator make or transfer gene models; they belong in the two annotation repositories, not here.
- No section on dosage methods: the repository has no checked copy-number/dosage method yet.
- Journal figures are not reproduced; this file only lists sources.
