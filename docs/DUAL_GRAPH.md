# Dual-graph strategy (third-wave peers)

| Path | When | Peers |
|------|------|-------|
| **PGGB** (`04`) | Discovery, HDRs, repeats; smaller haplotype sets | NA *Vitis*, cannabis, potato, andrew `02b` |
| **Minigraph** (`13`) | Fast per-chr backbone / SV call | wheat, maize, barley minigraph |
| **Minigraph-Cactus** (`12`) | Population WGS, giraffe GBZ + VCF | andrew `02a`, maize cactus, sugarcane |
| **QC** (`16`) | Before genotyping | andrew `08`, barley odgi heaps |
| **Giraffe call** (`14`) | Discover from short reads on graph | andrew `05` |
| **PanGenie** (`15`) | Genotype known panel (fast, no novel) | andrew `07` |

Rule of thumb for grape: build PGGB for variation inventory; keep an MC or minigraph view for mapping cohorts. Plant papers (potato, cannabis, crop GigaScience eval) warn MC/minigraph can miss divergent repeats that PGGB keeps.
