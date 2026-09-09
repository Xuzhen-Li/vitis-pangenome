# North American *Vitis* parameter cheat sheet

Source: Cochetel et al. 2023 playbook
([North_American_Vitis_Pangenome](https://github.com/noecochetel/North_American_Vitis_Pangenome)).

These are **wild North American *Vitis*** choices — start here for grape,
then retune with mash (`pipeline/03_mash_divergence.sh`).

| Stage | Their setting | Note for this repo |
|-------|---------------|--------------------|
| wfmash | `-p 85 -s 10000 -n 1` | Query split by chr; ref = whole haplotype |
| seqwish | `k=49` (in their filenames) | Matches common PGGB plant k |
| Chromosomes | `{01..19}` | Same as cultivated *V. vinifera* haploid set |
| Variants | `vg deconstruct` then **LV=0** only | Top-level bubbles before classing |
| Class | SNP / INS / DEL / MNP / other | After `bcftools norm -m-any` |
| Genotyping | vg construct from ref+VCF → xg/gcsa → map → pack → call | Lighter reconstruct graph for WGS |

Our default `config/example.env` now comments these as the grape-first PGGB start
(`PGGB_P=85`, `PGGB_S=10000`) instead of the stricter cannabis can-pan values.
