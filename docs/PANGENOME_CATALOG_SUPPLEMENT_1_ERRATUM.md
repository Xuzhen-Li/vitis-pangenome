# Erratum to vitis-pangenome catalog supplement v3

- Date: 2026-11-13 00:06 CST (Asia/Shanghai)
- Author: auto-paper-写作
- Purpose: record required and suggested wording fixes for supplement v3. This file is new. It does not change the supplement, the main catalog, `catalog_v1_erratum.md`, or `docs/PANGENOME_CATALOG.md` in [PR #1](https://github.com/Xuzhen-Li/vitis-pangenome/pull/1). The supplement should not be added to PR #1 in this form.
- Supplement checked (read-only): `/workspace/github-maintain-20261112/vitis-pangenome/work/executor-b/catalog_supplement_v3.md` (sha256 `7923b734780643e2f7cacf436d54de0d9b1b7963213b1bdeee2cafaa3aaa0be8`)
- Review: `/workspace/github-maintain-20261112/reviews/geneticist_review_catalog_supplement_v3.md` (sha256 `bc64dfeeaf73b2bfdbf4aac667fbcdfc47e86ee6214b935dd799853aefb6083f`). Verdict: FAIL on ①-1.
- Style follows `/workspace/github-maintain-20261112/vitis-pangenome/catalog_v1_erratum.md`.
- Scope: close ①-1 as written in the review, and absorb ②-1 to ②-8, each with a paste-ready English replacement. Do not reopen or change plan A for main-catalog ①-3 (V093).

Replacement sentences below are English, ready to paste into a later new file. They are not applied here.

---

## ①-1 (must fix) — Notes L248 must not treat five tools as one class

v3 L248 currently says:

> Not included on purpose: Helixer, LiftOn, Liftoff, TOGA and NLR-Annotator make or transfer gene models; they belong in the two annotation repositories, not here.

That sentence is wrong in three ways. Helixer does make gene models. Liftoff, LiftOn and TOGA transfer or project gene models. NLR-Annotator does neither: it is structure-layer locus finding from sequence motifs, including partial genes and pseudogenes. The main catalog already keeps Liftoff (V090) and NLR-Annotator (V093) in section 7 with boundary sentences, under plan A of the closed ①-3 in `catalog_v1_erratum.md`. A supplement note that sends all five tools only to the annotation repositories would contradict that closure.

**Proposed replacement for the L248 bullet only** (do not change L249–L250):

> Tools treated separately, not as one class. Helixer (and TOGA when used only to produce gene models) belongs in gene-structure-annotation and is not listed in this supplement. Liftoff and LiftOn are already in PR #1 section 7 (V090 and related entries) with a boundary sentence; this supplement does not list them again, and it does not say they fall outside this catalog or belong only in the annotation repositories. NLR-Annotator is already V093 in the main catalog: it is structure-layer locus finding (including partial genes and pseudogenes); this catalog only borrows its locus list to count presence and copy number; gene models stay in gene-structure-annotation. It does not make or transfer gene models, and it does not belong only in the annotation repositories.

---

## ②-1 — VS012 (pangrowth), L70

Section 4a intro (L64) already says these are not gene-level PAV. The “What it does” cell says growth can come from k-mers or from gene families. The “Why it matters” cell already asks for the two to be reported separately.

v3 Why cell: `Report k-mer (sequence) and gene-family growth separately for Vitis; they answer different questions.`

**Proposed replacement for the VS012 “Why it matters for *Vitis*” cell:**

> Report k-mer (sequence) and gene-family growth separately for Vitis; they answer different questions. Gene-family growth results belong in section 7; do not mix them with the sequence/window PAV reports in section 4a.

---

## ②-2 — VS006 (SibeliaZ), L48

SibeliaZ finds locally collinear blocks and is a graph-free synteny tool, closer in spirit to section 6. This erratum does not move the row. If it stays in section 2, the entry must say it does not build a pangenome graph.

v3 Why cell: `Synteny-block view of grape haplotypes as a graph-free alternative.`

**Proposed replacement for the VS006 “Why it matters for *Vitis*” cell:**

> Synteny-block view of grape haplotypes; SibeliaZ does not build a pangenome graph (a graph-free alternative, closer in spirit to section 6).

---

## ②-3 — VS049 (PanKmer), L173

The “What it does” cell covers k-mer indexing, presence/absence and association. The v3 Why cell only mentions assembly comparison. If the row stays in section 10b, the Why cell should land on association, and should say the index itself is not gene-level PAV and not section 5 genotyping of known sites.

v3 Why cell: `Reference-free comparison of many grape assemblies.`

**Proposed replacement for the VS049 “Why it matters for *Vitis*” cell:**

> Reference-free k-mer association in grape cohorts. The presence/absence index itself is sequence-level PAV (section 4a), not gene-level PAV and not genotyping of known graph sites in section 5.

---

## ②-4 — VS047 (barley pan-transcriptome), L162

Section 10a intro (L153) already says this is not RNA evidence for gene-structure annotation and not functional annotation. The entry should repeat that at item level.

v3 Why cell: `Template for a grape pan-transcriptome classification.`

**Proposed replacement for the VS047 “Why it matters for *Vitis*” cell:**

> Template for a grape pan-transcriptome classification (core/shell/cloud at the expression layer). This does not supply gene models to gene-structure-annotation.

---

## ②-5 — VS062 (Pierre et al. data deposit), L200

The deposit includes haplotyped assemblies, annotations, TE annotation and a graph. This catalog should take the assemblies and the graph only.

v3 Why cell: `Downloadable cultivated-grape graph.`

**Proposed replacement for the VS062 “Why it matters for *Vitis*” cell:**

> This catalog uses the haplotyped assemblies and the graph. Gene annotations belong in the two annotation repositories; TE annotation or TE libraries belong in vitis-te. This entry is not a method for structural annotation or TE-library construction in this repository.

---

## ②-6 — VS088 (From structural pangenomes to functional panomics), L240

v3 Why cell: `Recent synthesis matching this catalog's scope.` The review is broader than this catalog (it includes functional panomics).

**Proposed replacement for the VS088 “Why it matters for *Vitis*” cell:**

> Recent synthesis: the graph-coordinate, panNLRome, transcriptome and epigenome parts relate to this catalog; functional annotation itself stays in gene-function-annotation. The review's scope is wider than this catalog.

---

## ②-7 — VS073 (barley pan-proteome with predicted structures), L218

v3 “What it does” cell: `Conference abstract: 856,971 proteoforms from 76 barley genotypes with predicted-structure clustering. [conference abstract, not peer-reviewed]`

v3 Why cell: `Idea for a grape pan-proteome layer; abstract only, not peer-reviewed.`

“Predicted-structure clustering” means predicted protein three-dimensional structures, not gene-structure annotation.

**Proposed replacement for the VS073 “Why it matters for *Vitis*” cell:**

> Idea for a grape pan-proteome layer. “Predicted-structure clustering” means clustering by predicted protein three-dimensional structures, not gene-structure annotation. Abstract only, not peer-reviewed.

---

## ②-8 — VS020 (GLIMPSE2), L96

v3 Why cell: `Impute known graph SV/SNP sites into skim-sequenced grape populations; known sites only.`

“Known sites only” is correct. The “SV” in “graph SV/SNP sites” is not. GLIMPSE2 is used for phasing and imputation of SNPs and small indels from a low-coverage panel (doi:10.1038/s41588-023-01438-3). This erratum does not treat it as a tool that can impute graph structural variants; no such evidence is cited here.

**Proposed replacement for the VS020 “Why it matters for *Vitis*” cell:**

> Impute known SNP and small-indel sites from a reference panel into skim-sequenced grape populations; known panel sites only, not graph structural variants.

---

## What this file does not do

- It does not edit `catalog_supplement_v3.md`, `catalog_v1.md`, `catalog_v1_erratum.md`, or the PR copy of `docs/PANGENOME_CATALOG.md`.
- It does not open, update, or merge a pull request, and it does not add the supplement to PR #1.
- It does not change plan A for main-catalog ①-3 (V093 stays in section 7 with a locus-list boundary sentence).
