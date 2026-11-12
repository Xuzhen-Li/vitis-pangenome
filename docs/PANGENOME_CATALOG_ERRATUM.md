# Erratum to vitis-pangenome catalog v1

- Date: 2026-11-13 00:00 CST (Asia/Shanghai)
- Author: auto-paper-写作
- Purpose: record required and suggested wording fixes for catalog v1. This file is new. It does not change `work/grok-executor/catalog_v1.md` or `docs/PANGENOME_CATALOG.md` in [PR #1](https://github.com/Xuzhen-Li/vitis-pangenome/pull/1).
- Catalog checked (read-only): `/workspace/github-maintain-20261112/vitis-pangenome/work/grok-executor/catalog_v1.md` (sha256 `32c2c3f1c8c932d1db28be0e66248da175fed9d9ead31f4bff1eaf2b9f0cc5b6`)
- Review: `/workspace/github-maintain-20261112/reviews/geneticist_review_catalog_v1.md` (sha256 `0a4cad5f67ecd7363e0997c332db643ac249b115b1f6e4f5cbebef7a753bb141`), 2026-11-12 23:57 CST. Verdict: FAIL on a new ①-3. Round-1 ①-1 and ①-2 are already closed; ②-1 to ②-5 are already absorbed.
- Scope of this erratum: close ①-3 with **plan A only**, and absorb ②-11 to ②-14. Do not narrow catalog L179.

Replacement sentences below are English, ready to paste into a later new file or PR. They are not applied here.

---

## Round-1 items already closed (no change)

- **①-1**: section 7 is titled `Graph-aware gene presence and family copy-number` (catalog L19, L177). No change.
- **①-2**: Giraffe + `vg call` and PanGenie are both cohort genotyping of sites already in the graph (L136, V060, V062). No change.

---

## ①-3 (must fix) — keep V093 in section 7; add a Liftoff-style boundary sentence

**Plan A (adopted).** Leave NLR-Annotator (V093) in section 7. Add a boundary sentence at the same strength as Liftoff (V090). Do not use plan B (narrowing L179). L179 stays as in v1:

> Only gene presence/absence, copy number and family membership across haplotypes. Gene models (structure) stay in gene-structure-annotation; gene names, GO/KEGG and domains stay in gene-function-annotation. Tools here use existing gene models or proteins; they do not make new annotations.

V090 L190 already says: `making new gene models stays in gene-structure-annotation.`

V093 L193 currently says:

| Field | v1 text |
|---|---|
| What it does | Finds NLR loci from motifs, including partial and pseudogenes. |
| Why it matters for *Vitis* | Counts NLR loci per haplotype for family copy-number in the graph. |

NLR-Annotator finds loci from sequence motifs (including partial genes and pseudogenes). That is structure-layer locus finding, not “use of an existing gene model.” Without a boundary sentence, a section 7 entry would appear to make new annotations in this repo.

**Proposed replacement for the V093 “Why it matters for *Vitis*” cell only** (section 7, ID unchanged):

> NLR-Annotator is a structure-layer locus finder (motifs, including partial genes and pseudogenes); making gene models stays in gene-structure-annotation. This catalog only borrows its locus list to count presence and copy number of NLR loci across haplotypes.

No other V093 fields, and not L179, should be changed for ①-3.

---

## ②-11 — V045 name collides with presence/absence variation

v1 L118 name: `PAV (assembly-based caller)`. The tool is [EichlerLab/pav](https://github.com/EichlerLab/pav) (doi:[10.1126/science.abf7117](https://doi.org/10.1126/science.abf7117)), an assembly-based variant caller (SNVs, indels, SVs, inversions), not presence/absence variation. It is correctly placed in section 4(b), but the short name `PAV` is misleading in a PAV-titled section.

**Proposed name:** `PAV (EichlerLab assembly variant caller)`

Leave the “What it does” and “Why it matters” cells as in v1.

---

## ②-12 — V074 is not genotyping of known graph sites

Section 5 intro (L136) says the tools in that section genotype variant sites already in the graph and do not add new alleles. V074 L156 is “Pangenome-aware DeepVariant”: small-variant calling that adds pangenome haplotypes to pileup images (doi:[10.1101/2025.06.05.657102](https://doi.org/10.1101/2025.06.05.657102), preprint). That caller can report SNPs/indels that are not already in the graph, so it is not the same as Giraffe + `vg call` or PanGenie.

**Proposed addition to the V074 “Why it matters for *Vitis*” cell**, after the v1 sentence:

> This is small-variant discovery that can report SNPs/indels not already in the graph; it is not genotyping of known graph bubbles, unlike Giraffe + vg call or PanGenie in this section.

The section 5 intro is not rewritten in this erratum.

---

## ②-13 — GraffiTE (V055) is not TE-library construction or soft-masking

v1 L128 correctly places GraffiTE in section 4(b) as a tool for finding, graphing and genotyping polymorphic TE insertions (example: Gret1 at *VvMybA1*).

**Proposed addition to the V055 “Why it matters for *Vitis*” cell**, after the v1 sentence:

> This is not TE-library construction for vitis-te, and not the trusted-library soft-mask step of structural annotation.

---

## ②-14 — V092 “TIR-NBS-LRR” checked against the published abstract

v1 L192: `Model for a Vitis pan-NLRome; the Vitis super-pangenome found fewer TIR-NBS-LRR genes in European cultivars.` The Pan-NLRome citation on that row is the Arabidopsis paper (doi:[10.1016/j.cell.2019.07.038](https://doi.org/10.1016/j.cell.2019.07.038)). The *Vitis* claim is from the super-pangenome paper listed elsewhere as V120/V139 (doi:[10.1038/s41588-025-02111-7](https://doi.org/10.1038/s41588-025-02111-7), Guo et al., *Nature Genetics* 2025, PMID 40011682).

Checked (2026-11-13 00:00 CST) against the published abstract as returned by EuropePMC (not open access; main text and Extended Data Fig. 6 were not read). Abstract wording:

> Pangenomic analysis reveals that European cultivars, more susceptible to the destructive disease downy mildew (DM), have a smaller repertoire of resistance genes in the NLR family encoding the TIR-NBARC-LRR domain.

That claim is restricted to NLR-family genes that encode the TIR-NBARC-LRR domain (the TNL subclass), not to all NLRs. The v1 phrase “TIR-NBS-LRR” is the older synonym of TIR-NBARC-LRR and is not wrong, but it should follow the published wording and must not be read as “all NLR genes.”

**Proposed replacement for the V092 “Why it matters for *Vitis*” cell:**

> Model for a *Vitis* pan-NLRome. The *Vitis* super-pangenome (doi:10.1038/s41588-025-02111-7) reports that European cultivars have a smaller repertoire of NLR-family resistance genes encoding the TIR-NBARC-LRR domain (the TNL subclass), not a reduction of all NLRs.

[待确认]: whether total NLR counts (all subclasses) also differ among groups in the main text or in Extended Data Fig. 6 was not checked here, because the published article is not open access and the scripted fetch of the submitted bioRxiv PDF returned HTTP 429.

---

## What this file does not do

- It does not edit `catalog_v1.md` or the PR copy of `docs/PANGENOME_CATALOG.md`.
- It does not open or update a pull request.
- It does not reopen ①-1, ①-2, or ②-1 to ②-5.
