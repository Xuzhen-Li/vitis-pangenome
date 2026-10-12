# vitis-pangenome

[English](README.md)

本仓库提供 *Vitis* 泛基因组图谱、存在/缺失变异以及混合变异/剂量方法。

## 不包含的内容

- SNP 捕获 panel：[grapeancestry/chip](https://github.com/Xuzhen-Li/grapeancestry/tree/main/chip)
- TE 库构建：[vitis-te](https://github.com/Xuzhen-Li/vitis-te)
- 纯质体：[grapevine-plastid](https://github.com/Xuzhen-Li/grapevine-plastid)
- 共线性：[vitis-synteny](https://github.com/Xuzhen-Li/vitis-synteny)

本仓库不包含未发表的基因型或私有样本矩阵。

## 分析流程

参照三批同行的分析流程整理。参见 [`pipeline/00_overview.md`](pipeline/00_overview.md)、[`docs/ATTRIBUTION.md`](docs/ATTRIBUTION.md) 和 [`docs/DUAL_GRAPH.md`](docs/DUAL_GRAPH.md)。

Wave 1-2 涵盖 cannabis、potato、NA *Vitis*、Shuhua VCF 和 *Oryza* SyRI。使用脚本 `01` 到 `10`。

Wave 3 涵盖 maize、wheat 和 barley minigraph，以及 dual PGGB-MC + Giraffe / PanGenie。使用脚本 `12` 到 `16`。

| Script | Role |
|--------|------|
| `01`–`06` | PanSN → PGGB → PAV |
| `07`–`10` | VCF class / vg sketch / post / SyRI |
| `12` | Minigraph-Cactus |
| `13` | Minigraph per chromosome |
| `14` | Giraffe call |
| `15` | PanGenie |
| `16` | Graph QC |

配置文件为 [`config/example.env`](config/example.env)。默认的 PGGB `-p 85 -s 10k` 参照 NA *Vitis*。

```bash
cp config/example.env config/local.env
set -a && source config/local.env && set +a
```

作者：李旭真，[ORCID](https://orcid.org/0000-0003-3670-6657)
