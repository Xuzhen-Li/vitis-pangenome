# Extra peer pointers (not vendored)

## nf-core/pangenome
When bash + SLURM queues get painful, wrap the same PGGB family tools with
https://github.com/nf-core/pangenome (MIT). Keep our `config/example.env` knobs
as the biological defaults (`PGGB_P/S/K` from NA *Vitis*).

## Minigraph-Cactus second view
https://github.com/WarrenLab/minigraph-cactus-nf — useful when you need giraffe
mapping on a large WGS panel. Potato / cannabis papers warn MC can drop HDR
bases; keep PGGB as discovery graph.

## Tomato multi-caller HiFi SV
YaoZhou89/TGG packs Sniffles / SVIM / cuteSV / PBSV on HiFi as a linear-ref
SV set to **intersect** with graph SVs. Run on cluster; do not paste sample lists here.

## Gene / core modeling (NA *Vitis* R scripts)
Upstream MIT R helpers live in
`noecochetel/North_American_Vitis_Pangenome/scripts/`
(`PANGENOME.seq_pangenome_modeling.R`, gene intersect). Port later if you need
core/dispensable curves beyond panacus.

## Wave 3 (also adapted as 12–16)

- andrew010417/pangenome_graph_pipeline — dual graph + giraffe + PanGenie + QC
- Chenghong412/wheat_pangenome — per-chr minigraph
- Jia-nianhua/Maize-Graph-Pangenome — minigraph/cactus protocol
- mb47/minigraph-barley — incremental minigraph + odgi heaps
- jia-wu-feng/Pan_Bulbosum — wild-relative haplotype graph layout
