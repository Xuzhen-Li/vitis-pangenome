# vitis-pangenome

*Vitis* pangenome graphs, presence/absence variation, and mixed-variant / dosage methods.

## This is not

- Not the SNP capture panel — [grapeancestry/chip](https://github.com/Xuzhen-Li/grapeancestry/tree/main/chip)
- Not TE library curation — [vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- Not plastid-only — [grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid)
- Not synteny — [vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny)

No unpublished genotypes or private sample matrices.

## Pipeline (three waves of peer playbooks)

See [`pipeline/00_overview.md`](pipeline/00_overview.md), [`docs/ATTRIBUTION.md`](docs/ATTRIBUTION.md), [`docs/DUAL_GRAPH.md`](docs/DUAL_GRAPH.md).

**Wave 1–2:** cannabis · potato · NA *Vitis* · Shuhua VCF · *Oryza* SyRI → scripts `01`–`10`.

**Wave 3:** maize / wheat / barley minigraph · dual PGGB–MC + Giraffe / PanGenie → `12`–`16`.

| Script | Role |
|--------|------|
| `01`–`06` | PanSN → PGGB → PAV |
| `07`–`10` | VCF class / vg sketch / post / SyRI |
| `12` | Minigraph-Cactus |
| `13` | Minigraph per chromosome |
| `14` | Giraffe call |
| `15` | PanGenie |
| `16` | Graph QC |

Config: [`config/example.env`](config/example.env). Default PGGB `-p 85 -s 10k` follows NA *Vitis*.

```bash
cp config/example.env config/local.env
set -a && source config/local.env && set +a
```

**Author:** Xuzhen Li · [ORCID](https://orcid.org/0000-0003-3670-6657)
