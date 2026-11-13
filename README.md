# vitis-pangenome

[中文](README.zh.md)

This repository provides *Vitis* pangenome graphs, presence/absence variation, and mixed-variant / dosage methods.

## Out of scope

- TE library curation: [vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- Plastid-only: [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid)

It contains no unpublished genotypes or private sample matrices.

## Methods catalog

The reading list of methods and tools is in [`docs/CATALOG.md`](docs/CATALOG.md). It currently contains 252 entries and can be browsed by task section or by type. The default analysis pipeline remains the scripts in the Pipeline section below; this catalog does not change the pipeline.

## Pipeline

The pipeline is organized according to three waves of peer playbooks. See [`pipeline/00_overview.md`](pipeline/00_overview.md), [`docs/ATTRIBUTION.md`](docs/ATTRIBUTION.md), and [`docs/DUAL_GRAPH.md`](docs/DUAL_GRAPH.md).

Wave 1-2 covers cannabis, potato, NA *Vitis*, Shuhua VCF, and *Oryza* SyRI. It uses scripts `01` to `10`.

Wave 3 covers maize, wheat, and barley minigraph, and dual PGGB-MC + Giraffe / PanGenie. It uses scripts `12` to `16`.

| Script | Role |
|--------|------|
| `01`–`06` | PanSN → PGGB → PAV |
| `07`–`10` | VCF class / vg sketch / post / SyRI |
| `12` | Minigraph-Cactus |
| `13` | Minigraph per chromosome |
| `14` | Giraffe call |
| `15` | PanGenie |
| `16` | Graph QC |

The config file is [`config/example.env`](config/example.env). The default PGGB `-p 85 -s 10k` follows NA *Vitis*.

```bash
cp config/example.env config/local.env
set -a && source config/local.env && set +a
```

Author: Xuzhen Li, [ORCID](https://orcid.org/0000-0003-3670-6657)
