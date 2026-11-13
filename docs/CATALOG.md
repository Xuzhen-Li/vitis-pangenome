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

<a id="data-needs-details"></a>
## Data needed alongside the pangenome: scenario details

The summary table and cross-cutting pitfalls are on the [README](../README.md#data-needs); each README section also has a one-line **Needs:** note. Chinese version: [below](#data-needs-zh).

This text was written before the 2026-11-13 README update. Tools it calls "additions" or "proposed additions" are now listed on the README page.

### 1. Graph build only

**What it answers.** Inventory of haplotypes and sequence variation among assembled genomes, before genotyping any cohort.

**Minimum data.** Haplotype FASTAs. Prefer two phased haplotypes per heterozygous accession (hifiasm, Verkko, PhaseGrass). Give sequences PanSN names before PGGB or Minigraph-Cactus. For already-phased haplotypes (hifiasm hap1/hap2 or trio), first check false duplication with BUSCO Duplicated and Merqury k-mer copy spectra; run purge_dups only if haplotigs remain. Blindly purging phased haplotypes can cut real duplications and hemizygous segments, creating artificial sequence PAV or copy-number loss. purge_dups is for primary or collapsed assemblies that still contain haplotigs, not a required input for every phased haplotype set. Population short reads are not required to build the graph. Sequence-level PAV and openness curves (panacus, section 4a) can be computed from the graph alone.

**Recommended data.** HiFi reads for phasing; ultra-long ONT if the aim is T2T (Verkko). Add Hi-C or genetic/optical maps only if contigs must be ordered into the 19 *V. vinifera* chromosomes (or the *Muscadinia* karyotype). Published sizes in the catalog: Grapepan v1.0, 18 T2T haplotypes plus 11 public assemblies (doi:10.1038/s41588-024-01967-5); *Vitis* super-pangenome, 72 accessions (doi:10.1038/s41588-025-02111-7); NA *Vitis* super-pangenome, nine North American species (doi:10.1186/s13059-023-03133-2). The default PGGB `-p 85 -s 10k` follows that NA *Vitis* playbook and should then be retuned with Mash (`pipeline/03`).

**Sections and tools.** Section 1 (hifiasm, Verkko, purge_dups, RagTag, GreenHill, PhaseGrass; additions: Flye, NextDenovo, YaHS, HapHiC, ALLHiC, 3D-DNA, ALLMAPS). Section 2 (PGGB, Minigraph-Cactus, minigraph, PanSN-spec). Section 3 (Merqury, BUSCO, Inspector, odgi stats; requires the assembly reads when checking k-mers or base accuracy). Section 8 (odgi, GBZ/GBWT, GFA). Section 13 (nf-core/pangenome, cactus-pangenome, Pan1c). This repo: scripts 01–06, 12–13, 16.

**Pitfalls.** Unguided primary or collapsed assemblies can leave haplotigs that later look like copy-number variation or PAV; that is when to use purge_dups. Blindly purging already-phased hap1/hap2 or trio haplotypes can cut real duplications and hemizygous segments, creating false sequence PAV or copy loss. A reference-anchored MC/minigraph graph can miss divergent repeats. `N_HAPS=8` in `config/example.env` is only a software example, not a sample-size recommendation.

### 2. Population genotyping and SV-GWAS

**What it answers.** Which graph variants (SNPs, indels, SVs, node presence) a cohort carries, and which of those associate with traits.

**Minimum data.** (i) A graph containing the variant sites you want to genotype; (ii) cohort reads — short reads for PanGenie (which also needs an assembly-derived, phased, bubble-decomposed VCF, commonly Minigraph-Cactus + vcfbub, not a PGGB GFA) or short or long reads for Giraffe / GraphAligner / minigraph; (iii) for GWAS, phenotypes on the same identity-checked accessions, plus a way to account for relatedness and structure, keeping one representative per clone.

**Recommended data.** Grapepan v1.0: 29-haplotype graph, 466 accessions genotyped, 29 traits; SVs added heritability and QTLs (doi:10.1038/s41588-024-01967-5). A public diversity panel of 472 *Vitis* accessions is listed as a short-read resource (doi:10.1038/s41467-019-09135-8). Tomato is a close plant precedent for recovering missing heritability with graph SVs (32 genomes, 332 accessions; doi:10.1038/s41586-022-04808-9). k-mer GWAS (kmersGWAS, kGWASflow, PanKmer) can run from reads without a graph, though hits still need to be placed on haplotypes or the graph.

**Sections and tools.** Section 5: vg Giraffe, `vg call` (script 14), PanGenie (script 15), Varigraph, GraphAligner, haplotype sampling, PHG v2, GLIMPSE2; additions include Beagle 5, SHAPEIT5, BCFtools. Section 10(b): Grapepan SV-GWAS, NodeGWAS, kmersGWAS, kGWASflow, pyseer; additions: GEMMA, GCTA, PLINK 2, GAPIT 3, rMVP. Section 8 if using node or GBWT representations.

**Pitfalls.** In the default path, Giraffe + `vg call` and PanGenie do not discover alleles absent from the graph (`vg augment` can, but is not this repo's default). Low-coverage imputation (GLIMPSE2; PHGv2 software, method paper Bradbury et al. 2022 for PHG v1, doi:10.1093/bioinformatics/btac410) is limited to known panel sites; GLIMPSE2 does not impute graph SVs. Before association, check identity and deduplicate clones using the genotypes (KING or IBS); VIVC names are not enough. Merging public panels (for example 472 + Grapepan 466) requires uniform re-alignment and re-genotyping, followed by batch checks of missingness and heterozygosity. Relatedness in grape breeding material is high; mixed models are the usual association tools, not a naïve linear model.

### 3. eQTL and expression-PAV

**What it answers.** Which SVs, PAVs, or haplotypes change transcript abundance, including after treatments like downy-mildew infection.

**Minimum data.** Graph or graph genotypes, plus RNA-seq (or a pan-transcriptome) from the same genotype, with identity checked from the data. For clonally propagated cultivars, RNA-seq and DNA from different plants of the same cultivar are acceptable if tissue, developmental stage, and batch are included as covariates.

**Recommended data.** The *Vitis* super-pangenome combined SV genotypes from a 72-haplotype graph with SV-eQTL and DM-infection transcriptomes, reporting loci such as VvLHT8 (doi:10.1038/s41588-025-02111-7). rpvg quantifies transcripts on a spliced pangenome graph (doi:10.1038/s41592-022-01731-9); this is expression analysis, not the RNA-evidence step of gene-structure annotation. *Brassica napus* SV-eQTL (doi:10.1007/s00122-025-04867-2) and tomato SV–expression work (doi:10.1016/j.cell.2020.05.021) serve as design templates. The RNA-seq sample size in the *Vitis* super-pangenome paper is not stated in the catalog brief [待确认].

**Sections and tools.** Section 10(a) and 10(b): super-pangenome SV-eQTL, rpvg, barley and oat pan-transcriptome precedents, NodeGWAS; tensorQTL and coloc are additions to section 10. Section 5 for genotypes; section 7 if the unit of analysis is gene PAV.

**Pitfalls.** Genotypes and expression must come from the same genotype, not just accessions sharing a name. Mapping RNA-seq only to a linear reference introduces allele-specific expression (ASE) reference bias; a spliced or haplotype-aware graph (rpvg) avoids that. Do not pass these RNA-seq data into gene-structure-annotation as annotation evidence.

### 4. Gene PAV and family copy number

**What it answers.** Which genes or gene-family members are present, absent, or duplicated across haplotypes.

**Minimum data.** Haplotypes or a graph, plus gene models or proteins from gene-structure-annotation (GFF3, peptides). This catalog does not build gene models (Helixer and similar tools stay in that sister repository).

**Recommended data.** A consistent annotation projected across haplotypes (Liftoff / LiftOn / miniprot / pangene) or orthology clustering (OrthoFinder, Pandagma, SonicParanoid2). NLR copy-number work may borrow an NLR-Annotator locus list only to count presence and copies; gene models stay in gene-structure-annotation. Read-depth CNV callers (CNVnator, Hecaton; additions) need cohort short reads alongside a reference or graph. Hecaton's code URL was not found in the addition pass [待确认].

**Sections and tools.** Section 7 (OrthoFinder, pangene, Liftoff, LiftOn, PanTools, NLR-Annotator, Pan-NLRome). Section 6 if using synteny to confirm gene order (GENESPACE, JCVI, WGDI).

**Pitfalls.** Sequence-level openness (section 4a) is not gene PAV. Collapsed haplotigs and residual heterozygosity cause false copy-number calls. The README notes that this repository does not yet have a separate, checked dosage method; Varigraph is listed as a genotyper that can estimate polyploid allele dosage.

### 5. Ancestry and introgression

**What it answers.** Wild versus cultivated ancestry, hybrid parentage, and introgression from wild *Vitis* (for example *V. sylvestris* or *V. amurensis*) into cultivars or rootstocks.

**Minimum data.** Population genotypes (graph-based or linear) for the target sample set, after genotype identity checks and clone deduplication, plus at least one outgroup or known wild source. Dsuite and ABBA-BABA-style tests need an outgroup. tsinfer and SINGER need (or strongly expect) phased haplotypes; tsinfer also needs ancestral alleles.

**Recommended data.** Include wild *Vitis* and, for a Vitaceae super-pangenome, *Muscadinia*. In cross-genus graphs or synteny, map both *Muscadinia* chr7 and chr20 to *Vitis* chr7 (Cochetel et al. 2021, doi:10.1093/g3journal/jkab033, interpret this as a fusion in the *Vitis* lineage); do not pair chromosomes one-to-one by number, and do not refer to a *Vitis* chromosome 20. The *Vitis* super-pangenome used haplotype-aware phylogenomics to resolve hybridization (doi:10.1038/s41588-025-02111-7). NA *Vitis* is the wild/rootstock graph precedent (doi:10.1186/s13059-023-03133-2). Dual domestication of grapevine provides a 3,525-accession population framework (doi:10.1126/science.add8655). Additions to section 11 (ADMIXTURE, TreeMix, ADMIXTOOLS 2, IQ-TREE 2) use the same genotype and outgroup inputs.

**Sections and tools.** Section 11: Dsuite, Twisst, SINGER, tsinfer, ARG-Needle, Mashtree, NA *Vitis* introgression, haplotype-aware phylogenomics. Section 5 for genotypes; section 12 for public wild and *Muscadinia* assemblies.

**Pitfalls.** Dsuite tests allele-sharing asymmetry (D and fdM); it only flags candidate introgressed regions and cannot separate introgression from selection, because selection and linked hitchhiking can also shift window f-statistics. Compare Dsuite flags with scan signals; it is not a genealogy / ARG method (already noted on the homepage). Clonal duplicates look like extra members of an ancestry cluster unless genotypes are identity-checked and reduced to one representative per clone. Unphased or unpolarised data fit tsinfer poorly; *Muscadinia* alone is a distant outgroup, so prefer multiple outgroups or probabilistic polarisation and report the share of unpolarised sites. Treating each diploid cultivar as a single tip hides hybrid ancestry that split haplotypes can show.

### 6. Domestication and selection scans

**What it answers.** Which variants, including SVs and hemizygous regions, changed in frequency between wild and cultivated grape, or show haplotype-level selection signals.

**Minimum data.** The same type of population genotypes as in scenario 5, after genotype identity checks and clone deduplication, with enough wild and cultivated samples to compare. tsinfer, iHS, and site-frequency-spectrum scans need ancestral alleles. Prefer multiple outgroups or probabilistic polarisation over *Muscadinia* alone, and report the share of unpolarised sites. Haplotype-based scans (iHS, XP-EHH; selscan is an addition) also require phased data.

**Recommended data.** Place graph SVs onto the 3,525-accession domestication framework (doi:10.1126/science.add8655) rather than defining a new population split. Compare graph SVs with Zhou et al. 2019 (doi:10.1038/s41477-019-0507-8). RAiSD, SMC++, and selscan are proposed additions, not yet on the 252-entry homepage.

**Sections and tools.** Section 11 (domestication and clone papers, SINGER/tsinfer for local trees, Dsuite to flag candidate introgressed regions and compare with scan signals). Section 4 if targeting SVs. Section 10 if following a scan with trait association.

**Pitfalls.** Clonal propagation and shared pedigree create long haplotypes that can look like sweeps; identity-check and deduplicate clones from the genotypes before scanning (VIVC names are not enough). Dsuite cannot tell introgression from selection; use it only to flag candidate introgressed regions, then compare with scan signals. Selection in a cultivated clone is not the same process as selection in a sexually reproducing wild population. Hemizygous deletions can be mistaken for selective "loss" if copy number is ignored.

### 7. Somatic and clonal variation

**What it answers.** Which SNVs, SVs, TE insertions, tandem repeats, or methylation changes distinguish clones of a single cultivar (for example Pinot or Chardonnay).

**Minimum data.** Several clones of the *same* cultivar, each with deep short or long reads, or with both haplotypes assembled. Start from a cultivar-level graph, or a linear reference plus long-read SV callers (Sniffles2, cuteSV). A full clone-level pangenome (both haplotypes of several clones in one graph) remains a section 14 idea (doi:10.1186/s12864-019-6211-2).

**Recommended data.** Follow the published clone-diversification (doi:10.1186/s12864-019-6211-2) and clonal genome-methylome (doi:10.1186/s13059-026-04184-x) designs. The clonal diversity review (doi:10.1007/s00122-025-04986-w) covers breeding applications. Using TRGT for tandem-repeat length among clones is a proposed addition to section 14. No depth number is given here because we did not re-check those papers for a coverage figure [待确认].

**Sections and tools.** Section 4 (Sniffles2 mosaic mode, cuteSV, GraffiTE). Section 5 (long-read graph mapping). Section 11 (clone diversification; clonal diversity review). Section 10(a) if methylation is part of the clone signature. Section 14 (clone-level pangenome; TRGT idea).

**Pitfalls.** The opposite of the population-genetics pitfall: here you *want* multiple clones of one cultivar, though you must still record VIVC identity and avoid mixing different cultivars under one name. Inherited heterozygosity is not a somatic variant. Shallow reads will miss mosaic SVs. Grapevine cultivars can be periclinal chimeras, where the L1 (epidermal) and L2 cell layers carry different genotypes; Pinot Meunier, a Pinot sport whose L1 carries a dominant *VvGAI1* mutation, is the classic case (Franks et al. 2002, doi:10.1007/s001220100683; Boss & Thomas 2002, doi:10.1038/416847a). Bulk tissue DNA mixes the layers, diluting a layer-specific variant below the 0.5 allele fraction expected for a heterozygote; it can be missed or filtered out as noise, and detection depends on which tissue was sampled. Record the tissue for every sample, do not automatically treat low-allele-fraction calls as errors, and do not assume one clone's assembly or seedlings represent all of its cell layers. No numeric detection threshold is given here.

### 8. Methylation and epigenetic SV

**What it answers.** Methylation state of reference and non-reference sequences, including TEs and SVs, ideally resolved by haplotype.

**Minimum data.** The graph (or phased assemblies) plus either native modified-base calls from ONT or PacBio (5mC; modkit, the official ONT software, extracts these from ONT BAMs carrying MM/ML tags) or bisulfite sequencing for methylGrapher (doi:10.1093/nar/gkaf028). For native calls, ONT requires keeping pod5/fast5 files or basecalling with a modified-base model to retain MM/ML tags, and HiFi requires keeping kinetics. panmethyl maps long-read methylation to a GFA graph (catalog note: no paper checked) [待确认].

**Recommended data.** Phased, haplotype-resolved methylation. Direct *Vitis* precedent: allele-specific methylation in a grape trio on a phased graph (doi:10.1186/s13059-025-03858-2). The clonal genome-methylome map links somatic SVs and methylation across clones (doi:10.1186/s13059-026-04184-x). ONT reads used for assembly can supply 5mC only if pod5/fast5 files were kept, or if the reads were basecalled with a modified-base model and carry MM/ML tags; HiFi requires keeping kinetics. Otherwise those reads carry no methylation data. GraffiTE v1.1 adds methylation on TE insertions (preprint).

**Sections and tools.** Section 10(a): methylGrapher, panmethyl, modkit, Graph Peak Caller (ChIP-seq peaks on graphs, not methylation), and the two *Vitis* epigenome analyses. Section 4 for TE insertions. Section 1 for the underlying haplotypes.

**Pitfalls.** Bisulfite and native long-read methylation are not interchangeable without a conversion check. Unphased methylation on a linear reference brings back reference bias at SVs. Assembly ONT or HiFi reads do not yield 5mC unless the raw files or tags described above were kept. modkit is official ONT software and has no paper. panmethyl has no paper checked in the catalog [待确认].

### 9. 3D / Hi-C

**What it answers.** In this catalog, almost always: ordering and phasing haplotype contigs into chromosomes before building the graph. This catalog has no method for calling chromatin contacts (loops or TADs) on the graph.

**Minimum data.** Contig assemblies plus Hi-C reads, or, if Hi-C is unavailable, genetic or optical maps (ALLMAPS, addition).

**Recommended data.** Hi-C for each haplotype, or Hi-C-aware phasing (hifiasm Hi-C mode, GreenHill) in highly heterozygous cultivars. Manual curation in Juicebox with 3D-DNA is a common step (addition). NOHIC and "personalized-graph scaffolding" propose scaffolding from the graph instead of Hi-C; both remain [待确认].

**Sections and tools.** Section 1: GreenHill, RagTag; additions YaHS, HapHiC, ALLHiC, 3D-DNA, ALLMAPS. Section 9 for visual checks. Graph Peak Caller is for ChIP-seq, not Hi-C.

**Pitfalls.** This catalog has no method for calling chromatin contacts on a *Vitis* pangenome graph. Unphased diploid Hi-C can mix the two haplotypes. If *Muscadinia* is included, map both its chr7 and chr20 to *Vitis* chr7 (Cochetel et al. 2021, doi:10.1093/g3journal/jkab033, interpret this as a fusion in the *Vitis* lineage); do not pair chromosomes one-to-one by number, and do not refer to a *Vitis* chromosome 20.

### 10. Pedigree and recombination

**What it answers.** Parentage, identity-by-descent, recombination breakpoints, and local trees along the chromosome.

**Minimum data.** Genotypes for parents and offspring, or for another pedigree of known structure. Check identity from the genotypes; use official pedigrees and synonym lists (VIVC) only to interpret names and recorded parentage.

**Recommended data.** Trios aid assembly phasing (hifiasm trio mode) and read-based phasing (WhatsHap, addition). Published genetic maps can confirm or correct chromosome order (ALLMAPS). tsinfer builds tree sequences from phased data and also requires ancestral alleles (doi:10.1038/s41588-019-0483-y); SINGER samples ARGs. GIBD detects IBD in a GBWT and annotates shared SVs (preprint doi:10.64898/2026.11.05.764670).

**Sections and tools.** Section 5 (WhatsHap, SHAPEIT5, GLIMPSE2 — the last only for known SNP/small-indel sites). Section 8 (GIBD). Section 11 (tsinfer, SINGER). Section 1 (trio / PhaseGrass). Section 12 (VIVC).

**Pitfalls.** Many published grape pedigrees have errors or missing parents; VIVC and genotype data can disagree, so check identity from the genotypes. Clonal propagation means "siblings" may actually be the same clone. Unphased or unpolarised genotypes fit tsinfer poorly; prefer multiple outgroups or probabilistic polarisation and report the share of unpolarised sites.

### 11. TE insertion polymorphism

**What it answers.** Which TE insertions vary among haplotypes or in a resequenced cohort, including insertions that affect traits (Gret1 at VvMybA1 and berry colour; doi:10.1126/science.1095011).

**Minimum data.** A graph or assemblies / long reads, **and** a curated TE library. The library is built and maintained in vitis-te, not in this repository. GraffiTE can then build a TE-insertion graph and genotype it (doi:10.1101/2023.09.11.557209). Short-read TE callers (McClintock 2, TEMP2; additions) also require that library.

**Recommended data.** Haplotype assemblies or long reads per accession, not just short reads, to resolve breakpoints. Add methylation on those insertions if testing for silencing (GraffiTE v1.1 preprint). A known-locus graph around VvMybA1 is a section 14 idea for a phenotype with a clear SV cause.

**Sections and tools.** Section 4 (GraffiTE and related TE-insertion notes). Section 5 to genotype known insertions in a cohort. Section 14 (berry-colour locus graph). Not section 7 gene annotation, and not the soft-masking step of structural annotation.

**Pitfalls.** A generic RepeatMasker library cannot replace the curated *Vitis* library in vitis-te. Calling polymorphic insertions is not the same as annotating TEs on a single reference. Short-read-only calls are less reliable in grape repeats.

### 12. Ancient DNA mapping

**What it answers.** Whether archaeological or herbarium grape samples carry known haplotypes or SV alleles, with less reference bias than mapping only to PN40024.

**Minimum data.** A graph of known haplotypes, plus the short, damaged reads. Standard modern WGS pipelines do not apply directly (due to damage, short fragments, contamination, and very low coverage).

**Recommended data.** COSIGT genotypes complex loci by matching coverage vectors to graph haplotypes and is reported to work from 1–2× coverage (doi:10.1186/s13059-026-04242-4). Applying it to ancient grape seeds is a section 14 idea and has not yet been tried on *Vitis*. Mapping degraded DNA to a variation graph is a proposed addition; the cited evidence is a human aDNA study (doi:10.1186/s13059-020-02160-7), not a grape result.

**Sections and tools.** Section 5 (COSIGT). Section 14 (COSIGT on ancient grape seeds; graph mapping for degraded DNA, addition).

**Pitfalls.** Do not treat low-coverage aDNA like a modern resequencing panel. Contamination and species identification need separate controls. This does not replace dated archaeobotanical analysis.

### 13. Breeding and marker design

**What it answers.** How to use graph haplotypes and SVs in genomic prediction, marker assays for known loci, or (as an idea) variant-aware guide-RNA checks.

**Minimum data.** Graph genotypes for a breeding or germplasm panel, phenotypes for the target traits, and — when a functional SV is already known — the local haplotypes at that locus.

**Recommended data.** Grapepan v1.0 is the direct *Vitis* precedent showing that SVs can add heritability and QTLs (doi:10.1038/s41588-024-01967-5). PHGv2 software ([maize-genetics/phg_v2](https://github.com/maize-genetics/phg_v2); record version or commit and access date; checked 2026-11-13) imputes known panel haplotypes into low-coverage breeding samples. The method paper is Bradbury et al. 2022, *Bioinformatics* 38(15):3698–3702, doi:10.1093/bioinformatics/btac410, which describes PHG v1; no separate v2 DOI was found. Rice SV-versus-SNP genomic selection found SVs alone roughly comparable to SNPs (doi:10.1016/j.cj.2025.08.005); the catalog warns to test this before claiming a gain in grape. Cucumber (preprint) and gene-bank PAV prediction papers serve as additional templates. Confirm identity from the genotypes first (KING or IBS, keeping one representative per clone in a prediction panel); use VIVC for names and pedigree interpretation, not as a substitute for that check. A berry-colour locus graph is a concrete marker-design test. CRISPRme-style off-target search on graph haplotypes is a section 14 idea, built for human data and untested in plants.

**Sections and tools.** Section 10(b) (Grapepan SV-GWAS, genomic-prediction papers, GAPIT 3 and GCTA as additions). Section 5 (PHGv2 software, method paper Bradbury et al. 2022 for PHG v1; GLIMPSE2 with the SNP/indel limit). Section 12 (VIVC, public graphs). Section 14 (berry-colour locus; CRISPRme idea).

**Pitfalls.** Markers designed only on PN40024 will miss or mis-target non-reference haplotypes. Imputation into skim-sequenced breeding lines is limited to sites already in the panel, and GLIMPSE2 does not impute novel graph SVs. Clonal identity errors will also break prediction; deduplicate from genotypes before fitting a model, and do not merge public panels without uniform re-alignment, re-genotyping, and batch checks of missingness and heterozygosity.

### Items still marked [待确认]

These remain open:

1. No generic WGS-depth recommendation is given for Giraffe, `vg call`, PanGenie, or clone SV calling; tool papers were not re-checked for coverage numbers in this draft.
2. RNA-seq sample size in the *Vitis* super-pangenome SV-eQTL study is not stated in the catalog brief.
6. Hecaton (addition, section 7): code URL not found in the addition pass.
8. panmethyl: catalog notes that no paper was checked.
9. NOHIC and personalized-graph scaffolding: already [待确认] in the catalog.
10. Whether a later pass should quote a depth figure from the Giraffe or PanGenie papers remains open.

The following are written as limiting statements in this v2 and are no longer marked [待确认]: calling chromatin contacts (loops / TADs) on a *Vitis* pangenome graph is not a method in this catalog; using COSIGT on ancient grape seeds has not yet been tried on *Vitis*; graph mapping of degraded DNA is a proposed addition and the cited evidence is a human aDNA study, not a grape result; Beagle 5 and SHAPEIT5 take biallelic VCF sites only, and graph SVs can be written to such a VCF after splitting to biallelic sites and removing nesting (vcfbub / vcfwave), with accuracy in grapevine untested; modkit is official ONT software and has no paper.


<a id="data-needs-zh"></a>
## 中文：泛基因组还需要搭配什么数据（各情景说明）

总表和共通易错点在 [README.zh.md](../README.zh.md#data-needs)；README 每节开头也有一行「需要：」。

本文写于 2026-11-13 README 更新之前。文中称为「扩充」或「拟扩充」的工具现已列在 README 页面上。

### 1. 只建图谱

**回答的问题。** 在对任何群体分型前，盘点已组装基因组间的单倍型和序列变异。

**最低数据。** 单倍型 FASTA。杂合材料优先用两套分相单倍型（hifiasm、Verkko、PhaseGrass）。跑 PGGB 或 Minigraph-Cactus 前按 PanSN 命名序列。对已经分相的单倍型（hifiasm hap1/hap2 或 trio），先用 BUSCO Duplicated 和 Merqury k-mer 拷贝谱检查假重复，只在确有 haplotig 残留时才跑 purge_dups。对分相单倍型盲目去冗余，会切掉真实重复和半合子区段，产生人为的序列 PAV 或拷贝数丢失。purge_dups 用于仍含 haplotig 的 primary 或塌缩组装，不是每套分相单倍型的必需输入。建图不需要群体短读长。序列级 PAV 和开放度曲线（panacus，第 4a 节）可仅从图谱计算。

**建议数据。** 用 HiFi 读长分相；若目标是 T2T 则加超长 ONT（Verkko）。只有必须把 contig 排到欧亚种 19 条染色体（或圆叶葡萄核型）上时，才加 Hi-C 或遗传/光学图。目录已收录的发表规模：Grapepan v1.0，18 条 T2T 单倍型加 11 条公开组装（doi:10.1038/s41588-024-01967-5）；葡萄属超泛基因组，72 份材料（doi:10.1038/s41588-025-02111-7）；北美葡萄属超泛基因组，9 个北美物种（doi:10.1186/s13059-023-03133-2）。默认的 PGGB `-p 85 -s 10k` 沿用该北美葡萄属流程，随后需用 Mash 重新调参（`pipeline/03`）。

**章节和工具。** 第 1 节（hifiasm、Verkko、purge_dups、RagTag、GreenHill、PhaseGrass；扩充：Flye、NextDenovo、YaHS、HapHiC、ALLHiC、3D-DNA、ALLMAPS）。第 2 节（PGGB、Minigraph-Cactus、minigraph、PanSN-spec）。第 3 节（Merqury、BUSCO、Inspector、odgi stats；核对 k-mer 或碱基准确度时需要组装所用的读长）。第 8 节（odgi、GBZ/GBWT、GFA）。第 13 节（nf-core/pangenome、cactus-pangenome、Pan1c）。本仓库脚本：01–06、12–13、16。

**易错点。** 未经引导的 primary 或塌缩组装会残留 haplotig，在下游看似拷贝数变异或 PAV，这才是使用 purge_dups 的场景。对已分相的 hap1/hap2 或 trio 单倍型盲目去冗余，会切掉真实重复和半合子区段，制造假序列 PAV 或拷贝丢失。参考锚定的 MC/minigraph 图可能漏掉高分歧重复。`config/example.env` 中的 `N_HAPS=8` 只是软件示例，不是样本量建议。

### 2. 群体分型与 SV-GWAS

**回答的问题。** 群体携带哪些图变异（SNP、indel、SV、节点有无），其中哪些与性状关联。

**最低数据。** （i）包含目标分型位点的图谱；（ii）群体读长——PanGenie 用短读长（还需从组装导出、已分相并拆成 bubble 的 VCF，通常为 Minigraph-Cactus 加 vcfbub，而非 PGGB GFA），Giraffe / GraphAligner / minigraph 可用短读长或长读长；（iii）做 GWAS 时，需同一批已核对基因型身份的材料的表型，并控制亲缘关系和群体结构，每个克隆保留一份代表。

**建议数据。** Grapepan v1.0：29 条单倍型的图，466 份材料分型，29 个性状；SV 提升了遗传力和 QTL 检出（doi:10.1038/s41588-024-01967-5）。另有 472 份葡萄属多样性群体列作短读长资源（doi:10.1038/s41467-019-09135-8）。番茄是用图 SV 找回缺失遗传力的近缘植物先例（32 个基因组，332 份材料；doi:10.1038/s41586-022-04808-9）。k-mer GWAS（kmersGWAS、kGWASflow、PanKmer）可不依赖图谱直接从读长运行，但显著位点事后仍需定位回单倍型或图上。

**章节和工具。** 第 5 节：vg Giraffe、`vg call`（脚本 14）、PanGenie（脚本 15）、Varigraph、GraphAligner、单倍型抽样、PHG v2、GLIMPSE2；扩充含 Beagle 5、SHAPEIT5、BCFtools。第 10(b) 节：Grapepan SV-GWAS、NodeGWAS、kmersGWAS、kGWASflow、pyseer；扩充：GEMMA、GCTA、PLINK 2、GAPIT 3、rMVP。若使用节点或 GBWT 表示，还涉及第 8 节。

**易错点。** 默认流程下，Giraffe + `vg call` 和 PanGenie 不检出图中缺失的等位基因（`vg augment` 可以，但非本仓库默认流程）。低深度填充（GLIMPSE2；软件 PHGv2，方法论文为 Bradbury 等 2022 的 PHG v1，doi:10.1093/bioinformatics/btac410）仅限面板已知位点；GLIMPSE2 不填充图 SV。关联分析前须用基因型核对身份并按克隆去重（KING 或 IBS），单靠 VIVC 名称不够。合并公开面板（如 472 份加 Grapepan 466 份）需统一重新比对和分型，再按批次检查缺失率和杂合率。葡萄育种材料亲缘度高，通常使用混合模型，而非简单线性模型。

### 3. eQTL 与表达-PAV

**回答的问题。** 哪些 SV、PAV 或单倍型改变转录本丰度，包括霜霉菌接种等处理后的变化。

**最低数据。** 图谱或图基因型，加上同一基因型的 RNA-seq（或泛转录组），且样本身份须由数据核对。对无性繁殖品种，若将组织、发育时期和批次作为协变量，RNA-seq 和 DNA 取自同一品种的不同植株是可以接受的。

**建议数据。** 葡萄属超泛基因组将 72 条单倍型图的 SV 基因型与 SV-eQTL 及霜霉菌感染转录组结合，报道了 VvLHT8 等位点（doi:10.1038/s41588-025-02111-7）。rpvg 在剪接泛基因组图上定量转录本（doi:10.1038/s41592-022-01731-9）；这属于表达分析，不是基因结构注释中的 RNA 证据步骤。甘蓝型油菜 SV-eQTL（doi:10.1007/s00122-025-04867-2）和番茄 SV–表达研究（doi:10.1016/j.cell.2020.05.021）可作设计模板。葡萄属超泛基因组论文的 RNA-seq 样本量在目录摘要中未写 [待确认]。

**章节和工具。** 第 10(a) 和 10(b) 节：超泛基因组 SV-eQTL、rpvg、大麦和燕麦泛转录组先例、NodeGWAS；tensorQTL 和 coloc 为第 10 节扩充。基因型用第 5 节；若以基因 PAV 为分析单元则用第 7 节。

**易错点。** 基因型和表达数据必须来自同一基因型，不能仅靠品种同名。只把 RNA-seq 比对到线性参考会引入等位基因特异表达（ASE）参考偏倚；剪接图或感知单倍型的图（rpvg）可避免该问题。不要把这类 RNA-seq 数据当作注释证据输入 gene-structure-annotation。

### 4. 基因有无与家族拷贝数

**回答的问题。** 哪些基因或基因家族成员在不同单倍型间存在、缺失或发生重复。

**最低数据。** 单倍型或图谱，加上来自 gene-structure-annotation 的基因模型或蛋白（GFF3、蛋白序列）。本目录不生产基因模型（Helixer 等工具留在那个兄弟仓库）。

**建议数据。** 跨单倍型投射一致的注释（Liftoff / LiftOn / miniprot / pangene）或做直系同源聚类（OrthoFinder、Pandagma、SonicParanoid2）。NLR 拷贝数分析可仅借用 NLR-Annotator 位点列表来统计有无和拷贝数；基因模型仍留在 gene-structure-annotation。基于测序深度的 CNV 检测工具（CNVnator、Hecaton；扩充）除参考或图谱外，还需要群体短读长。Hecaton 的代码地址在扩充整理时未查到 [待确认]。

**章节和工具。** 第 7 节（OrthoFinder、pangene、Liftoff、LiftOn、PanTools、NLR-Annotator、Pan-NLRome）。若用共线性确认基因顺序则用第 6 节（GENESPACE、JCVI、WGDI）。

**易错点。** 序列层面的开放度（第 4a 节）不是基因 PAV。塌缩的 haplotig 和残留杂合会导致假拷贝数检出。README 注明本仓库目前还没有单独、已核对的剂量方法；Varigraph 列为可估计多倍体等位基因剂量的分型工具。

### 5. 祖先成分与渗入

**回答的问题。** 野生与栽培祖先成分、杂交亲本来源，以及野生葡萄属（如森林葡萄或山葡萄）向栽培品种或砧木的基因渗入。

**最低数据。** 目标样本集的群体基因型（基于图或线性参考），完成基因型身份核对和按克隆去重，加上至少一个外类群或已知野生源。Dsuite 和 ABBA-BABA 类检验需要外类群。tsinfer 和 SINGER 需要（或强烈要求）分相单倍型；tsinfer 还需要祖先等位基因。

**建议数据。** 纳入野生葡萄属；若构建葡萄科超泛基因组，还需纳入圆叶葡萄属。跨属构图或共线性时，将圆叶葡萄的 chr7 和 chr20 同时映射到葡萄属 chr7（Cochetel 等，2021，doi:10.1093/g3journal/jkab033，将其解释为葡萄属谱系中的融合）；不要按编号一对一配对，也不要提「葡萄属 chr20」。葡萄属超泛基因组使用单倍型系统发育解析杂交（doi:10.1038/s41588-025-02111-7）。北美葡萄属是野生/砧木图的先例（doi:10.1186/s13059-023-03133-2）。葡萄双重驯化研究提供了 3,525 份材料的群体框架（doi:10.1126/science.add8655）。第 11 节的扩充工具（ADMIXTURE、TreeMix、ADMIXTOOLS 2、IQ-TREE 2）使用相同的基因型和外类群输入。

**章节和工具。** 第 11 节：Dsuite、Twisst、SINGER、tsinfer、ARG-Needle、Mashtree、北美葡萄属渗入、单倍型系统发育。基因型用第 5 节；公开野生种和圆叶葡萄组装见第 12 节。

**易错点。** Dsuite 检验等位基因共享不对称性（D 和 fdM）；它只标出候选渗入区段，不能区分渗入与选择，因为选择和连锁搭车同样会改变窗口 f 统计量。应将 Dsuite 标记区段与选择扫描信号对照；它不是谱系 / ARG 方法（首页已注明）。若不先做基因型身份核对并按克隆只留一份代表，无性系重复会像某个祖先簇里多出的成员。未分相或未极化的数据不太适合输入 tsinfer；单用圆叶葡萄做外类群太远，尽量用多个外类群或概率极化，并报告未极化位点的比例。把每个二倍体品种当成树上的单个末端，会掩盖拆分单倍型后才能看到的杂交起源。

### 6. 驯化与选择扫描

**回答的问题。** 哪些变异（含 SV 和半合子区段）在野生与栽培葡萄间发生频率变化，或呈现单倍型水平的选择信号。

**最低数据。** 与情景 5 相同的群体基因型，完成基因型身份核对和按克隆去重，且有足够数量的野生和栽培样本供比较。tsinfer、iHS 和位点频率谱扫描需要祖先等位基因。尽量使用多个外类群或概率极化，不要单靠圆叶葡萄，并报告未极化位点的比例。基于单倍型的扫描（iHS、XP-EHH；selscan 为扩充）还需要分相数据。

**建议数据。** 把图 SV 放进 3,525 份材料的驯化框架（doi:10.1126/science.add8655），不要重新定义群体划分。将图 SV 与 Zhou 等 2019（doi:10.1038/s41477-019-0507-8）对照。RAiSD、SMC++ 和 selscan 是拟扩充工具，尚未收入 252 条的首页。

**章节和工具。** 第 11 节（驯化与克隆论文，SINGER/tsinfer 构建局部树，Dsuite 标出候选渗入区段并与扫描信号对照）。若以 SV 为目标则用第 4 节。若扫描后接性状关联则用第 10 节。

**易错点。** 无性繁殖和系谱共享会产生长单倍型，容易看似选择清除；扫描前必须根据基因型核对身份并按克隆去重（单靠 VIVC 名称不够）。Dsuite 无法区分渗入与选择；只用它标出候选渗入区段，再与扫描信号对照。栽培克隆中的选择与有性繁殖野生群体中的选择不是同一过程。若忽略拷贝数，半合子缺失也可能被当成选择导致的「丢失」。

### 7. 体细胞与无性系变异

**回答的问题。** 哪些 SNV、SV、TE 插入、串联重复或甲基化变化区分同一品种的不同克隆（如黑皮诺或霞多丽的不同无性系）。

**最低数据。** *同一*品种的多个克隆，每份有深度短读长或长读长，或组装出两套单倍型。以品种级图谱，或线性参考加长读长 SV 检测工具（Sniffles2、cuteSV）为起点。完整的克隆级泛基因组（将多个克隆的两套单倍型放入同一张图）仍是第 14 节的设想（doi:10.1186/s12864-019-6211-2）。

**建议数据。** 沿用已发表的克隆分化（doi:10.1186/s12864-019-6211-2）和克隆基因组-甲基化组（doi:10.1186/s13059-026-04184-x）设计。克隆多样性综述（doi:10.1007/s00122-025-04986-w）梳理了育种应用。用 TRGT 分析克隆间串联重复长度是第 14 节的拟扩充设想。由于本稿未重新核对原论文的覆盖度数值，此处不给测序深度 [待确认]。

**章节和工具。** 第 4 节（Sniffles2 mosaic 模式、cuteSV、GraffiTE）。第 5 节（长读长图比对）。第 11 节（克隆分化；克隆多样性综述）。若克隆特征包含甲基化则用第 10(a) 节。第 14 节（克隆级泛基因组；TRGT 设想）。

**易错点。** 与群体遗传的易错点正好相反：这里*需要*同一品种的多个克隆，但仍须记录 VIVC 身份，避免把同名异种混在一起。遗传杂合不是体细胞变异。浅层测序会漏掉嵌合 SV。葡萄品种可能是周缘嵌合体，其 L1（表皮）和 L2 细胞层携带不同基因型；莫尼耶皮诺（Pinot Meunier）是黑皮诺的芽变，其 L1 层携带显性 *VvGAI1* 突变，是经典案例（Franks 等，2002，doi:10.1007/s001220100683；Boss & Thomas，2002，doi:10.1038/416847a）。混合组织提取的 DNA 会混入不同细胞层，局限于单一层的变异其等位基因频率会被稀释到杂合子预期的 0.5 以下，可能漏检或被当作噪音滤掉，且检出结果取决于取样组织。每份样本都应记录取样组织，不要默认把低等位基因频率位点当成错误，也不要假定某个克隆的组装或实生苗能代表其全部细胞层。此处不给数值检出阈值。

### 8. 甲基化与表观 SV

**回答的问题。** 参考与非参考序列（含 TE 和 SV）的甲基化状态，通常精细到单倍型水平。

**最低数据。** 图谱（或分相组装），加上 ONT 或 PacBio 的天然修饰碱基检出（5mC；ONT 官方软件 modkit 可从带 MM/ML 标签的 ONT BAM 中提取），或用于 methylGrapher 的亚硫酸氢盐测序数据（doi:10.1093/nar/gkaf028）。使用天然修饰检出时，ONT 需保留 pod5/fast5 文件或用修饰碱基模型完成 basecalling 以保留 MM/ML 标签，HiFi 需保留动力学（kinetics）数据。panmethyl 将长读长甲基化比对到 GFA 图（目录注明：未核对论文）[待确认]。

**建议数据。** 分相、单倍型分辨的甲基化数据。葡萄属直接先例：在分相图上分析葡萄 trio 的等位基因特异甲基化（doi:10.1186/s13059-025-03858-2）。克隆基因组-甲基化组图谱将跨克隆的体细胞 SV 与甲基化关联起来（doi:10.1186/s13059-026-04184-x）。组装所用的 ONT 数据，只有在保留了 pod5/fast5 文件，或用修饰碱基模型 basecalling 并带有 MM/ML 标签时，才能提供 5mC；HiFi 则需保留 kinetics。否则这些读长不含甲基化信息。GraffiTE v1.1 在 TE 插入上加入了甲基化分析（预印本）。

**章节和工具。** 第 10(a) 节：methylGrapher、panmethyl、modkit、Graph Peak Caller（图上的 ChIP-seq 峰，非甲基化），以及两项葡萄表观基因组研究。TE 插入用第 4 节。底层单倍型用第 1 节。

**易错点。** 未经转化率核对，亚硫酸氢盐测序和天然长读长甲基化数据不能直接互换。在线性参考上分析未分相的甲基化，会在 SV 处重新引入参考偏倚。若未保留上述原始文件或标签，组装用的 ONT 或 HiFi 读长无法提取 5mC。modkit 是 ONT 官方软件，无对应论文。panmethyl 在目录中未核对论文 [待确认]。

### 9. 三维 / Hi-C

**回答的问题。** 在本目录中，几乎全部用于：建图前将单倍型 contig 排序并分相挂载到染色体上。本目录没有在图上检测染色质互作（loop 或 TAD）的方法。

**最低数据。** contig 组装加 Hi-C 读长；若无 Hi-C，则用遗传图或光学图（ALLMAPS，扩充）。

**建议数据。** 每套单倍型配有 Hi-C，或在高杂合品种中使用结合 Hi-C 的分相（hifiasm Hi-C 模式、GreenHill）。配合 3D-DNA 在 Juicebox 中人工纠错是常用步骤（扩充）。NOHIC 和「个性化图挂载」设想用图谱替代 Hi-C 进行挂载；两者仍标为 [待确认]。

**章节和工具。** 第 1 节：GreenHill、RagTag；扩充含 YaHS、HapHiC、ALLHiC、3D-DNA、ALLMAPS。可视化检查用第 9 节。Graph Peak Caller 用于 ChIP-seq，非 Hi-C。

**易错点。** 本目录没有在葡萄属泛基因组图上调用染色质互作的方法。未分相二倍体的 Hi-C 会把两套单倍型混在一起。若纳入圆叶葡萄，须把它的 chr7 和 chr20 同时映射到葡萄属 chr7（Cochetel 等，2021，doi:10.1093/g3journal/jkab033，解释为葡萄属谱系中的融合）；不要按编号一对一配对，也不要提「葡萄属 20 号染色体」。

### 10. 系谱与重组

**回答的问题。** 亲子关系、同源片段（IBD）、重组断点，以及沿染色体的局部谱系树。

**最低数据。** 亲本与子代的基因型，或其他已知结构系谱的基因型。从基因型核对样本身份；官方系谱和同义名列表（VIVC）仅用于解释名称和记录的亲本关系。

**建议数据。** Trio 数据有助于组装分相（hifiasm trio 模式）和基于读长的分相（WhatsHap，扩充）。已发表的遗传图可用于确认或校正染色体顺序（ALLMAPS）。tsinfer 从分相数据构建树序列，且需要祖先等位基因（doi:10.1038/s41588-019-0483-y）；SINGER 对 ARG 进行抽样。GIBD 在 GBWT 中检测 IBD 并注释共享 SV（预印本 doi:10.64898/2026.11.05.764670）。

**章节和工具。** 第 5 节（WhatsHap、SHAPEIT5、GLIMPSE2——最后一个仅限已知 SNP/小 indel 位点）。第 8 节（GIBD）。第 11 节（tsinfer、SINGER）。第 1 节（trio / PhaseGrass）。第 12 节（VIVC）。

**易错点。** 许多已发表的葡萄系谱存在错误或亲本缺失；VIVC 记录可能与基因型数据冲突，因此必须用基因型核对身份。无性繁殖意味着所谓的「全同胞」实际上可能是同一个克隆。未分相或未极化的基因型不适合输入 tsinfer；尽量使用多个外类群或概率极化，并报告未极化位点的比例。

### 11. TE 插入多态

**回答的问题。** 哪些 TE 插入在单倍型间或重测序群体中存在多态，包括影响性状的插入（VvMybA1 位点的 Gret1 与果皮颜色；doi:10.1126/science.1095011）。

**最低数据。** 图谱或组装 / 长读长，**以及**整理好的 TE 库。TE 库在 vitis-te 中构建和维护，不在本仓库。随后 GraffiTE 可构建 TE 插入图并分型（doi:10.1101/2023.09.11.557209）。短读长 TE 检测工具（McClintock 2、TEMP2；扩充）同样需要该库。

**建议数据。** 每份材料配有单倍型组装或长读长（而非只有短读长），以解析断点。若关注沉默机制，可加上这些插入位点的甲基化（GraffiTE v1.1 预印本）。围绕 VvMybA1 构建局部图，是第 14 节针对明确 SV 致因性状的设想。

**章节和工具。** 第 4 节（GraffiTE 及相关 TE 插入说明）。第 5 节用于在群体中对已知插入分型。第 14 节（果皮颜色位点图）。不属于第 7 节的基因注释，也不是结构注释中的软屏蔽步骤。

**易错点。** 通用 RepeatMasker 库不能替代 vitis-te 中整理好的葡萄属 TE 库。分析多态性插入不等于在单一参考基因组上做 TE 注释。仅靠短读长在葡萄重复区检出率更低。

### 12. 古 DNA 比对

**回答的问题。** 考古或标本馆葡萄样本是否携带已知单倍型或 SV 等位基因，同时比只比对到 PN40024 减少参考偏倚。

**最低数据。** 已知单倍型的图谱，加上短而受损的古 DNA 读长。现代常规 WGS 流程不能直接照搬（存在损伤、短片段、污染和极低覆盖度）。

**建议数据。** COSIGT 通过将覆盖度向量与图单倍型匹配来对复杂位点分型，文献描述可在 1–2× 覆盖度下工作（doi:10.1186/s13059-026-04242-4）。将其用于古代葡萄种子是第 14 节的设想，尚未在葡萄属上试过。把降解 DNA 比对到变异图是拟扩充条目；引用的证据来自人类古 DNA 研究（doi:10.1186/s13059-020-02160-7），不是葡萄结果。

**章节和工具。** 第 5 节（COSIGT）。第 14 节（古代葡萄种子 COSIGT 分析；降解 DNA 图比对，扩充）。

**易错点。** 不能把低深度古 DNA 当作现代重测序面板处理。污染和物种鉴定需要专门的对照。这不能替代有年代测定的植物考古分析。

### 13. 育种与标记设计

**回答的问题。** 如何将图单倍型和 SV 用于基因组预测、已知位点的标记开发，或（作为设想）感知变异的向导 RNA 脱靶检查。

**最低数据。** 育种或种质面板的图基因型、目标性状表型，以及——当功能 SV 已知时——该位点的局部单倍型。

**建议数据。** Grapepan v1.0 是证明 SV 能增加遗传力和 QTL 的葡萄属直接先例（doi:10.1038/s41588-024-01967-5）。软件 PHGv2（[maize-genetics/phg_v2](https://github.com/maize-genetics/phg_v2)；须记录版本或 commit 和访问日期；2026-11-13 核对）用于将已知面板单倍型填充到低深度育种样本。方法论文为 Bradbury 等 2022，*Bioinformatics* 38(15):3698–3702，doi:10.1093/bioinformatics/btac410，描述的是 PHG v1；未查到独立的 v2 DOI。水稻 SV 与 SNP 基因组选择比较发现，单用 SV 的效果与 SNP 大致相当（doi:10.1016/j.cj.2025.08.005）；目录提醒，在宣称葡萄上有增益之前要先核对。黄瓜（预印本）和种质库 PAV 预测论文可作进一步模板。先从基因型确认身份（KING 或 IBS，预测面板中每个克隆保留一份代表）；VIVC 仅用于解释名称和系谱，不能代替核对。果皮颜色位点图是具体的标记设计测试。在图单倍型上做 CRISPRme 式的脱靶检索是第 14 节的设想，原为人类数据开发，尚未在植物中测试。

**章节和工具。** 第 10(b) 节（Grapepan SV-GWAS、基因组预测论文，扩充含 GAPIT 3 和 GCTA）。第 5 节（软件 PHGv2，方法论文为 Bradbury 等 2022 的 PHG v1；GLIMPSE2，有 SNP/小 indel 限制）。第 12 节（VIVC、公开图谱）。第 14 节（果皮颜色位点；CRISPRme 设想）。

**易错点。** 仅基于 PN40024 设计的标记会漏检或脱靶非参考单倍型。对浅层测序育种系的填充仅限于面板已有位点，GLIMPSE2 无法填充新的图 SV。克隆身份错误同样会破坏预测模型；拟合模型前须根据基因型去重，合并公开面板前必须统一重新比对、重新分型，并按批次检查缺失率和杂合率。

### 仍标 [待确认] 的条目

以下条目仍待确认：

1. 未对 Giraffe、`vg call`、PanGenie 或克隆 SV 检测给出通用 WGS 深度建议；本稿未重新核对各工具论文中的覆盖度数字。
2. 葡萄属超泛基因组 SV-eQTL 研究中的 RNA-seq 样本量，目录摘要未写。
6. Hecaton（第 7 节扩充）：扩充整理时未查到代码地址。
8. panmethyl：目录注明未核对论文。
9. NOHIC 和个性化图挂载：目录中已标为 [待确认]。
10. 后续轮次是否从 Giraffe 或 PanGenie 论文中补引测序深度数字，暂留待定。

以下内容在本 v2 中作为限定说明写出，不再标 [待确认]：在葡萄属泛基因组图上调用染色质互作（loop / TAD）不在本目录方法内；将 COSIGT 用于古代葡萄种子尚未在葡萄属上试过；降解 DNA 的图比对是拟扩充条目，所引证据为人类古 DNA 研究，非葡萄结果；Beagle 5 和 SHAPEIT5 仅接受双等位 VCF 位点，图 SV 拆成双等位位点并去除嵌套（vcfbub / vcfwave）后可写入此类 VCF，但在葡萄上的准确度尚未测试；modkit 是 ONT 官方软件，无对应论文。
