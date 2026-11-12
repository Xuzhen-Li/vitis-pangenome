# Pangenome methods catalog for *Vitis*

New analyses, tools and ideas for building and using a grape pangenome, sorted by task. Each entry has a type (tool, analysis or idea), a year, one line on what it does, one line on why it matters for a *Vitis* pangenome, and a source (DOI and/or official link). Plant and general methods are included when they could be applied to grape.

Entries marked [待确认] still need a check (for example, a code link or whether a method was ever tried on grape). Preprints are marked [preprint].

Snapshot: 2026-11-13 (Asia/Shanghai). Sources were checked against Crossref (DOI and title) and the GitHub API or an HTTP request (links) on the same day.

## Contents

| # | Section | Entries |
|---|---|---|
| 1 | [Upstream inputs: phased assemblies](#1-upstream-inputs-phased-assemblies) | 5 |
| 2 | [Graph construction](#2-graph-construction) | 17 |
| 3 | [Assembly and graph QC before genotyping](#3-assembly-and-graph-qc-before-genotyping) | 14 |
| 4 | [Variant discovery: sequence PAV, structural variants and TE insertions](#4-variant-discovery-sequence-pav-structural-variants-and-te-insertions) | 21 |
| 5 | [Cohort genotyping and read-to-graph mapping](#5-cohort-genotyping-and-read-to-graph-mapping) | 17 |
| 6 | [Synteny, alignment and comparative maps](#6-synteny-alignment-and-comparative-maps) | 8 |
| 7 | [Graph-aware gene presence and family copy-number](#7-graph-aware-gene-presence-and-family-copy-number) | 13 |
| 8 | [Graph analysis, indexing and formats](#8-graph-analysis-indexing-and-formats) | 11 |
| 9 | [Visualization](#9-visualization) | 12 |
| 10 | [Expression, QTL and pangenome-GWAS](#10-expression-qtl-and-pangenome-gwas) | 12 |
| 11 | [Evolution, ancestry and introgression](#11-evolution-ancestry-and-introgression) | 7 |
| 12 | [Vitis pangenome studies and public resources](#12-vitis-pangenome-studies-and-public-resources) | 9 |
| 13 | [Workflows and pipelines](#13-workflows-and-pipelines) | 6 |
| 14 | [Ideas still untested on Vitis](#14-ideas-still-untested-on-vitis) | 10 |

Total: 162 entries.

### How the sections line up with the scripts in this repo

Biological order: build the graph (01-05, 12-13) → QC the graph (16) → genotype the cohort (08 sketch, 14, 15) → classify and post-process variants (07, 09) → check synteny (10). Script numbers are file names, not the order of steps.

## 1. Upstream inputs: phased assemblies

What a haplotype needs before it goes into a graph. Assembly itself is not the topic of this repo; these are only the inputs and checks the graph depends on.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V001 | hifiasm | tool | 2021 | Assembles HiFi reads into phased haplotype contigs, with trio or Hi-C phasing modes. | Grapevine cultivars are highly heterozygous clones, so two phased haplotypes per accession are the natural input for a graph. | [doi:10.1038/s41592-020-01056-5](https://doi.org/10.1038/s41592-020-01056-5) · [link](https://github.com/chhylp123/hifiasm) |
| V002 | Verkko | tool | 2023 | Combines HiFi and ultra-long ONT reads into telomere-to-telomere haplotype assemblies. | Fills centromeres and long repeats so graph paths are not broken at gaps, as in T2T grape assemblies. | [doi:10.1038/s41587-023-01662-6](https://doi.org/10.1038/s41587-023-01662-6) · [link](https://github.com/marbl/verkko) |
| V003 | quarTeT | tool | 2023 | Toolkit for gap filling, telomere and centromere-repeat identification in T2T assembly. | Developed in a horticulture setting; quick check of telomere/centromere completeness before graph input. | [doi:10.1093/hr/uhad127](https://doi.org/10.1093/hr/uhad127) · [link](https://github.com/aaranyue/quarTeT) |
| V004 | purge_dups | tool | 2020 | Removes haplotigs and overlaps from primary assemblies using read depth. | Avoids false duplications that later look like copy-number or PAV signals in the graph. | [doi:10.1093/bioinformatics/btaa025](https://doi.org/10.1093/bioinformatics/btaa025) · [link](https://github.com/dfguan/purge_dups) |
| V005 | NOHIC | tool | 2026 | Scaffolds plant contigs against personalized references sampled from a pangenome graph instead of Hi-C. [preprint] | Could scaffold new Vitis accessions cheaply once a grape graph exists. [待确认: code URL not checked] | [doi:10.64898/2026.03.17.712436](https://doi.org/10.64898/2026.03.17.712436) |

[Back to contents](#contents)

## 2. Graph construction

Builders and building blocks. Scripts 01-05 (PGGB path) and 12-13 (Minigraph-Cactus, minigraph) already use several of these.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V006 | PGGB | tool | 2024 | Builds an unbiased variation graph from all-to-all alignments (wfmash → seqwish → smoothxg → GFAffix). | Already the discovery graph in this repo (scripts 04–05); Grapepan v1.0 also used PGGB. | [doi:10.1038/s41592-024-02430-3](https://doi.org/10.1038/s41592-024-02430-3) · [link](https://github.com/pangenome/pggb) |
| V007 | Minigraph-Cactus | tool | 2023 | Reference-anchored base-level pangenome graph built from a minigraph SV backbone and Cactus alignments, with vg/Giraffe indexes. | Produces Giraffe-ready graphs; used by Grapepan v1.0 and the cultivated grapevine G3 2026 graph. | [doi:10.1038/s41587-023-01793-w](https://doi.org/10.1038/s41587-023-01793-w) · [link](https://github.com/ComparativeGenomicsToolkit/cactus) |
| V008 | minigraph | tool | 2020 | Incrementally builds an SV-level rGFA graph from assemblies and maps sequences to it. | Fast SV-only graph for large Vitis panels; script 13 already uses it per chromosome. | [doi:10.1186/s13059-020-02168-z](https://doi.org/10.1186/s13059-020-02168-z) · [link](https://github.com/lh3/minigraph) |
| V009 | wfmash | tool | 2024 | Whole-genome all-to-all aligner based on mashmap segments and wavefront alignment; the alignment step of PGGB. | Parameter -p (identity) controls how divergent wild Vitis species can be joined in one graph. | [link](https://github.com/waveygang/wfmash) |
| V010 | seqwish | tool | 2022 | Induces a variation graph from pairwise alignments by transitive closure of matches. | Core of PGGB; understanding it explains graph complexity at grape repeat loci. | [link](https://github.com/pangenome/seqwish) |
| V011 | smoothxg | tool | 2022 | Locally re-aligns (POA) and normalizes the seqwish graph to remove alignment noise. | Reduces spurious small bubbles before calling variants from Vitis graphs. | [link](https://github.com/pangenome/smoothxg) |
| V012 | GFAffix | tool | 2022 | Collapses walk-preserving shared affixes in variation graphs. | Final PGGB normalization step; makes graphs smaller and variant decomposition cleaner. | [link](https://github.com/codialab/GFAffix) |
| V013 | impg | tool | 2025 | Treats all-vs-all alignments as an implicit pangenome graph to project and extract homologous loci without building a full graph. | Lets one study a single grape locus (e.g. sex or berry-colour region) across many haplotypes cheaply. | [link](https://github.com/pangenome/impg) |
| V014 | AlfaPang | tool | 2025 | Alignment-free construction of variation graphs as a faster replacement for the first PGGB steps. | Possible cost saving when the Vitis panel grows to hundreds of haplotypes. | [doi:10.1186/s13015-025-00277-7](https://doi.org/10.1186/s13015-025-00277-7) · [link](https://github.com/AdamCicherski/AlfaPang) |
| V015 | Progressive Cactus | tool | 2020 | Reference-free multiple genome aligner for many genomes. | Genus-level alignments across Vitis / Muscadinia where pangenome graphs become too divergent. | [doi:10.1038/s41586-020-2871-y](https://doi.org/10.1038/s41586-020-2871-y) · [link](https://github.com/ComparativeGenomicsToolkit/cactus) |
| V016 | pgr-tk | tool | 2023 | Builds minimizer-anchored sequence graphs (MAP graphs) and principal bundles for locus-level pangenome analysis. | Good for repeat-rich resistance-gene clusters (e.g. NLR loci) across grape haplotypes. | [doi:10.1038/s41592-023-01914-y](https://doi.org/10.1038/s41592-023-01914-y) · [link](https://github.com/cschin/pgr-tk) |
| V017 | Bifrost | tool | 2020 | Builds and queries colored compacted de Bruijn graphs for many genomes. | Alignment-free, k-mer graph view of Vitis panels for k-mer GWAS or presence queries. | [doi:10.1186/s13059-020-02135-8](https://doi.org/10.1186/s13059-020-02135-8) · [link](https://github.com/pmelsted/bifrost) |
| V018 | GGCAT | tool | 2023 | Fast construction of compacted and colored de Bruijn graphs. | Scales k-mer graphs to large resequencing panels. | [doi:10.1101/gr.277615.122](https://doi.org/10.1101/gr.277615.122) · [link](https://github.com/algbio/ggcat) |
| V019 | Cuttlefish 2 | tool | 2022 | Constructs compacted de Bruijn graphs from many references with low memory. | Cheap alternative graph representation for k-mer–based association. | [doi:10.1186/s13059-022-02743-6](https://doi.org/10.1186/s13059-022-02743-6) · [link](https://github.com/COMBINE-lab/cuttlefish) |
| V020 | Pangenome graph construction review (Plant) | analysis | 2025 | Review of plant graph pangenome construction, mapping and genotyping tools and their limits. | Up-to-date plant-specific map of the method landscape. | [doi:10.1007/s42994-025-00206-7](https://doi.org/10.1007/s42994-025-00206-7) |
| V021 | PanSN-spec | idea | 2022 | Naming convention sample#haplotype#contig for sequences in pangenomes. | Script 01 already applies it; keeps Vitis haplotypes traceable across all tools. | [link](https://github.com/pangenome/PanSN-spec) |
| V022 | Chromosome-level graph partitioning | idea | 2024 | Build one graph per chromosome or per mash community to bound memory and runtime. | Grape has 19 chromosomes with conserved collinearity, so per-chromosome graphs are natural. | [doi:10.1093/bioinformatics/btae609](https://doi.org/10.1093/bioinformatics/btae609) · [link](https://github.com/nf-core/pangenome) |

[Back to contents](#contents)

## 3. Assembly and graph QC before genotyping

Run these after building and before any cohort genotyping. Script 16 (graph QC) belongs here even though its number comes after 14-15.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V023 | Merqury | tool | 2020 | Reference-free k-mer QV, completeness and phasing assessment of assemblies. | Run on every haplotype before it enters the graph. | [doi:10.1186/s13059-020-02134-9](https://doi.org/10.1186/s13059-020-02134-9) · [link](https://github.com/marbl/merqury) |
| V024 | BUSCO | tool | 2021 | Gene-space completeness using single-copy orthologs. | Standard gate for each Vitis haplotype (Grapepan reported ~98%). | [doi:10.1093/molbev/msab199](https://doi.org/10.1093/molbev/msab199) · [link](https://busco.ezlab.org/) |
| V025 | compleasm | tool | 2023 | Faster, miniprot-based BUSCO-style completeness estimate. | Quick re-check for dozens of grape haplotypes. | [doi:10.1093/bioinformatics/btad595](https://doi.org/10.1093/bioinformatics/btad595) · [link](https://github.com/huangnengCSU/compleasm) |
| V026 | LAI | tool | 2018 | LTR Assembly Index measures repeat-space contiguity. | Grape genomes are ~55–59% TE; LAI flags weak repeat assembly before graph build. | [doi:10.1093/nar/gky730](https://doi.org/10.1093/nar/gky730) · [link](https://github.com/oushujun/LTR_retriever) |
| V027 | Inspector | tool | 2021 | Read-based assembly error detection and correction. | Finds structural misassemblies that would masquerade as graph SVs. | [doi:10.1186/s13059-021-02527-4](https://doi.org/10.1186/s13059-021-02527-4) · [link](https://github.com/Maggi-Chen/Inspector) |
| V028 | CRAQ | tool | 2023 | Pinpoints regional and structural assembly errors from clipped read alignments. | Separates real Vitis SVs from assembly errors at single-nucleotide resolution. | [doi:10.1038/s41467-023-42336-w](https://doi.org/10.1038/s41467-023-42336-w) · [link](https://github.com/JiaoLaboratory/CRAQ) |
| V029 | Flagger | tool | 2023 | Read-coverage-based flagging of erroneous, duplicated or collapsed blocks in diploid assemblies (HPRC). | Masks unreliable blocks in phased grape haplotypes before graph construction. | [doi:10.1038/s41586-023-05896-x](https://doi.org/10.1038/s41586-023-05896-x) · [link](https://github.com/mobinasri/flagger) |
| V030 | Crop graph evaluation framework | analysis | 2025 | Compares minigraph, PGGB and Minigraph-Cactus on crop data with completeness, duplication and SV-fidelity metrics. | Gives ready-made QC metrics to choose and justify the Vitis graph builder. | [doi:10.1093/gigascience/giaf121](https://doi.org/10.1093/gigascience/giaf121) |
| V031 | Human graph method comparison | analysis | 2023 | Benchmarks how construction methods change graph structure and downstream use. | Explains why PGGB and MC graphs differ in bubbles and size. | [doi:10.1186/s13059-023-03098-2](https://doi.org/10.1186/s13059-023-03098-2) |
| V032 | odgi stats / validate | tool | 2022 | Graph statistics, path checks and layout-based QC on variation graphs. | Script 16 QC basis; run before any cohort genotyping. | [doi:10.1093/bioinformatics/btac308](https://doi.org/10.1093/bioinformatics/btac308) · [link](https://github.com/pangenome/odgi) |
| V033 | gfatools | tool | 2020 | Converts and summarizes GFA/rGFA graphs. | Quick sanity checks on minigraph graphs. | [link](https://github.com/lh3/gfatools) |
| V034 | Truvari | tool | 2022 | Compares, merges and benchmarks SV VCFs with sequence similarity. | Benchmark graph-derived SVs against assembly SyRI calls. | [doi:10.1186/s13059-022-02840-6](https://doi.org/10.1186/s13059-022-02840-6) · [link](https://github.com/ACEnglish/truvari) |
| V035 | vcfdist | tool | 2023 | Phasing-aware benchmarking of small and structural variant calls. | Evaluate genotyping accuracy on held-out Vitis haplotypes. | [doi:10.1038/s41467-023-43876-x](https://doi.org/10.1038/s41467-023-43876-x) · [link](https://github.com/TimD1/vcfdist) |
| V036 | Leave-one-out haplotype benchmark | idea | 2022 | Remove one assembled sample from the panel, genotype its reads, and compare with its assembly. | The standard way to measure graph genotyping accuracy in Vitis without a truth set. | [doi:10.1038/s41588-022-01043-w](https://doi.org/10.1038/s41588-022-01043-w) |

[Back to contents](#contents)

## 4. Variant discovery: sequence PAV, structural variants and TE insertions

Three different layers are kept apart: (a) sequence or window presence/absence and growth curves; (b) structural variants found from the graph, from assemblies, or as new alleles from long reads; gene-level PAV and family copy number are in section 7, not here. panacus growth curves (script 06) count base pairs, not genes.

### (a) Sequence and window PAV, growth curves

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V037 | panacus | tool | 2024 | Computes pangenome growth and core size curves from a graph (by bp, node or edge). | Script 06 uses it; this is sequence-level (bp) growth, not gene PAV. | [doi:10.1093/bioinformatics/btae720](https://doi.org/10.1093/bioinformatics/btae720) · [link](https://github.com/codialab/panacus) |
| V038 | odgi pav | tool | 2022 | Presence/absence of paths over BED windows in a graph. | Window-level sequence PAV across grape haplotypes (separate from gene PAV). | [doi:10.1093/bioinformatics/btac308](https://doi.org/10.1093/bioinformatics/btac308) · [link](https://github.com/pangenome/odgi) |
| V039 | GraTools | tool | 2025 | Indexes a GFA once and extracts subgraphs, core/dispensable ratios and group-specific segments. [preprint] | Find segments specific to wild vs cultivated, or table vs wine, grape groups. | [doi:10.64898/2025.12.01.691558](https://doi.org/10.64898/2025.12.01.691558) · [link](https://gratools.readthedocs.io/) |
| V040 | Heaps law openness | idea | 2008 | Fitting pangenome growth to judge whether a pangenome is open or closed. | Interpret panacus curves for Vitis (open genus-level vs near-closed V. vinifera). | [doi:10.1016/j.mib.2008.09.006](https://doi.org/10.1016/j.mib.2008.09.006) |

### (b) Structural variants and TE insertions

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V041 | vg deconstruct | tool | 2018 | Emits VCF of graph bubbles relative to a chosen reference path. | Script 05 variant discovery from the graph itself. | [doi:10.1038/nbt.4227](https://doi.org/10.1038/nbt.4227) · [link](https://github.com/vgteam/vg) |
| V042 | vcfbub | tool | 2021 | Filters nested/oversized bubbles from graph VCFs. | Removes huge nested sites before population analysis. | [link](https://github.com/pangenome/vcfbub) |
| V043 | vcfwave (vcflib) | tool | 2022 | Realigns complex graph alleles into primitive SNPs/indels/SVs. | Makes graph VCFs usable by standard grape popgen tools. | [doi:10.1371/journal.pcbi.1009123](https://doi.org/10.1371/journal.pcbi.1009123) · [link](https://github.com/vcflib/vcflib) |
| V044 | SyRI | tool | 2019 | Finds synteny, rearrangements and local variants between two chromosome-level assemblies. | Script 10 uses it; independent SV truth from assemblies. | [doi:10.1186/s13059-019-1911-0](https://doi.org/10.1186/s13059-019-1911-0) · [link](https://github.com/schneebergerlab/syri) |
| V045 | PAV (assembly-based caller) | tool | 2021 | Calls SNVs, indels, SVs and inversions from phased assemblies against a reference. | Haplotype-resolved SV calls for each grape haplotype to compare with graph bubbles. | [doi:10.1126/science.abf7117](https://doi.org/10.1126/science.abf7117) · [link](https://github.com/EichlerLab/pav) |
| V046 | SVIM-asm | tool | 2020 | Assembly-to-reference SV caller. | Light alternative to PAV for many Vitis haplotypes. | [doi:10.1093/bioinformatics/btaa1034](https://doi.org/10.1093/bioinformatics/btaa1034) · [link](https://github.com/eldariont/svim-asm) |
| V047 | Sniffles2 | tool | 2024 | Long-read SV caller with population-scale merging (SNF files) and mosaic SV detection. | For HiFi/ONT resequencing of grape clones and populations. | [doi:10.1038/s41587-023-02024-y](https://doi.org/10.1038/s41587-023-02024-y) · [link](https://github.com/fritzsedlazeck/Sniffles) |
| V048 | cuteSV | tool | 2020 | Fast long-read SV detection by signature clustering. | Multi-caller consensus with Sniffles2 on Vitis long reads. | [doi:10.1186/s13059-020-02107-y](https://doi.org/10.1186/s13059-020-02107-y) · [link](https://github.com/tjiangHIT/cuteSV) |
| V049 | SVision-pro | tool | 2024 | Neural-network discovery of complex, de novo and somatic SVs from long reads. | Detect somatic SVs among grape clones (e.g. Pinot clones). | [doi:10.1038/s41587-024-02190-7](https://doi.org/10.1038/s41587-024-02190-7) · [link](https://github.com/songbowang125/SVision-pro) |
| V050 | Jasmine | tool | 2023 | Merges SV calls across samples with a minimum-spanning-forest approach. | Builds a non-redundant SV catalog from many grape callsets. | [doi:10.1038/s41592-022-01753-3](https://doi.org/10.1038/s41592-022-01753-3) · [link](https://github.com/mkirsche/Jasmine) |
| V051 | SURVIVOR | tool | 2017 | Simulation, merging and comparison of SV calls. | Classic merge/consensus step; still widely used in plant SV papers. | [doi:10.1038/ncomms14061](https://doi.org/10.1038/ncomms14061) · [link](https://github.com/fritzsedlazeck/SURVIVOR) |
| V052 | SVarp | tool | 2024 | Discovers new SV alleles (not in the graph) from long reads aligned to a pangenome graph. [preprint] | True novel-SV discovery against a grape graph, unlike genotyping of known bubbles. | [doi:10.1101/2024.02.18.580171](https://doi.org/10.1101/2024.02.18.580171) · [link](https://github.com/asylvz/SVarp) |
| V053 | SVPG | tool | 2025 | Uses a haplotype-resolved pangenome reference to detect SVs from long reads and quickly augment the graph with new samples. [preprint] | Adds new Vitis accessions without rebuilding the whole graph. | [doi:10.1101/2025.07.11.664486](https://doi.org/10.1101/2025.07.11.664486) · [link](https://github.com/coopsor/SVPG) |
| V054 | Swave | tool | 2026 | Deep-learning method that resolves simple and complex SVs with population features from assembly-derived pangenome graphs. | Better SV classification out of PGGB/MC grape graphs than bubble decomposition alone. | [doi:10.1038/s41588-026-02538-6](https://doi.org/10.1038/s41588-026-02538-6) · [link](https://github.com/songbowang125/Swave) |
| V055 | GraffiTE | tool | 2023 | Finds polymorphic TE insertions from assemblies/long reads, builds a graph and genotypes them (v1.1 adds methylation, 2026 preprint 10.64898/2026.11.06.764993). | TE insertions drive grape traits (e.g. Gret1 at VvMybA1); polymorphic TE catalog per accession. | [doi:10.1101/2023.09.11.557209](https://doi.org/10.1101/2023.09.11.557209) · [link](https://github.com/cgroza/GraffiTE) |
| V056 | TE insertion polymorphisms from pangenome (rice) | analysis | 2025 | Pangenome-wide TE insertion polymorphisms linked to cold tolerance in rice. | Template for linking grape TE-SVs to cold hardiness (e.g. V. amurensis). | [doi:10.1038/s41467-025-62887-4](https://doi.org/10.1038/s41467-025-62887-4) |
| V057 | SV size and class taxonomy | idea | 2021 | Report SVs by class (INS/DEL/INV/DUP/complex), size bin and TE/tandem origin rather than one count. | Avoids mixing sequence PAV, SVs and gene PAV in grape summaries. | [doi:10.1126/science.abf7117](https://doi.org/10.1126/science.abf7117) |

[Back to contents](#contents)

## 5. Cohort genotyping and read-to-graph mapping

These tools genotype variant sites that are already in the graph. Giraffe + vg call (script 14) and PanGenie (script 15) are both cohort genotyping: the first aligns reads to the graph, the second uses k-mers. Neither one adds new alleles to the graph. For new SV alleles from reads, see SVarp and SVPG in section 4.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V058 | vg Giraffe | tool | 2021 | Fast haplotype-aware short-read mapper to GBZ pangenome graphs. | Script 14 mapper; maps resequenced grape cohorts to the graph. | [doi:10.1126/science.abg8871](https://doi.org/10.1126/science.abg8871) · [link](https://github.com/vgteam/vg) |
| V059 | vg Giraffe long reads | tool | 2025 | Extends Giraffe to fast long-read and short-read mapping on large pangenome graphs. [preprint] | Map HiFi/ONT grape reads to the same graph as short reads. | [doi:10.1101/2025.09.29.678807](https://doi.org/10.1101/2025.09.29.678807) · [link](https://github.com/vgteam/vg) |
| V060 | vg call | tool | 2020 | Genotypes known graph bubbles (SVs and small variants) from read support after vg pack. | Script 14 step: cohort genotyping of variants already in the graph, not discovery of new alleles. | [doi:10.1186/s13059-020-1941-7](https://doi.org/10.1186/s13059-020-1941-7) · [link](https://github.com/vgteam/vg) |
| V061 | Haplotype sampling (personalized graphs) | tool | 2024 | Samples the most similar haplotypes per sample with k-mers to build a personalized graph before mapping. | Improves mapping when the grape graph holds many divergent wild haplotypes. | [doi:10.1038/s41592-024-02407-2](https://doi.org/10.1038/s41592-024-02407-2) · [link](https://github.com/vgteam/vg) |
| V062 | PanGenie | tool | 2022 | Alignment-free k-mer HMM genotyping of known pangenome variants from short reads. | Script 15; fast cohort genotyping of graph SVs. Differs from Giraffe+vg call by k-mers vs read alignment. | [doi:10.1038/s41588-022-01043-w](https://doi.org/10.1038/s41588-022-01043-w) · [link](https://github.com/eblerjana/pangenie) |
| V063 | PanGenie with haplotype sampling and polishing | tool | 2026 | Adds sample-specific haplotype sampling and rare-variant polishing to scale PanGenie cohorts. [preprint] | Larger grape panels than the old 254-haplotype limit. | [doi:10.64898/2026.06.29.735275](https://doi.org/10.64898/2026.06.29.735275) · [link](https://github.com/eblerjana/pangenie) |
| V064 | Varigraph | tool | 2025 | k-mer genotyper for small and large variants on graphs, including polyploid allele dosage. | Built and tested on plant genomes; useful for polyploid/hybrid rootstock material too. | [doi:10.1016/j.molp.2025.08.001](https://doi.org/10.1016/j.molp.2025.08.001) · [link](https://github.com/JiaoLab2021/varigraph) |
| V065 | GraphAligner | tool | 2020 | Aligns long reads to sequence graphs. | Long-read mapping to minigraph grape graphs. | [doi:10.1186/s13059-020-02157-2](https://doi.org/10.1186/s13059-020-02157-2) · [link](https://github.com/maickrau/GraphAligner) |
| V066 | Haplotype-aware long-read alignment | tool | 2024 | Aligns sequences to pangenome graphs while respecting haplotype paths (Minichain/haplotype-aware co-linear chaining). | Avoids chimeric paths across grape haplotypes. | [doi:10.1101/gr.279143.124](https://doi.org/10.1101/gr.279143.124) |
| V067 | BayesTyper | tool | 2018 | k-mer based Bayesian genotyping of SNVs, indels and SVs. | Early k-mer genotyper; reference point for comparisons. | [doi:10.1038/s41588-018-0145-5](https://doi.org/10.1038/s41588-018-0145-5) · [link](https://github.com/bioinformatics-centre/BayesTyper) |
| V068 | Paragraph | tool | 2019 | Local graph-based SV genotyping from short reads. | Targeted genotyping of a curated grape SV set. | [doi:10.1186/s13059-019-1909-7](https://doi.org/10.1186/s13059-019-1909-7) · [link](https://github.com/Illumina/paragraph) |
| V069 | GraphTyper2 | tool | 2019 | Population-scale SV genotyping with local pangenome graphs. | Joint cohort genotyping of SVs in large grape resequencing panels. | [doi:10.1038/s41467-019-13341-9](https://doi.org/10.1038/s41467-019-13341-9) · [link](https://github.com/DecodeGenetics/graphtyper) |
| V070 | KAGE | tool | 2022 | Fast alignment-free genotyping using k-mers and population priors. | Low-cost genotyping for breeding-scale grape cohorts. | [doi:10.1186/s13059-022-02771-2](https://doi.org/10.1186/s13059-022-02771-2) · [link](https://github.com/kage-genotyper/kage) |
| V071 | SVJedi-graph | tool | 2023 | Long-read SV genotyping on a variation graph of close/overlapping SVs. | Genotype nested grape SVs with ONT data. | [doi:10.1093/bioinformatics/btad237](https://doi.org/10.1093/bioinformatics/btad237) · [link](https://github.com/SandraLouise/SVJedi-graph) |
| V072 | COSIGT | tool | 2026 | Genotypes complex loci from 1–2x coverage by matching read-coverage vectors to graph haplotypes. | Low-coverage or ancient grape seed DNA genotyping at complex loci. | [doi:10.1186/s13059-026-04242-4](https://doi.org/10.1186/s13059-026-04242-4) · [link](https://github.com/davidebolo1993/cosigt) |
| V073 | Panmap | tool | 2026 | Phylogeny-compressed k-mer index for placement, alignment and genotyping on mutation-annotated pangenomes. [preprint] | Idea for placing new grape samples on a haplotype phylogeny. | [doi:10.64898/2026.03.29.711974](https://doi.org/10.64898/2026.03.29.711974) · [link](https://github.com/amkram/panmap) |
| V074 | Pangenome-aware DeepVariant | tool | 2025 | Small-variant calling that adds pangenome haplotypes to pileup images. [preprint] | More accurate SNP/indel calls in divergent grape regions. | [doi:10.1101/2025.06.05.657102](https://doi.org/10.1101/2025.06.05.657102) · [link](https://github.com/google/deepvariant) |

[Back to contents](#contents)

## 6. Synteny, alignment and comparative maps

Assembly-to-assembly alignment and collinearity checks. Script 10 (SyRI) is a synteny check and sits here in spirit.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V075 | minimap2 | tool | 2018 | General long sequence and assembly aligner. | Assembly-to-assembly alignment for SyRI and dotplots. | [doi:10.1093/bioinformatics/bty191](https://doi.org/10.1093/bioinformatics/bty191) · [link](https://github.com/lh3/minimap2) |
| V076 | AnchorWave | tool | 2021 | Gene-anchored whole-genome alignment that handles WGD and SV. | Better alignments across divergent Vitis species / Muscadinia. | [doi:10.1073/pnas.2113075119](https://doi.org/10.1073/pnas.2113075119) · [link](https://github.com/baoxingsong/AnchorWave) |
| V077 | plotsr | tool | 2022 | Plots synteny and SVs across multiple chromosome-level assemblies. | Karyotype-level figure of grape haplotypes from SyRI output. | [doi:10.1093/bioinformatics/btac196](https://doi.org/10.1093/bioinformatics/btac196) · [link](https://github.com/schneebergerlab/plotsr) |
| V078 | msyd | tool | 2024 | Multi-genome synteny decomposition from pairwise SyRI results. | Core vs variable syntenic regions across many grape haplotypes. [待确认: publication] | [link](https://github.com/schneebergerlab/msyd) |
| V079 | ntSynt | tool | 2025 | Multi-genome synteny blocks from minimizer graph mappings, alignment-free. | Fast synteny across a whole Vitis genus panel. | [doi:10.1186/s12915-025-02455-w](https://doi.org/10.1186/s12915-025-02455-w) · [link](https://github.com/BirolLab/ntSynt) |
| V080 | GENESPACE | tool | 2022 | Synteny- and orthology-constrained comparison with riparian plots and pan-gene sets. | Gene-order view across grape haplotypes and relatives. | [doi:10.7554/eLife.78526](https://doi.org/10.7554/eLife.78526) · [link](https://github.com/jtlovell/GENESPACE) |
| V081 | JCVI / MCscan | tool | 2024 | Python toolkit for synteny, macro/micro-synteny plots and comparative genomics. | Standard synteny dotplots and macro/micro-synteny plots for grape haplotypes and relatives. | [doi:10.1002/imt2.211](https://doi.org/10.1002/imt2.211) · [link](https://github.com/tanghaibao/jcvi) |
| V082 | Mumemto | tool | 2025 | Finds multi-MUMs across pangenomes and visualizes conservation, synteny and assembly errors. | Alignment-free collinearity check over all grape haplotypes at once. | [doi:10.1186/s13059-025-03644-0](https://doi.org/10.1186/s13059-025-03644-0) · [link](https://github.com/vikshiv/mumemto) |

[Back to contents](#contents)

## 7. Graph-aware gene presence and family copy-number

Only gene presence/absence, copy number and family membership across haplotypes. Gene models (structure) stay in gene-structure-annotation; gene names, GO/KEGG and domains stay in gene-function-annotation. Tools here use existing gene models or proteins; they do not make new annotations.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V083 | OrthoFinder | tool | 2019 | Infers orthogroups and gene trees across genomes. | Gene-family copy-number tables across grape haplotypes (uses gene models from the annotation repos). | [doi:10.1186/s13059-019-1832-y](https://doi.org/10.1186/s13059-019-1832-y) · [link](https://github.com/davidemms/OrthoFinder) |
| V084 | Pandagma | tool | 2024 | Synteny-aware pan-gene and family sets, handling WGDs and chromosome constraints. | Builds pan-gene sets for Vitis within-genus comparisons. | [doi:10.1093/bioinformatics/btae526](https://doi.org/10.1093/bioinformatics/btae526) · [link](https://github.com/legumeinfo/pandagma) |
| V085 | pangene | tool | 2024 | Builds a pangene graph from protein-to-genome alignments (miniprot) to show gene order and copy changes. | Graph-aware gene presence/copy-number without full re-annotation. | [doi:10.1093/bioinformatics/btae456](https://doi.org/10.1093/bioinformatics/btae456) · [link](https://github.com/lh3/pangene) |
| V086 | PanTools (ploidy-aware) | tool | 2025 | Graph database pangenome with gene, synteny, repeat and Ka/Ks analyses within and between haplotypes. | Tested on apple and potato phased genomes; fits grape haplotype pairs. | [doi:10.1111/pbi.14545](https://doi.org/10.1111/pbi.14545) · [link](https://git.wur.nl/bioinformatics/pantools) |
| V087 | GET_HOMOLOGUES-EST | tool | 2017 | Plant-oriented core/soft-core/cloud gene clustering. | Simple gene-level core/dispensable curves across grape annotations. | [doi:10.3389/fpls.2017.00184](https://doi.org/10.3389/fpls.2017.00184) · [link](https://github.com/eead-csic-compbio/get_homologues) |
| V088 | SonicParanoid2 | tool | 2024 | Fast ortholog inference with ML and domain-architecture graphs. | Faster family tables when many grape haplotypes are added. | [doi:10.1186/s13059-024-03298-4](https://doi.org/10.1186/s13059-024-03298-4) · [link](https://gitlab.com/salvo981/sonicparanoid2) |
| V089 | miniprot | tool | 2023 | Fast protein-to-genome spliced alignment. | Projects reference proteins to each grape haplotype to check gene presence. | [doi:10.1093/bioinformatics/btad014](https://doi.org/10.1093/bioinformatics/btad014) · [link](https://github.com/lh3/miniprot) |
| V090 | Liftoff | tool | 2021 | Lifts gene models between assemblies of the same species and reports copy gains. | Checks whether existing gene models are present or duplicated in each haplotype; making new gene models stays in gene-structure-annotation. | [doi:10.1093/bioinformatics/btaa1016](https://doi.org/10.1093/bioinformatics/btaa1016) · [link](https://github.com/agshumate/Liftoff) |
| V091 | LiftOn | tool | 2024 | Combines DNA and protein alignments to improve lift-over gene models. | Better presence/copy calls at divergent grape loci; producing gene models stays in gene-structure-annotation. | [doi:10.1101/gr.279620.124](https://doi.org/10.1101/gr.279620.124) · [link](https://github.com/Kuanhao-Chao/LiftOn) |
| V092 | Pan-NLRome | analysis | 2019 | Saturating NLR repertoire across 64 Arabidopsis accessions with resistance-gene enrichment. | Model for a Vitis pan-NLRome; the Vitis super-pangenome found fewer TIR-NBS-LRR genes in European cultivars. | [doi:10.1016/j.cell.2019.07.038](https://doi.org/10.1016/j.cell.2019.07.038) |
| V093 | NLR-Annotator | tool | 2020 | Finds NLR loci from motifs, including partial and pseudogenes. | Counts NLR loci per haplotype for family copy-number in the graph. | [doi:10.1104/pp.19.01273](https://doi.org/10.1104/pp.19.01273) · [link](https://github.com/steuernb/NLR-Annotator) |
| V094 | Gene-level vs sequence-level PAV | idea | 2024 | Report three separate layers: sequence/window PAV, SVs, and gene/family PAV or copy number. | Avoids calling panacus bp growth curves "gene PAV" in grape results. | [link](https://github.com/codialab/panacus) |
| V095 | Wheat k-mer gene catalog (PanSK) | analysis | 2024 | Uses unique k-mers to infer gene family presence directly from raw reads for association. | Infer NLR or terpene-synthase family presence in grape accessions without assembly. | [doi:10.1016/j.molp.2024.05.006](https://doi.org/10.1016/j.molp.2024.05.006) |

[Back to contents](#contents)

## 8. Graph analysis, indexing and formats

Toolkits, file formats and graph-level analyses.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V096 | odgi | tool | 2022 | Toolkit to sort, layout, extract, untangle and summarize variation graphs. | Core analysis toolkit for PGGB grape graphs. | [doi:10.1093/bioinformatics/btac308](https://doi.org/10.1093/bioinformatics/btac308) · [link](https://github.com/pangenome/odgi) |
| V097 | GBZ / GBWT | tool | 2022 | Compressed haplotype-aware graph format used by vg Giraffe. | Required format for Giraffe genotyping in script 14. | [doi:10.1093/bioinformatics/btac656](https://doi.org/10.1093/bioinformatics/btac656) · [link](https://github.com/jltsiren/gbwtgraph) |
| V098 | vg toolkit | tool | 2018 | Variation graph toolkit for construction, indexing, mapping and calling. | Backbone of scripts 08 and 14. | [doi:10.1038/nbt.4227](https://doi.org/10.1038/nbt.4227) · [link](https://github.com/vgteam/vg) |
| V099 | BubbleGun | tool | 2022 | Detects bubbles and superbubbles and chains in graphs. | Summarizes variation hotspots in grape graphs. | [doi:10.1093/bioinformatics/btac448](https://doi.org/10.1093/bioinformatics/btac448) · [link](https://github.com/fawaz-dabbaghieh/bubble_gun) |
| V100 | Snarl decomposition | idea | 2018 | Theory of superbubbles, ultrabubbles and cacti that defines graph variant sites. | Explains nested sites in vg deconstruct VCFs from grape graphs. | [doi:10.1089/cmb.2017.0251](https://doi.org/10.1089/cmb.2017.0251) |
| V101 | AGC | tool | 2023 | Compresses collections of assembled genomes with random access. | Ship and store many grape haplotypes efficiently. | [doi:10.1093/bioinformatics/btad097](https://doi.org/10.1093/bioinformatics/btad097) · [link](https://github.com/refresh-bio/agc) |
| V102 | Mash | tool | 2016 | MinHash distance between genomes. | Script 03; sets PGGB identity and groups communities. | [doi:10.1186/s13059-016-0997-x](https://doi.org/10.1186/s13059-016-0997-x) · [link](https://github.com/marbl/Mash) |
| V103 | gfainject | tool | 2023 | Projects BAM alignments to linear paths into GAF on a graph. | Reuse existing grape BAMs for graph coverage analyses. | [link](https://github.com/AndreaGuarracino/gfainject) |
| V104 | gafpack | tool | 2023 | Converts GAF alignments to node coverage vectors. | Node-level coverage matrix for association or CNV checks. | [link](https://github.com/pangenome/gafpack) |
| V105 | Graph IBD with SVs (GIBD) | tool | 2026 | Detects identity-by-descent segments in a GBWT and annotates shared SVs. [preprint] | Clonal and pedigree relationships among grape cultivars with SV context. | [doi:10.64898/2026.11.05.764670](https://doi.org/10.64898/2026.11.05.764670) |
| V106 | GRAFIMO | tool | 2021 | Scans transcription-factor motifs on variation graphs, haplotype-aware. | Finds promoter motif gains/losses caused by grape SVs. [preprint] | [doi:10.1101/2021.02.04.429752](https://doi.org/10.1101/2021.02.04.429752) · [link](https://github.com/pinellolab/GRAFIMO) |

[Back to contents](#contents)

## 9. Visualization

Viewers and plots for graphs, synteny and PAV.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V107 | Bandage | tool | 2015 | Interactive viewer for assembly and small graphs. | Inspect a single grape locus subgraph. | [doi:10.1093/bioinformatics/btv383](https://doi.org/10.1093/bioinformatics/btv383) · [link](https://github.com/rrwick/Bandage) |
| V108 | BandageNG | tool | 2023 | Maintained fork of Bandage with path and GFA improvements. | Same use with modern GFA paths. | [link](https://github.com/asl/BandageNG) |
| V109 | SequenceTubeMap | tool | 2019 | Tube-map visualization of haplotype paths and reads in vg graphs. | Show grape haplotypes and read support at a candidate SV. | [doi:10.1093/bioinformatics/btz597](https://doi.org/10.1093/bioinformatics/btz597) · [link](https://github.com/vgteam/sequenceTubeMap) |
| V110 | odgi viz / draw | tool | 2022 | 1D and 2D renderings of graph paths and layouts. | Whole-chromosome view of grape graph diversity. | [doi:10.1093/bioinformatics/btac308](https://doi.org/10.1093/bioinformatics/btac308) · [link](https://github.com/pangenome/odgi) |
| V111 | VRPG | tool | 2025 | Web browser of pangenome graphs projected onto linear reference coordinates with annotation tracks. | Browse grape graphs next to the gene tracks of PN40024. | [doi:10.1101/gr.279461.124](https://doi.org/10.1101/gr.279461.124) · [link](https://github.com/codeatcg/VRPG) |
| V112 | PangyPlot | tool | 2025 | Genome browser for pangenome graphs with linear navigation and physics-based layouts. [preprint] | Readable views of large SVs for grape breeders. | [doi:10.1101/2025.10.31.684064](https://doi.org/10.1101/2025.10.31.684064) · [link](https://pangyplot.research.sickkids.ca/) |
| V113 | PanGraphViewer | tool | 2023 | Desktop/web viewer for rGFA or VCF-based graphs with gene annotation overlay. | Easy local viewing of minigraph grape graphs. [preprint] | [doi:10.1101/2023.03.30.534931](https://doi.org/10.1101/2023.03.30.534931) · [link](https://github.com/TF-Chan-Lab/panGraphViewer) |
| V114 | MoMI-G | tool | 2019 | Multi-scale genome graph browser focused on SVs. | SV-centric views for grape. | [doi:10.1186/s12859-019-3145-2](https://doi.org/10.1186/s12859-019-3145-2) · [link](https://github.com/MoMI-G/MoMI-G) |
| V115 | Panache | tool | 2022 | Linearized pangenome browser of presence/absence blocks (Wheat Panache; Brassica napus Panache 2026). | PAV block browser for a grape pangenome database. | [doi:10.1002/tpg2.20221](https://doi.org/10.1002/tpg2.20221) · [link](https://github.com/SouthGreenPlatform/panache) |
| V116 | PanVA | tool | 2025 | Visual analytics of variants in homology groups with phylogeny and metadata. [preprint] | Explore resistance-gene alleles across grape accessions with phenotypes. | [doi:10.1101/2025.06.23.661080](https://doi.org/10.1101/2025.06.23.661080) · [link](https://github.com/PanBrowse/PanVA) |
| V117 | JBrowse 2 | tool | 2023 | Genome browser with synteny and multi-genome views. | GrapeGenomics.com already hosts JBrowse 2 for Vitis genomes. | [doi:10.1186/s13059-023-02914-z](https://doi.org/10.1186/s13059-023-02914-z) · [link](https://jbrowse.org/jb2/) |
| V118 | ntSynt-viz | tool | 2025 | Ribbon plots of ntSynt synteny across multiple genomes. [preprint] | Fast genus-wide grape synteny figures. | [doi:10.1101/2025.01.15.633221](https://doi.org/10.1101/2025.01.15.633221) · [link](https://github.com/BirolLab/ntSynt-viz) |

[Back to contents](#contents)

## 10. Expression, QTL and pangenome-GWAS

Association and expression analyses that use the pangenome. This is not the RNA evidence step of structural annotation (HISAT2/StringTie) and not functional annotation.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V119 | Grapepan v1.0 SV-GWAS | analysis | 2024 | Graph pangenome of 29 haplotypes; 466 accessions genotyped; SVs add heritability and QTLs for 29 traits. | Direct Vitis precedent for SV-GWAS and genomic prediction. | [doi:10.1038/s41588-024-01967-5](https://doi.org/10.1038/s41588-024-01967-5) |
| V120 | Vitis super-pangenome SV-eQTL | analysis | 2025 | 72 haplotype-resolved Vitis genomes; SV-eQTL and DM-infection transcriptomes identify VvLHT8 and other DM resistance loci. | Model for SV-expression links in grape disease resistance. | [doi:10.1038/s41588-025-02111-7](https://doi.org/10.1038/s41588-025-02111-7) |
| V121 | NodeGWAS | tool | 2026 | Turns graph alignments into node presence/count matrices for association and maps hits to linear coordinates. | Association directly on graph nodes in diverse or polyploid grape material. | [doi:10.1016/j.xplc.2026.101835](https://doi.org/10.1016/j.xplc.2026.101835) · [link](https://github.com/zhangyixing3/NodeGWAS) |
| V122 | kmersGWAS | tool | 2020 | Reference-free GWAS on k-mer presence/absence. | Captures SV and PAV effects missed by SNP GWAS in grape. | [doi:10.1038/s41588-020-0612-7](https://doi.org/10.1038/s41588-020-0612-7) · [link](https://github.com/voichek/kmersGWAS) |
| V123 | Graph meta-GWAS (rice) | analysis | 2025 | Meta-analysis of six GWAS panels with graph-derived PAVs increases detected QTLs. | Combine several grape GWAS panels on one graph. | [doi:10.1038/s41467-025-58081-1](https://doi.org/10.1038/s41467-025-58081-1) |
| V124 | Potato PAV metabolite-GWAS | analysis | 2025 | Graph-based SV PAVs associated with >1,000 tuber metabolites. | Template for berry metabolite (aroma, anthocyanin) SV-mGWAS in grape. | [doi:10.1016/j.molp.2025.01.017](https://doi.org/10.1016/j.molp.2025.01.017) |
| V125 | Brassica napus SV-eQTL | analysis | 2025 | Graph-genotyped SVs and expression reveal cis SV-eQTLs, many TE insertions. | Same design for grape berry or leaf expression. | [doi:10.1007/s00122-025-04867-2](https://doi.org/10.1007/s00122-025-04867-2) |
| V126 | rpvg / spliced pangenome graphs | tool | 2023 | Haplotype-aware transcript quantification on spliced pangenome graphs. | Allele-aware expression across grape haplotypes; not the annotation RNA-evidence step. | [doi:10.1038/s41592-022-01731-9](https://doi.org/10.1038/s41592-022-01731-9) · [link](https://github.com/jonassibbesen/rpvg) |
| V127 | Tomato super-pangenome heritability | analysis | 2022 | Graph pangenome of 32 genomes recovers missing heritability via SVs in 332 accessions. | Shows why SVs belong in grape trait models. | [doi:10.1038/s41586-022-04808-9](https://doi.org/10.1038/s41586-022-04808-9) |
| V128 | Tomato SVs and expression | analysis | 2020 | Long-read SVs in 100 tomatoes change gene dosage/expression and fruit traits. | Classic SV–expression–trait design for fruit crops. | [doi:10.1016/j.cell.2020.05.021](https://doi.org/10.1016/j.cell.2020.05.021) |
| V129 | Oat pangenome + pantranscriptome | analysis | 2025 | Combines a pangenome with multi-tissue transcriptomes to study expression variation. | Template for a grape pantranscriptome across tissues. | [doi:10.1038/s41586-025-09676-7](https://doi.org/10.1038/s41586-025-09676-7) |
| V130 | methylGrapher | tool | 2025 | Maps bisulfite methylation data to genome graphs. | Methylation at grape SVs/TEs without reference bias. | [doi:10.1093/nar/gkaf028](https://doi.org/10.1093/nar/gkaf028) · [link](https://github.com/twlab/methylGrapher) |

[Back to contents](#contents)

## 11. Evolution, ancestry and introgression

Population history read from haplotypes and graphs.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V131 | Grapevine SV domestication | analysis | 2019 | Population genetics of SVs and hemizygosity in grapevine domestication. | Foundational Vitis SV study to compare graph results with. | [doi:10.1038/s41477-019-0507-8](https://doi.org/10.1038/s41477-019-0507-8) |
| V132 | Grapevine clone diversification | analysis | 2019 | Somatic SVs and SNVs among grapevine clones. | Motivates clone-level graphs for Pinot/Chardonnay clones. | [doi:10.1186/s12864-019-6211-2](https://doi.org/10.1186/s12864-019-6211-2) |
| V133 | SINGER | tool | 2025 | Bayesian ancestral recombination graph inference for hundreds of genomes. | Genealogies for introgression and selection in grape haplotypes. | [doi:10.1038/s41588-025-02317-9](https://doi.org/10.1038/s41588-025-02317-9) · [link](https://github.com/popgenmethods/SINGER) |
| V134 | tsinfer | tool | 2019 | Scalable tree-sequence inference from phased data. | Compact genealogy of large grape cohorts. | [doi:10.1038/s41588-019-0483-y](https://doi.org/10.1038/s41588-019-0483-y) · [link](https://github.com/tskit-dev/tsinfer) |
| V135 | Twisst | tool | 2017 | Topology weighting of local trees along the genome. | Introgression between V. vinifera and wild species across haplotypes. | [doi:10.1534/genetics.116.194720](https://doi.org/10.1534/genetics.116.194720) · [link](https://github.com/simonhmartin/twisst) |
| V136 | Haplotype-aware phylogenomics | idea | 2025 | Use each phased haplotype as a tip to separate hybrid ancestry in clonal hybrids. | The Vitis super-pangenome used it to resolve grape hybridization history. | [doi:10.1038/s41588-025-02111-7](https://doi.org/10.1038/s41588-025-02111-7) |
| V137 | NA Vitis wild introgression | analysis | 2023 | North American wild grape super-pangenome with graph and gene-based analyses. | Source of this repo's PGGB defaults; rootstock relatives. | [doi:10.1186/s13059-023-03133-2](https://doi.org/10.1186/s13059-023-03133-2) |

[Back to contents](#contents)

## 12. Vitis pangenome studies and public resources

Grape-specific graphs, panels and portals to reuse or compare against.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V138 | Grapepan v1.0 | analysis | 2024 | 18 T2T haplotypes plus 11 public assemblies; MC and PGGB graphs. | Public Vitis graph to reuse. | [doi:10.1038/s41588-024-01967-5](https://doi.org/10.1038/s41588-024-01967-5) |
| V139 | Vitis super-pangenome | analysis | 2025 | 72 accessions (25 wild, 47 cultivated); assemblies and annotations on Zenodo. | Largest genus-level phased grape panel. | [doi:10.1038/s41588-025-02111-7](https://doi.org/10.1038/s41588-025-02111-7) · [link](https://doi.org/10.5281/zenodo.13982444) |
| V140 | Cultivated grapevine pangenome (G3) | analysis | 2026 | 15 cultivar genomes; high collinearity and ~55% dispensable orthologous genes. | Recent V. vinifera-only pangenome for cultivar-level comparisons. | [doi:10.1093/g3journal/jkag168](https://doi.org/10.1093/g3journal/jkag168) |
| V141 | Vitis amurensis graph (Vampan) | analysis | 2026 | Graph pangenome of wild Amur grape linking TE variants to climatic adaptation. | Cold-hardy wild Vitis; TE-SV adaptation template. | [doi:10.1038/s41467-026-70026-w](https://doi.org/10.1038/s41467-026-70026-w) |
| V142 | NA Vitis super-pangenome | analysis | 2023 | Nine North American Vitis species pangenome and browser. | Defaults used in this repo; browser for rootstock species. | [doi:10.1186/s13059-023-03133-2](https://doi.org/10.1186/s13059-023-03133-2) · [link](https://grapegenomics.com/pages/NA_Vitis_pangenome/index.php) |
| V143 | Grapedia | tool | 2025 | Community grapevine genome and tools portal (genomes, Grape-RNA, browsers). | Single entry for public Vitis genomes and annotations. | [link](https://grapedia.org/) |
| V144 | GrapeGenomics JBrowse | tool | 2023 | JBrowse 2 instances for many Vitis genomes. | Browse grape assemblies used in a graph. | [link](https://www.grapegenomics.com/pages/jbrowse2.php) |
| V145 | Grapevine pangenome review (Horticulturae) | analysis | 2026 | Review of V. vinifera diversity beyond the reference and pangenomic frameworks. | Recent grape-specific overview of pangenome designs. | [doi:10.3390/horticulturae12060756](https://doi.org/10.3390/horticulturae12060756) |
| V146 | Graph pangenomes in polyploid crops (review) | analysis | 2026 | Perspective on graph pangenomes for complex polyploid genomes from sugarcane to other crops. | Useful for polyploid or interspecific grape rootstocks. | [doi:10.1016/j.xplc.2026.101852](https://doi.org/10.1016/j.xplc.2026.101852) |

[Back to contents](#contents)

## 13. Workflows and pipelines

Ready-made pipelines and release recipes.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V147 | nf-core/pangenome | tool | 2024 | Nextflow pipeline running PGGB tools on clusters. | Drop-in orchestration for scripts 04–06. | [doi:10.1093/bioinformatics/btae609](https://doi.org/10.1093/bioinformatics/btae609) · [link](https://github.com/nf-core/pangenome) |
| V148 | Pan1c | tool | 2026 | Snakemake pipeline for chromosome-level PGGB/MC graphs with QC and reports. [preprint] | Built by plant groups; matches the per-chromosome grape design. | [doi:10.64898/2026.04.17.719212](https://doi.org/10.64898/2026.04.17.719212) · [link](https://forge.inrae.fr/genotoul-bioinfo/Pan1c/pan1c) |
| V149 | cactus-pangenome | tool | 2023 | One-command Minigraph-Cactus workflow producing GBZ, VCF and indexes. | Script 12 wrapper target. | [doi:10.1038/s41587-023-01793-w](https://doi.org/10.1038/s41587-023-01793-w) · [link](https://github.com/ComparativeGenomicsToolkit/cactus/blob/master/doc/pangenome.md) |
| V150 | HPRC release 2 graph workflow | tool | 2025 | Public recipes for wfmash alignment, implicit graph and variants for HPRC release 2. | Concrete large-scale template for a growing grape panel. | [link](https://github.com/pangenome/HPRCv2) |
| V151 | HPRC draft pangenome | analysis | 2023 | Human draft pangenome reference and its graph/benchmark practices. | Reference practice for graph releases and QC. | [doi:10.1038/s41586-023-05896-x](https://doi.org/10.1038/s41586-023-05896-x) |
| V152 | Rice pangenome reference (wild + cultivated) | analysis | 2025 | Pangenome of wild and cultivated rice as a reference resource. | Example of releasing a crop graph reference with wild relatives. | [doi:10.1038/s41586-025-08883-6](https://doi.org/10.1038/s41586-025-08883-6) |

[Back to contents](#contents)

## 14. Ideas still untested on Vitis

Ideas, not results. Each one needs a pilot before it goes into the pipeline.

| ID | Name | Type | Year | What it does | Why it matters for *Vitis* | Source |
|---|---|---|---|---|---|---|
| V153 | COSIGT on ancient grape seeds | idea | 2026 | Use low-coverage graph genotyping on archaeological grape seeds at complex loci. | Domestication timing of SV alleles. [待确认: not tried on Vitis] | [doi:10.1186/s13059-026-04242-4](https://doi.org/10.1186/s13059-026-04242-4) |
| V154 | Berry-colour locus graph (VvMybA1) | idea | 2004 | Build a locus graph (impg or PGGB) around a known SV locus such as the Gret1 retrotransposon at VvMybA1 (berry colour). | Test graph genotyping on a known grape SV with a clear phenotype. | [doi:10.1126/science.1095011](https://doi.org/10.1126/science.1095011) |
| V155 | Pangenome foundation models | idea | 2026 | Graph-conditioned DNA language models trained on tomato pangenome nodes (TomatoPGFM). [preprint] | Could score grape SV effects; untested on Vitis. | [doi:10.64898/2026.08.31.748176](https://doi.org/10.64898/2026.08.31.748176) |
| V156 | DeepGene | tool | 2025 | Transformer foundation model using pangenome graph representations. | Idea for graph-aware sequence models in grape. | [doi:10.1109/tcbbio.2025.3614354](https://doi.org/10.1109/tcbbio.2025.3614354) |
| V157 | PlantCaduceus | tool | 2025 | Cross-species plant DNA language model for variant effect prediction. | Prioritize grape SV/SNP candidates from graph GWAS; not yet tested on Vitis. | [doi:10.1073/pnas.2421738122](https://doi.org/10.1073/pnas.2421738122) · [link](https://github.com/plantcad/plantcad) |
| V158 | AgroNT | tool | 2024 | Foundation DNA language model trained on edible plant genomes. | Plant-trained DNA language model; could score grape variant effects; not yet tested on Vitis. | [doi:10.1038/s42003-024-06465-2](https://doi.org/10.1038/s42003-024-06465-2) · [link](https://github.com/instadeepai/nucleotide-transformer) |
| V159 | Graph-node GWAS + eQTL fusion | idea | 2026 | Run node-level GWAS and SV-eQTL on the same graph to link trait, SV and expression. | Joins Grapepan GWAS and super-pangenome eQTL approaches. | [doi:10.1016/j.xplc.2026.101835](https://doi.org/10.1016/j.xplc.2026.101835) |
| V160 | Clone-level pangenome | idea | 2019 | Add both haplotypes of several clones of one cultivar to detect somatic SVs in the graph. | Grape is clonally propagated; somatic SVs shape clone traits. | [doi:10.1186/s12864-019-6211-2](https://doi.org/10.1186/s12864-019-6211-2) |
| V161 | Implicit-graph locus atlas | idea | 2025 | Pre-compute impg projections for all NLR and terpene synthase clusters. | Locus-centric browsing without whole-genome graph re-runs. | [link](https://github.com/pangenome/impg) |
| V162 | Personalized-graph scaffolding | idea | 2026 | Scaffold new grape assemblies from haplotypes sampled from the graph. | Saves Hi-C costs for breeding lines. [待确认] | [doi:10.64898/2026.03.17.712436](https://doi.org/10.64898/2026.03.17.712436) |

[Back to contents](#contents)

## Notes

- No sample data, genotypes or unpublished assemblies are in this catalog.
- Dosage is not a separate section: this repo has no copy-number or dosage method yet. Varigraph (section 5) can estimate allele dosage in polyploids and is listed as a genotyper.
- The Zenodo record for the *Vitis* super-pangenome (doi:10.5281/zenodo.13982444) is quoted from the paper; Zenodo refused the scripted link check.

