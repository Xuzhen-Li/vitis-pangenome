# Methods catalog index (2026-11)

One line per entry in the *Vitis* methods survey. Details stay in the original files; this page only lists name, type and section, and jumps to the row.

- Main catalog: 162 entries (`V001`–`V162`) in [`PANGENOME_CATALOG.md`](PANGENOME_CATALOG.md)
- Supplement 1: 90 entries (`VS001`–`VS090`) in [`PANGENOME_CATALOG_SUPPLEMENT_1.md`](PANGENOME_CATALOG_SUPPLEMENT_1.md)
- Reading entry: [`CATALOG.md`](CATALOG.md)

Main-catalog links use line anchors because that file has no per-entry HTML ids (the file is left unchanged). Supplement links use the existing `VS` anchors.

## Contents

- [By section](#by-section)
- [By type](#by-type)

## By section

### 1. Upstream inputs: phased assemblies

| ID | Name | Type | Source |
|---|---|---|---|
| [V001](PANGENOME_CATALOG.md#L40) | hifiasm | tool | main |
| [V002](PANGENOME_CATALOG.md#L41) | Verkko | tool | main |
| [V003](PANGENOME_CATALOG.md#L42) | quarTeT | tool | main |
| [V004](PANGENOME_CATALOG.md#L43) | purge_dups | tool | main |
| [V005](PANGENOME_CATALOG.md#L44) | NOHIC [待确认] | tool | main |
| [VS001](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs001) | GCI | tool | supplement 1 |
| [VS002](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs002) | RagTag | tool | supplement 1 |
| [VS003](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs003) | Hi-C phasing with GreenHill | tool | supplement 1 |
| [VS004](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs004) | PhaseGrass | tool | supplement 1 |

### 2. Graph construction

| ID | Name | Type | Source |
|---|---|---|---|
| [V006](PANGENOME_CATALOG.md#L54) | PGGB | tool | main |
| [V007](PANGENOME_CATALOG.md#L55) | Minigraph-Cactus | tool | main |
| [V008](PANGENOME_CATALOG.md#L56) | minigraph | tool | main |
| [V009](PANGENOME_CATALOG.md#L57) | wfmash | tool | main |
| [V010](PANGENOME_CATALOG.md#L58) | seqwish | tool | main |
| [V011](PANGENOME_CATALOG.md#L59) | smoothxg | tool | main |
| [V012](PANGENOME_CATALOG.md#L60) | GFAffix | tool | main |
| [V013](PANGENOME_CATALOG.md#L61) | impg | tool | main |
| [V014](PANGENOME_CATALOG.md#L62) | AlfaPang | tool | main |
| [V015](PANGENOME_CATALOG.md#L63) | Progressive Cactus | tool | main |
| [V016](PANGENOME_CATALOG.md#L64) | pgr-tk | tool | main |
| [V017](PANGENOME_CATALOG.md#L65) | Bifrost | tool | main |
| [V018](PANGENOME_CATALOG.md#L66) | GGCAT | tool | main |
| [V019](PANGENOME_CATALOG.md#L67) | Cuttlefish 2 | tool | main |
| [V020](PANGENOME_CATALOG.md#L68) | Pangenome graph construction review (Plant) | analysis | main |
| [V021](PANGENOME_CATALOG.md#L69) | PanSN-spec | idea | main |
| [V022](PANGENOME_CATALOG.md#L70) | Chromosome-level graph partitioning | idea | main |
| [VS005](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs005) | SweepGA | tool | supplement 1 |
| [VS006](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs006) | SibeliaZ | tool | supplement 1 |

### 3. Assembly and graph QC before genotyping

| ID | Name | Type | Source |
|---|---|---|---|
| [V023](PANGENOME_CATALOG.md#L80) | Merqury | tool | main |
| [V024](PANGENOME_CATALOG.md#L81) | BUSCO | tool | main |
| [V025](PANGENOME_CATALOG.md#L82) | compleasm | tool | main |
| [V026](PANGENOME_CATALOG.md#L83) | LAI | tool | main |
| [V027](PANGENOME_CATALOG.md#L84) | Inspector | tool | main |
| [V028](PANGENOME_CATALOG.md#L85) | CRAQ | tool | main |
| [V029](PANGENOME_CATALOG.md#L86) | Flagger | tool | main |
| [V030](PANGENOME_CATALOG.md#L87) | Crop graph evaluation framework | analysis | main |
| [V031](PANGENOME_CATALOG.md#L88) | Human graph method comparison | analysis | main |
| [V032](PANGENOME_CATALOG.md#L89) | odgi stats / validate | tool | main |
| [V033](PANGENOME_CATALOG.md#L90) | gfatools | tool | main |
| [V034](PANGENOME_CATALOG.md#L91) | Truvari | tool | main |
| [V035](PANGENOME_CATALOG.md#L92) | vcfdist | tool | main |
| [V036](PANGENOME_CATALOG.md#L93) | Leave-one-out haplotype benchmark | idea | main |
| [VS007](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs007) | gretl | tool | supplement 1 |
| [VS008](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs008) | gfastats | tool | supplement 1 |
| [VS009](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs009) | skani | tool | supplement 1 |

### 4. Variant discovery: sequence PAV, structural variants and TE insertions

| ID | Name | Type | Source |
|---|---|---|---|
| [V037](PANGENOME_CATALOG.md#L105) | panacus | tool | main |
| [V038](PANGENOME_CATALOG.md#L106) | odgi pav | tool | main |
| [V039](PANGENOME_CATALOG.md#L107) | GraTools | tool | main |
| [V040](PANGENOME_CATALOG.md#L108) | Heaps law openness | idea | main |
| [V041](PANGENOME_CATALOG.md#L114) | vg deconstruct | tool | main |
| [V042](PANGENOME_CATALOG.md#L115) | vcfbub | tool | main |
| [V043](PANGENOME_CATALOG.md#L116) | vcfwave (vcflib) | tool | main |
| [V044](PANGENOME_CATALOG.md#L117) | SyRI | tool | main |
| [V045](PANGENOME_CATALOG.md#L118) | PAV (assembly-based caller) | tool | main |
| [V046](PANGENOME_CATALOG.md#L119) | SVIM-asm | tool | main |
| [V047](PANGENOME_CATALOG.md#L120) | Sniffles2 | tool | main |
| [V048](PANGENOME_CATALOG.md#L121) | cuteSV | tool | main |
| [V049](PANGENOME_CATALOG.md#L122) | SVision-pro | tool | main |
| [V050](PANGENOME_CATALOG.md#L123) | Jasmine | tool | main |
| [V051](PANGENOME_CATALOG.md#L124) | SURVIVOR | tool | main |
| [V052](PANGENOME_CATALOG.md#L125) | SVarp | tool | main |
| [V053](PANGENOME_CATALOG.md#L126) | SVPG | tool | main |
| [V054](PANGENOME_CATALOG.md#L127) | Swave | tool | main |
| [V055](PANGENOME_CATALOG.md#L128) | GraffiTE | tool | main |
| [V056](PANGENOME_CATALOG.md#L129) | TE insertion polymorphisms from pangenome (rice) | analysis | main |
| [V057](PANGENOME_CATALOG.md#L130) | SV size and class taxonomy | idea | main |

### 5. Cohort genotyping and read-to-graph mapping

| ID | Name | Type | Source |
|---|---|---|---|
| [V058](PANGENOME_CATALOG.md#L140) | vg Giraffe | tool | main |
| [V059](PANGENOME_CATALOG.md#L141) | vg Giraffe long reads | tool | main |
| [V060](PANGENOME_CATALOG.md#L142) | vg call | tool | main |
| [V061](PANGENOME_CATALOG.md#L143) | Haplotype sampling (personalized graphs) | tool | main |
| [V062](PANGENOME_CATALOG.md#L144) | PanGenie | tool | main |
| [V063](PANGENOME_CATALOG.md#L145) | PanGenie with haplotype sampling and polishing | tool | main |
| [V064](PANGENOME_CATALOG.md#L146) | Varigraph | tool | main |
| [V065](PANGENOME_CATALOG.md#L147) | GraphAligner | tool | main |
| [V066](PANGENOME_CATALOG.md#L148) | Haplotype-aware long-read alignment | tool | main |
| [V067](PANGENOME_CATALOG.md#L149) | BayesTyper | tool | main |
| [V068](PANGENOME_CATALOG.md#L150) | Paragraph | tool | main |
| [V069](PANGENOME_CATALOG.md#L151) | GraphTyper2 | tool | main |
| [V070](PANGENOME_CATALOG.md#L152) | KAGE | tool | main |
| [V071](PANGENOME_CATALOG.md#L153) | SVJedi-graph | tool | main |
| [V072](PANGENOME_CATALOG.md#L154) | COSIGT | tool | main |
| [V073](PANGENOME_CATALOG.md#L155) | Panmap | tool | main |
| [V074](PANGENOME_CATALOG.md#L156) | Pangenome-aware DeepVariant | tool | main |
| [VS015](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs015) | Locityper | tool | supplement 1 |
| [VS016](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs016) | GraphChainer | tool | supplement 1 |
| [VS017](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs017) | RecAlign | tool | supplement 1 |
| [VS018](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs018) | Moni-align | tool | supplement 1 |
| [VS019](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs019) | Plant graph genotyper benchmark + ensemble | analysis | supplement 1 |
| [VS020](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs020) | GLIMPSE2 | tool | supplement 1 |
| [VS021](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs021) | Practical Haplotype Graph (PHG v2) | tool | supplement 1 |

### 6. Synteny, alignment and comparative maps

| ID | Name | Type | Source |
|---|---|---|---|
| [V075](PANGENOME_CATALOG.md#L166) | minimap2 | tool | main |
| [V076](PANGENOME_CATALOG.md#L167) | AnchorWave | tool | main |
| [V077](PANGENOME_CATALOG.md#L168) | plotsr | tool | main |
| [V078](PANGENOME_CATALOG.md#L169) | msyd [待确认] | tool | main |
| [V079](PANGENOME_CATALOG.md#L170) | ntSynt | tool | main |
| [V080](PANGENOME_CATALOG.md#L171) | GENESPACE | tool | main |
| [V081](PANGENOME_CATALOG.md#L172) | JCVI / MCscan | tool | main |
| [V082](PANGENOME_CATALOG.md#L173) | Mumemto | tool | main |
| [VS022](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs022) | MUMmer4 | tool | supplement 1 |
| [VS023](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs023) | FastGA | tool | supplement 1 |
| [VS024](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs024) | WGDI | tool | supplement 1 |

### 7. Graph-aware gene presence and family copy-number

| ID | Name | Type | Source |
|---|---|---|---|
| [V083](PANGENOME_CATALOG.md#L183) | OrthoFinder | tool | main |
| [V084](PANGENOME_CATALOG.md#L184) | Pandagma | tool | main |
| [V085](PANGENOME_CATALOG.md#L185) | pangene | tool | main |
| [V086](PANGENOME_CATALOG.md#L186) | PanTools (ploidy-aware) | tool | main |
| [V087](PANGENOME_CATALOG.md#L187) | GET_HOMOLOGUES-EST | tool | main |
| [V088](PANGENOME_CATALOG.md#L188) | SonicParanoid2 | tool | main |
| [V089](PANGENOME_CATALOG.md#L189) | miniprot | tool | main |
| [V090](PANGENOME_CATALOG.md#L190) | Liftoff | tool | main |
| [V091](PANGENOME_CATALOG.md#L191) | LiftOn | tool | main |
| [V092](PANGENOME_CATALOG.md#L192) | Pan-NLRome | analysis | main |
| [V093](PANGENOME_CATALOG.md#L193) | NLR-Annotator | tool | main |
| [V094](PANGENOME_CATALOG.md#L194) | Gene-level vs sequence-level PAV | idea | main |
| [V095](PANGENOME_CATALOG.md#L195) | Wheat k-mer gene catalog (PanSK) | analysis | main |
| [VS025](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs025) | GET_PANGENES | tool | supplement 1 |
| [VS026](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs026) | PanOryza pangene catalog | analysis | supplement 1 |
| [VS027](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs027) | Melon pan-NLRome graph | analysis | supplement 1 |
| [VS028](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs028) | NLR neighborhoods by graph traversal (Arabidopsis) | analysis | supplement 1 |

### 8. Graph analysis, indexing and formats

| ID | Name | Type | Source |
|---|---|---|---|
| [V096](PANGENOME_CATALOG.md#L205) | odgi | tool | main |
| [V097](PANGENOME_CATALOG.md#L206) | GBZ / GBWT | tool | main |
| [V098](PANGENOME_CATALOG.md#L207) | vg toolkit | tool | main |
| [V099](PANGENOME_CATALOG.md#L208) | BubbleGun | tool | main |
| [V100](PANGENOME_CATALOG.md#L209) | Snarl decomposition | idea | main |
| [V101](PANGENOME_CATALOG.md#L210) | AGC | tool | main |
| [V102](PANGENOME_CATALOG.md#L211) | Mash | tool | main |
| [V103](PANGENOME_CATALOG.md#L212) | gfainject | tool | main |
| [V104](PANGENOME_CATALOG.md#L213) | gafpack | tool | main |
| [V105](PANGENOME_CATALOG.md#L214) | Graph IBD with SVs (GIBD) | tool | main |
| [V106](PANGENOME_CATALOG.md#L215) | GRAFIMO | tool | main |
| [VS029](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs029) | ropebwt3 | tool | supplement 1 |
| [VS030](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs030) | Billi | tool | supplement 1 |
| [VS031](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs031) | Popping bubbles (arXiv) | analysis | supplement 1 |
| [VS032](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs032) | Cataloging variants in pangenome graphs (pantree) [待确认] | analysis | supplement 1 |
| [VS033](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs033) | GFA specification | format | supplement 1 |

### 9. Visualization

| ID | Name | Type | Source |
|---|---|---|---|
| [V107](PANGENOME_CATALOG.md#L225) | Bandage | tool | main |
| [V108](PANGENOME_CATALOG.md#L226) | BandageNG | tool | main |
| [V109](PANGENOME_CATALOG.md#L227) | SequenceTubeMap | tool | main |
| [V110](PANGENOME_CATALOG.md#L228) | odgi viz / draw | tool | main |
| [V111](PANGENOME_CATALOG.md#L229) | VRPG | tool | main |
| [V112](PANGENOME_CATALOG.md#L230) | PangyPlot | tool | main |
| [V113](PANGENOME_CATALOG.md#L231) | PanGraphViewer | tool | main |
| [V114](PANGENOME_CATALOG.md#L232) | MoMI-G | tool | main |
| [V115](PANGENOME_CATALOG.md#L233) | Panache | tool | main |
| [V116](PANGENOME_CATALOG.md#L234) | PanVA | tool | main |
| [V117](PANGENOME_CATALOG.md#L235) | JBrowse 2 | tool | main |
| [V118](PANGENOME_CATALOG.md#L236) | ntSynt-viz | tool | main |
| [VS034](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs034) | GfaViz | tool | supplement 1 |
| [VS035](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs035) | NGenomeSyn | tool | supplement 1 |
| [VS036](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs036) | SVbyEye | tool | supplement 1 |
| [VS037](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs037) | ModDotPlot | tool | supplement 1 |
| [VS038](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs038) | StainedGlass | tool | supplement 1 |
| [VS039](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs039) | waragraph | tool | supplement 1 |
| [VS040](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs040) | strangepg | tool | supplement 1 |
| [VS041](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs041) | gfalook | tool | supplement 1 |

### 10. Expression, QTL and pangenome-GWAS

| ID | Name | Type | Source |
|---|---|---|---|
| [V119](PANGENOME_CATALOG.md#L246) | Grapepan v1.0 SV-GWAS | analysis | main |
| [V120](PANGENOME_CATALOG.md#L247) | Vitis super-pangenome SV-eQTL | analysis | main |
| [V121](PANGENOME_CATALOG.md#L248) | NodeGWAS | tool | main |
| [V122](PANGENOME_CATALOG.md#L249) | kmersGWAS | tool | main |
| [V123](PANGENOME_CATALOG.md#L250) | Graph meta-GWAS (rice) | analysis | main |
| [V124](PANGENOME_CATALOG.md#L251) | Potato PAV metabolite-GWAS | analysis | main |
| [V125](PANGENOME_CATALOG.md#L252) | Brassica napus SV-eQTL | analysis | main |
| [V126](PANGENOME_CATALOG.md#L253) | rpvg / spliced pangenome graphs | tool | main |
| [V127](PANGENOME_CATALOG.md#L254) | Tomato super-pangenome heritability | analysis | main |
| [V128](PANGENOME_CATALOG.md#L255) | Tomato SVs and expression | analysis | main |
| [V129](PANGENOME_CATALOG.md#L256) | Oat pangenome + pantranscriptome | analysis | main |
| [V130](PANGENOME_CATALOG.md#L257) | methylGrapher | tool | main |

### 11. Evolution, ancestry and introgression

| ID | Name | Type | Source |
|---|---|---|---|
| [V131](PANGENOME_CATALOG.md#L267) | Grapevine SV domestication | analysis | main |
| [V132](PANGENOME_CATALOG.md#L268) | Grapevine clone diversification | analysis | main |
| [V133](PANGENOME_CATALOG.md#L269) | SINGER | tool | main |
| [V134](PANGENOME_CATALOG.md#L270) | tsinfer | tool | main |
| [V135](PANGENOME_CATALOG.md#L271) | Twisst | tool | main |
| [V136](PANGENOME_CATALOG.md#L272) | Haplotype-aware phylogenomics | idea | main |
| [V137](PANGENOME_CATALOG.md#L273) | NA Vitis wild introgression | analysis | main |
| [VS056](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs056) | ARG-Needle | tool | supplement 1 |
| [VS057](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs057) | Dsuite | tool | supplement 1 |
| [VS058](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs058) | Mashtree | tool | supplement 1 |
| [VS059](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs059) | Dual domestication of grapevine | analysis | supplement 1 |
| [VS060](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs060) | Clonal diversity in grapevine (review) | analysis | supplement 1 |

### 12. Vitis pangenome studies and public resources

| ID | Name | Type | Source |
|---|---|---|---|
| [V138](PANGENOME_CATALOG.md#L283) | Grapepan v1.0 | analysis | main |
| [V139](PANGENOME_CATALOG.md#L284) | Vitis super-pangenome | analysis | main |
| [V140](PANGENOME_CATALOG.md#L285) | Cultivated grapevine pangenome (G3) | analysis | main |
| [V141](PANGENOME_CATALOG.md#L286) | Vitis amurensis graph (Vampan) | analysis | main |
| [V142](PANGENOME_CATALOG.md#L287) | NA Vitis super-pangenome | analysis | main |
| [V143](PANGENOME_CATALOG.md#L288) | Grapedia | tool | main |
| [V144](PANGENOME_CATALOG.md#L289) | GrapeGenomics JBrowse | tool | main |
| [V145](PANGENOME_CATALOG.md#L290) | Grapevine pangenome review (Horticulturae) | analysis | main |
| [V146](PANGENOME_CATALOG.md#L291) | Graph pangenomes in polyploid crops (review) | analysis | main |
| [VS061](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs061) | PN_T2T reference | resource | supplement 1 |
| [VS062](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs062) | Pierre et al. data deposit | resource | supplement 1 |
| [VS063](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs063) | Muscadinia rotundifolia Trayshed diploid assembly | resource | supplement 1 |
| [VS064](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs064) | Muscadine Carlos assembly + pan-genome | resource | supplement 1 |
| [VS065](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs065) | Wild side of grape genomics (review) | analysis | supplement 1 |
| [VS066](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs066) | Grape family phylogenomics | analysis | supplement 1 |
| [VS067](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs067) | Diploid phasing from draft (Minio et al.) | tool | supplement 1 |
| [VS068](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs068) | Grapevine sex determination | analysis | supplement 1 |
| [VS069](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs069) | VitExpress + haplotype-resolved assembly | resource | supplement 1 |
| [VS070](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs070) | Munage haplotype-resolved assemblies | resource | supplement 1 |

### 13. Workflows and pipelines

| ID | Name | Type | Source |
|---|---|---|---|
| [V147](PANGENOME_CATALOG.md#L301) | nf-core/pangenome | tool | main |
| [V148](PANGENOME_CATALOG.md#L302) | Pan1c | tool | main |
| [V149](PANGENOME_CATALOG.md#L303) | cactus-pangenome | tool | main |
| [V150](PANGENOME_CATALOG.md#L304) | HPRC release 2 graph workflow | tool | main |
| [V151](PANGENOME_CATALOG.md#L305) | HPRC draft pangenome | analysis | main |
| [V152](PANGENOME_CATALOG.md#L306) | Rice pangenome reference (wild + cultivated) | analysis | main |

### 14. Ideas still untested on Vitis

| ID | Name | Type | Source |
|---|---|---|---|
| [V153](PANGENOME_CATALOG.md#L316) | COSIGT on ancient grape seeds [待确认] | idea | main |
| [V154](PANGENOME_CATALOG.md#L317) | Berry-colour locus graph (VvMybA1) | idea | main |
| [V155](PANGENOME_CATALOG.md#L318) | Pangenome foundation models | idea | main |
| [V156](PANGENOME_CATALOG.md#L319) | DeepGene | tool | main |
| [V157](PANGENOME_CATALOG.md#L320) | PlantCaduceus | tool | main |
| [V158](PANGENOME_CATALOG.md#L321) | AgroNT | tool | main |
| [V159](PANGENOME_CATALOG.md#L322) | Graph-node GWAS + eQTL fusion | idea | main |
| [V160](PANGENOME_CATALOG.md#L323) | Clone-level pangenome | idea | main |
| [V161](PANGENOME_CATALOG.md#L324) | Implicit-graph locus atlas | idea | main |
| [V162](PANGENOME_CATALOG.md#L325) | Personalized-graph scaffolding [待确认] | idea | main |
| [VS071](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs071) | GPN | tool | supplement 1 |
| [VS072](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs072) | Evo 2 [待确认] | tool | supplement 1 |
| [VS073](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs073) | Pan-proteome with predicted structures (barley abstract) | idea | supplement 1 |

### 4. Variant discovery — (a) sequence and window PAV

| ID | Name | Type | Source |
|---|---|---|---|
| [VS010](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs010) | PanK-Pipeline | tool | supplement 1 |
| [VS011](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs011) | panagram | tool | supplement 1 |
| [VS012](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs012) | pangrowth | tool | supplement 1 |

### 4. Variant discovery — (b) structural variants

| ID | Name | Type | Source |
|---|---|---|---|
| [VS013](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs013) | Inversions in pangenome graphs | analysis | supplement 1 |
| [VS014](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs014) | collapse-bubble | tool | supplement 1 |

### 10. Expression and epigenome layers

| ID | Name | Type | Source |
|---|---|---|---|
| [VS042](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs042) | Graph Peak Caller | tool | supplement 1 |
| [VS043](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs043) | methylation on graphs: panmethyl | tool | supplement 1 |
| [VS044](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs044) | modkit | tool | supplement 1 |
| [VS045](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs045) | Phased epigenomics in a Vitis hybrid | analysis | supplement 1 |
| [VS046](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs046) | Clonal genome-methylome map in grapevine | analysis | supplement 1 |
| [VS047](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs047) | Barley pan-transcriptome | analysis | supplement 1 |

### 10. QTL, pangenome-GWAS and genomic prediction

| ID | Name | Type | Source |
|---|---|---|---|
| [VS048](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs048) | kGWASflow | tool | supplement 1 |
| [VS049](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs049) | PanKmer | tool | supplement 1 |
| [VS050](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs050) | kmdiff | tool | supplement 1 |
| [VS051](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs051) | pyseer | tool | supplement 1 |
| [VS052](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs052) | panGWAS (PHAC) | tool | supplement 1 |
| [VS053](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs053) | Cucumber graph pangenome in breeding | analysis | supplement 1 |
| [VS054](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs054) | SV vs SNP genomic selection in rice | analysis | supplement 1 |
| [VS055](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs055) | Pan-genome PAV in gene-bank genomic prediction | analysis | supplement 1 |

### 15. Peer plant pangenome studies and reviews

| ID | Name | Type | Source |
|---|---|---|---|
| [VS074](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs074) | Pangenome graphs review | analysis | supplement 1 |
| [VS075](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs075) | Plant T2T methods review | analysis | supplement 1 |
| [VS076](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs076) | Potato wild/cultivated genomes | analysis | supplement 1 |
| [VS077](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs077) | Rice super pan-genome | analysis | supplement 1 |
| [VS078](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs078) | Barley pangenome | analysis | supplement 1 |
| [VS079](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs079) | Arabidopsis 69 accessions | analysis | supplement 1 |
| [VS080](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs080) | Cucumber graph pan-genome | analysis | supplement 1 |
| [VS081](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs081) | Maize 26 genomes (NAM) | analysis | supplement 1 |
| [VS082](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs082) | Soybean pan-genome | analysis | supplement 1 |
| [VS083](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs083) | Wheat multiple genomes | analysis | supplement 1 |
| [VS084](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs084) | Pearl millet pangenome (heat tolerance) | analysis | supplement 1 |
| [VS085](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs085) | Apple haplotype-resolved genomes (rootstock dwarfing) | analysis | supplement 1 |
| [VS086](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs086) | Eggplant graph pangenomes + pan-phenome | analysis | supplement 1 |
| [VS087](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs087) | What are we learning from plant pangenomes? | analysis | supplement 1 |
| [VS088](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs088) | From structural pangenomes to functional panomics | analysis | supplement 1 |
| [VS089](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs089) | Pangenomes for large/complex plant genomes | analysis | supplement 1 |
| [VS090](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs090) | Complexity welcome (review) | analysis | supplement 1 |

## By type

### tool (168)

| ID | Name | Section | Source |
|---|---|---|---|
| [V001](PANGENOME_CATALOG.md#L40) | hifiasm | 1. Upstream inputs: phased assemblies | main |
| [V002](PANGENOME_CATALOG.md#L41) | Verkko | 1. Upstream inputs: phased assemblies | main |
| [V003](PANGENOME_CATALOG.md#L42) | quarTeT | 1. Upstream inputs: phased assemblies | main |
| [V004](PANGENOME_CATALOG.md#L43) | purge_dups | 1. Upstream inputs: phased assemblies | main |
| [V005](PANGENOME_CATALOG.md#L44) | NOHIC [待确认] | 1. Upstream inputs: phased assemblies | main |
| [V006](PANGENOME_CATALOG.md#L54) | PGGB | 2. Graph construction | main |
| [V007](PANGENOME_CATALOG.md#L55) | Minigraph-Cactus | 2. Graph construction | main |
| [V008](PANGENOME_CATALOG.md#L56) | minigraph | 2. Graph construction | main |
| [V009](PANGENOME_CATALOG.md#L57) | wfmash | 2. Graph construction | main |
| [V010](PANGENOME_CATALOG.md#L58) | seqwish | 2. Graph construction | main |
| [V011](PANGENOME_CATALOG.md#L59) | smoothxg | 2. Graph construction | main |
| [V012](PANGENOME_CATALOG.md#L60) | GFAffix | 2. Graph construction | main |
| [V013](PANGENOME_CATALOG.md#L61) | impg | 2. Graph construction | main |
| [V014](PANGENOME_CATALOG.md#L62) | AlfaPang | 2. Graph construction | main |
| [V015](PANGENOME_CATALOG.md#L63) | Progressive Cactus | 2. Graph construction | main |
| [V016](PANGENOME_CATALOG.md#L64) | pgr-tk | 2. Graph construction | main |
| [V017](PANGENOME_CATALOG.md#L65) | Bifrost | 2. Graph construction | main |
| [V018](PANGENOME_CATALOG.md#L66) | GGCAT | 2. Graph construction | main |
| [V019](PANGENOME_CATALOG.md#L67) | Cuttlefish 2 | 2. Graph construction | main |
| [V023](PANGENOME_CATALOG.md#L80) | Merqury | 3. Assembly and graph QC before genotyping | main |
| [V024](PANGENOME_CATALOG.md#L81) | BUSCO | 3. Assembly and graph QC before genotyping | main |
| [V025](PANGENOME_CATALOG.md#L82) | compleasm | 3. Assembly and graph QC before genotyping | main |
| [V026](PANGENOME_CATALOG.md#L83) | LAI | 3. Assembly and graph QC before genotyping | main |
| [V027](PANGENOME_CATALOG.md#L84) | Inspector | 3. Assembly and graph QC before genotyping | main |
| [V028](PANGENOME_CATALOG.md#L85) | CRAQ | 3. Assembly and graph QC before genotyping | main |
| [V029](PANGENOME_CATALOG.md#L86) | Flagger | 3. Assembly and graph QC before genotyping | main |
| [V032](PANGENOME_CATALOG.md#L89) | odgi stats / validate | 3. Assembly and graph QC before genotyping | main |
| [V033](PANGENOME_CATALOG.md#L90) | gfatools | 3. Assembly and graph QC before genotyping | main |
| [V034](PANGENOME_CATALOG.md#L91) | Truvari | 3. Assembly and graph QC before genotyping | main |
| [V035](PANGENOME_CATALOG.md#L92) | vcfdist | 3. Assembly and graph QC before genotyping | main |
| [V037](PANGENOME_CATALOG.md#L105) | panacus | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V038](PANGENOME_CATALOG.md#L106) | odgi pav | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V039](PANGENOME_CATALOG.md#L107) | GraTools | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V041](PANGENOME_CATALOG.md#L114) | vg deconstruct | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V042](PANGENOME_CATALOG.md#L115) | vcfbub | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V043](PANGENOME_CATALOG.md#L116) | vcfwave (vcflib) | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V044](PANGENOME_CATALOG.md#L117) | SyRI | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V045](PANGENOME_CATALOG.md#L118) | PAV (assembly-based caller) | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V046](PANGENOME_CATALOG.md#L119) | SVIM-asm | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V047](PANGENOME_CATALOG.md#L120) | Sniffles2 | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V048](PANGENOME_CATALOG.md#L121) | cuteSV | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V049](PANGENOME_CATALOG.md#L122) | SVision-pro | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V050](PANGENOME_CATALOG.md#L123) | Jasmine | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V051](PANGENOME_CATALOG.md#L124) | SURVIVOR | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V052](PANGENOME_CATALOG.md#L125) | SVarp | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V053](PANGENOME_CATALOG.md#L126) | SVPG | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V054](PANGENOME_CATALOG.md#L127) | Swave | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V055](PANGENOME_CATALOG.md#L128) | GraffiTE | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V058](PANGENOME_CATALOG.md#L140) | vg Giraffe | 5. Cohort genotyping and read-to-graph mapping | main |
| [V059](PANGENOME_CATALOG.md#L141) | vg Giraffe long reads | 5. Cohort genotyping and read-to-graph mapping | main |
| [V060](PANGENOME_CATALOG.md#L142) | vg call | 5. Cohort genotyping and read-to-graph mapping | main |
| [V061](PANGENOME_CATALOG.md#L143) | Haplotype sampling (personalized graphs) | 5. Cohort genotyping and read-to-graph mapping | main |
| [V062](PANGENOME_CATALOG.md#L144) | PanGenie | 5. Cohort genotyping and read-to-graph mapping | main |
| [V063](PANGENOME_CATALOG.md#L145) | PanGenie with haplotype sampling and polishing | 5. Cohort genotyping and read-to-graph mapping | main |
| [V064](PANGENOME_CATALOG.md#L146) | Varigraph | 5. Cohort genotyping and read-to-graph mapping | main |
| [V065](PANGENOME_CATALOG.md#L147) | GraphAligner | 5. Cohort genotyping and read-to-graph mapping | main |
| [V066](PANGENOME_CATALOG.md#L148) | Haplotype-aware long-read alignment | 5. Cohort genotyping and read-to-graph mapping | main |
| [V067](PANGENOME_CATALOG.md#L149) | BayesTyper | 5. Cohort genotyping and read-to-graph mapping | main |
| [V068](PANGENOME_CATALOG.md#L150) | Paragraph | 5. Cohort genotyping and read-to-graph mapping | main |
| [V069](PANGENOME_CATALOG.md#L151) | GraphTyper2 | 5. Cohort genotyping and read-to-graph mapping | main |
| [V070](PANGENOME_CATALOG.md#L152) | KAGE | 5. Cohort genotyping and read-to-graph mapping | main |
| [V071](PANGENOME_CATALOG.md#L153) | SVJedi-graph | 5. Cohort genotyping and read-to-graph mapping | main |
| [V072](PANGENOME_CATALOG.md#L154) | COSIGT | 5. Cohort genotyping and read-to-graph mapping | main |
| [V073](PANGENOME_CATALOG.md#L155) | Panmap | 5. Cohort genotyping and read-to-graph mapping | main |
| [V074](PANGENOME_CATALOG.md#L156) | Pangenome-aware DeepVariant | 5. Cohort genotyping and read-to-graph mapping | main |
| [V075](PANGENOME_CATALOG.md#L166) | minimap2 | 6. Synteny, alignment and comparative maps | main |
| [V076](PANGENOME_CATALOG.md#L167) | AnchorWave | 6. Synteny, alignment and comparative maps | main |
| [V077](PANGENOME_CATALOG.md#L168) | plotsr | 6. Synteny, alignment and comparative maps | main |
| [V078](PANGENOME_CATALOG.md#L169) | msyd [待确认] | 6. Synteny, alignment and comparative maps | main |
| [V079](PANGENOME_CATALOG.md#L170) | ntSynt | 6. Synteny, alignment and comparative maps | main |
| [V080](PANGENOME_CATALOG.md#L171) | GENESPACE | 6. Synteny, alignment and comparative maps | main |
| [V081](PANGENOME_CATALOG.md#L172) | JCVI / MCscan | 6. Synteny, alignment and comparative maps | main |
| [V082](PANGENOME_CATALOG.md#L173) | Mumemto | 6. Synteny, alignment and comparative maps | main |
| [V083](PANGENOME_CATALOG.md#L183) | OrthoFinder | 7. Graph-aware gene presence and family copy-number | main |
| [V084](PANGENOME_CATALOG.md#L184) | Pandagma | 7. Graph-aware gene presence and family copy-number | main |
| [V085](PANGENOME_CATALOG.md#L185) | pangene | 7. Graph-aware gene presence and family copy-number | main |
| [V086](PANGENOME_CATALOG.md#L186) | PanTools (ploidy-aware) | 7. Graph-aware gene presence and family copy-number | main |
| [V087](PANGENOME_CATALOG.md#L187) | GET_HOMOLOGUES-EST | 7. Graph-aware gene presence and family copy-number | main |
| [V088](PANGENOME_CATALOG.md#L188) | SonicParanoid2 | 7. Graph-aware gene presence and family copy-number | main |
| [V089](PANGENOME_CATALOG.md#L189) | miniprot | 7. Graph-aware gene presence and family copy-number | main |
| [V090](PANGENOME_CATALOG.md#L190) | Liftoff | 7. Graph-aware gene presence and family copy-number | main |
| [V091](PANGENOME_CATALOG.md#L191) | LiftOn | 7. Graph-aware gene presence and family copy-number | main |
| [V093](PANGENOME_CATALOG.md#L193) | NLR-Annotator | 7. Graph-aware gene presence and family copy-number | main |
| [V096](PANGENOME_CATALOG.md#L205) | odgi | 8. Graph analysis, indexing and formats | main |
| [V097](PANGENOME_CATALOG.md#L206) | GBZ / GBWT | 8. Graph analysis, indexing and formats | main |
| [V098](PANGENOME_CATALOG.md#L207) | vg toolkit | 8. Graph analysis, indexing and formats | main |
| [V099](PANGENOME_CATALOG.md#L208) | BubbleGun | 8. Graph analysis, indexing and formats | main |
| [V101](PANGENOME_CATALOG.md#L210) | AGC | 8. Graph analysis, indexing and formats | main |
| [V102](PANGENOME_CATALOG.md#L211) | Mash | 8. Graph analysis, indexing and formats | main |
| [V103](PANGENOME_CATALOG.md#L212) | gfainject | 8. Graph analysis, indexing and formats | main |
| [V104](PANGENOME_CATALOG.md#L213) | gafpack | 8. Graph analysis, indexing and formats | main |
| [V105](PANGENOME_CATALOG.md#L214) | Graph IBD with SVs (GIBD) | 8. Graph analysis, indexing and formats | main |
| [V106](PANGENOME_CATALOG.md#L215) | GRAFIMO | 8. Graph analysis, indexing and formats | main |
| [V107](PANGENOME_CATALOG.md#L225) | Bandage | 9. Visualization | main |
| [V108](PANGENOME_CATALOG.md#L226) | BandageNG | 9. Visualization | main |
| [V109](PANGENOME_CATALOG.md#L227) | SequenceTubeMap | 9. Visualization | main |
| [V110](PANGENOME_CATALOG.md#L228) | odgi viz / draw | 9. Visualization | main |
| [V111](PANGENOME_CATALOG.md#L229) | VRPG | 9. Visualization | main |
| [V112](PANGENOME_CATALOG.md#L230) | PangyPlot | 9. Visualization | main |
| [V113](PANGENOME_CATALOG.md#L231) | PanGraphViewer | 9. Visualization | main |
| [V114](PANGENOME_CATALOG.md#L232) | MoMI-G | 9. Visualization | main |
| [V115](PANGENOME_CATALOG.md#L233) | Panache | 9. Visualization | main |
| [V116](PANGENOME_CATALOG.md#L234) | PanVA | 9. Visualization | main |
| [V117](PANGENOME_CATALOG.md#L235) | JBrowse 2 | 9. Visualization | main |
| [V118](PANGENOME_CATALOG.md#L236) | ntSynt-viz | 9. Visualization | main |
| [V121](PANGENOME_CATALOG.md#L248) | NodeGWAS | 10. Expression, QTL and pangenome-GWAS | main |
| [V122](PANGENOME_CATALOG.md#L249) | kmersGWAS | 10. Expression, QTL and pangenome-GWAS | main |
| [V126](PANGENOME_CATALOG.md#L253) | rpvg / spliced pangenome graphs | 10. Expression, QTL and pangenome-GWAS | main |
| [V130](PANGENOME_CATALOG.md#L257) | methylGrapher | 10. Expression, QTL and pangenome-GWAS | main |
| [V133](PANGENOME_CATALOG.md#L269) | SINGER | 11. Evolution, ancestry and introgression | main |
| [V134](PANGENOME_CATALOG.md#L270) | tsinfer | 11. Evolution, ancestry and introgression | main |
| [V135](PANGENOME_CATALOG.md#L271) | Twisst | 11. Evolution, ancestry and introgression | main |
| [V143](PANGENOME_CATALOG.md#L288) | Grapedia | 12. Vitis pangenome studies and public resources | main |
| [V144](PANGENOME_CATALOG.md#L289) | GrapeGenomics JBrowse | 12. Vitis pangenome studies and public resources | main |
| [V147](PANGENOME_CATALOG.md#L301) | nf-core/pangenome | 13. Workflows and pipelines | main |
| [V148](PANGENOME_CATALOG.md#L302) | Pan1c | 13. Workflows and pipelines | main |
| [V149](PANGENOME_CATALOG.md#L303) | cactus-pangenome | 13. Workflows and pipelines | main |
| [V150](PANGENOME_CATALOG.md#L304) | HPRC release 2 graph workflow | 13. Workflows and pipelines | main |
| [V156](PANGENOME_CATALOG.md#L319) | DeepGene | 14. Ideas still untested on Vitis | main |
| [V157](PANGENOME_CATALOG.md#L320) | PlantCaduceus | 14. Ideas still untested on Vitis | main |
| [V158](PANGENOME_CATALOG.md#L321) | AgroNT | 14. Ideas still untested on Vitis | main |
| [VS001](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs001) | GCI | 1. Upstream inputs: phased assemblies | supplement 1 |
| [VS002](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs002) | RagTag | 1. Upstream inputs: phased assemblies | supplement 1 |
| [VS003](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs003) | Hi-C phasing with GreenHill | 1. Upstream inputs: phased assemblies | supplement 1 |
| [VS004](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs004) | PhaseGrass | 1. Upstream inputs: phased assemblies | supplement 1 |
| [VS005](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs005) | SweepGA | 2. Graph construction | supplement 1 |
| [VS006](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs006) | SibeliaZ | 2. Graph construction | supplement 1 |
| [VS007](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs007) | gretl | 3. Assembly and graph QC before genotyping | supplement 1 |
| [VS008](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs008) | gfastats | 3. Assembly and graph QC before genotyping | supplement 1 |
| [VS009](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs009) | skani | 3. Assembly and graph QC before genotyping | supplement 1 |
| [VS010](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs010) | PanK-Pipeline | 4a. Variant discovery (a): sequence and window PAV, growth curves | supplement 1 |
| [VS011](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs011) | panagram | 4a. Variant discovery (a): sequence and window PAV, growth curves | supplement 1 |
| [VS012](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs012) | pangrowth | 4a. Variant discovery (a): sequence and window PAV, growth curves | supplement 1 |
| [VS014](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs014) | collapse-bubble | 4b. Variant discovery (b): structural variants | supplement 1 |
| [VS015](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs015) | Locityper | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS016](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs016) | GraphChainer | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS017](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs017) | RecAlign | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS018](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs018) | Moni-align | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS020](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs020) | GLIMPSE2 | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS021](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs021) | Practical Haplotype Graph (PHG v2) | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS022](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs022) | MUMmer4 | 6. Synteny, alignment and comparative maps | supplement 1 |
| [VS023](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs023) | FastGA | 6. Synteny, alignment and comparative maps | supplement 1 |
| [VS024](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs024) | WGDI | 6. Synteny, alignment and comparative maps | supplement 1 |
| [VS025](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs025) | GET_PANGENES | 7. Graph-aware gene presence and family copy-number | supplement 1 |
| [VS029](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs029) | ropebwt3 | 8. Graph analysis, indexing and formats | supplement 1 |
| [VS030](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs030) | Billi | 8. Graph analysis, indexing and formats | supplement 1 |
| [VS034](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs034) | GfaViz | 9. Visualization | supplement 1 |
| [VS035](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs035) | NGenomeSyn | 9. Visualization | supplement 1 |
| [VS036](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs036) | SVbyEye | 9. Visualization | supplement 1 |
| [VS037](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs037) | ModDotPlot | 9. Visualization | supplement 1 |
| [VS038](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs038) | StainedGlass | 9. Visualization | supplement 1 |
| [VS039](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs039) | waragraph | 9. Visualization | supplement 1 |
| [VS040](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs040) | strangepg | 9. Visualization | supplement 1 |
| [VS041](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs041) | gfalook | 9. Visualization | supplement 1 |
| [VS042](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs042) | Graph Peak Caller | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS043](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs043) | methylation on graphs: panmethyl | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS044](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs044) | modkit | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS048](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs048) | kGWASflow | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS049](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs049) | PanKmer | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS050](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs050) | kmdiff | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS051](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs051) | pyseer | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS052](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs052) | panGWAS (PHAC) | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS056](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs056) | ARG-Needle | 11. Evolution, ancestry and introgression | supplement 1 |
| [VS057](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs057) | Dsuite | 11. Evolution, ancestry and introgression | supplement 1 |
| [VS058](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs058) | Mashtree | 11. Evolution, ancestry and introgression | supplement 1 |
| [VS067](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs067) | Diploid phasing from draft (Minio et al.) | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS071](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs071) | GPN | 14. Ideas still untested on Vitis | supplement 1 |
| [VS072](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs072) | Evo 2 [待确认] | 14. Ideas still untested on Vitis | supplement 1 |

### analysis (61)

| ID | Name | Section | Source |
|---|---|---|---|
| [V020](PANGENOME_CATALOG.md#L68) | Pangenome graph construction review (Plant) | 2. Graph construction | main |
| [V030](PANGENOME_CATALOG.md#L87) | Crop graph evaluation framework | 3. Assembly and graph QC before genotyping | main |
| [V031](PANGENOME_CATALOG.md#L88) | Human graph method comparison | 3. Assembly and graph QC before genotyping | main |
| [V056](PANGENOME_CATALOG.md#L129) | TE insertion polymorphisms from pangenome (rice) | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V092](PANGENOME_CATALOG.md#L192) | Pan-NLRome | 7. Graph-aware gene presence and family copy-number | main |
| [V095](PANGENOME_CATALOG.md#L195) | Wheat k-mer gene catalog (PanSK) | 7. Graph-aware gene presence and family copy-number | main |
| [V119](PANGENOME_CATALOG.md#L246) | Grapepan v1.0 SV-GWAS | 10. Expression, QTL and pangenome-GWAS | main |
| [V120](PANGENOME_CATALOG.md#L247) | Vitis super-pangenome SV-eQTL | 10. Expression, QTL and pangenome-GWAS | main |
| [V123](PANGENOME_CATALOG.md#L250) | Graph meta-GWAS (rice) | 10. Expression, QTL and pangenome-GWAS | main |
| [V124](PANGENOME_CATALOG.md#L251) | Potato PAV metabolite-GWAS | 10. Expression, QTL and pangenome-GWAS | main |
| [V125](PANGENOME_CATALOG.md#L252) | Brassica napus SV-eQTL | 10. Expression, QTL and pangenome-GWAS | main |
| [V127](PANGENOME_CATALOG.md#L254) | Tomato super-pangenome heritability | 10. Expression, QTL and pangenome-GWAS | main |
| [V128](PANGENOME_CATALOG.md#L255) | Tomato SVs and expression | 10. Expression, QTL and pangenome-GWAS | main |
| [V129](PANGENOME_CATALOG.md#L256) | Oat pangenome + pantranscriptome | 10. Expression, QTL and pangenome-GWAS | main |
| [V131](PANGENOME_CATALOG.md#L267) | Grapevine SV domestication | 11. Evolution, ancestry and introgression | main |
| [V132](PANGENOME_CATALOG.md#L268) | Grapevine clone diversification | 11. Evolution, ancestry and introgression | main |
| [V137](PANGENOME_CATALOG.md#L273) | NA Vitis wild introgression | 11. Evolution, ancestry and introgression | main |
| [V138](PANGENOME_CATALOG.md#L283) | Grapepan v1.0 | 12. Vitis pangenome studies and public resources | main |
| [V139](PANGENOME_CATALOG.md#L284) | Vitis super-pangenome | 12. Vitis pangenome studies and public resources | main |
| [V140](PANGENOME_CATALOG.md#L285) | Cultivated grapevine pangenome (G3) | 12. Vitis pangenome studies and public resources | main |
| [V141](PANGENOME_CATALOG.md#L286) | Vitis amurensis graph (Vampan) | 12. Vitis pangenome studies and public resources | main |
| [V142](PANGENOME_CATALOG.md#L287) | NA Vitis super-pangenome | 12. Vitis pangenome studies and public resources | main |
| [V145](PANGENOME_CATALOG.md#L290) | Grapevine pangenome review (Horticulturae) | 12. Vitis pangenome studies and public resources | main |
| [V146](PANGENOME_CATALOG.md#L291) | Graph pangenomes in polyploid crops (review) | 12. Vitis pangenome studies and public resources | main |
| [V151](PANGENOME_CATALOG.md#L305) | HPRC draft pangenome | 13. Workflows and pipelines | main |
| [V152](PANGENOME_CATALOG.md#L306) | Rice pangenome reference (wild + cultivated) | 13. Workflows and pipelines | main |
| [VS013](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs013) | Inversions in pangenome graphs | 4b. Variant discovery (b): structural variants | supplement 1 |
| [VS019](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs019) | Plant graph genotyper benchmark + ensemble | 5. Cohort genotyping and read-to-graph mapping (known sites) | supplement 1 |
| [VS026](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs026) | PanOryza pangene catalog | 7. Graph-aware gene presence and family copy-number | supplement 1 |
| [VS027](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs027) | Melon pan-NLRome graph | 7. Graph-aware gene presence and family copy-number | supplement 1 |
| [VS028](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs028) | NLR neighborhoods by graph traversal (Arabidopsis) | 7. Graph-aware gene presence and family copy-number | supplement 1 |
| [VS031](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs031) | Popping bubbles (arXiv) | 8. Graph analysis, indexing and formats | supplement 1 |
| [VS032](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs032) | Cataloging variants in pangenome graphs (pantree) [待确认] | 8. Graph analysis, indexing and formats | supplement 1 |
| [VS045](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs045) | Phased epigenomics in a Vitis hybrid | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS046](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs046) | Clonal genome-methylome map in grapevine | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS047](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs047) | Barley pan-transcriptome | 10a. Expression and epigenome layers on the pangenome | supplement 1 |
| [VS053](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs053) | Cucumber graph pangenome in breeding | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS054](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs054) | SV vs SNP genomic selection in rice | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS055](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs055) | Pan-genome PAV in gene-bank genomic prediction | 10b. QTL, pangenome-GWAS and genomic prediction | supplement 1 |
| [VS059](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs059) | Dual domestication of grapevine | 11. Evolution, ancestry and introgression | supplement 1 |
| [VS060](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs060) | Clonal diversity in grapevine (review) | 11. Evolution, ancestry and introgression | supplement 1 |
| [VS065](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs065) | Wild side of grape genomics (review) | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS066](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs066) | Grape family phylogenomics | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS068](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs068) | Grapevine sex determination | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS074](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs074) | Pangenome graphs review | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS075](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs075) | Plant T2T methods review | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS076](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs076) | Potato wild/cultivated genomes | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS077](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs077) | Rice super pan-genome | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS078](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs078) | Barley pangenome | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS079](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs079) | Arabidopsis 69 accessions | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS080](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs080) | Cucumber graph pan-genome | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS081](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs081) | Maize 26 genomes (NAM) | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS082](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs082) | Soybean pan-genome | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS083](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs083) | Wheat multiple genomes | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS084](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs084) | Pearl millet pangenome (heat tolerance) | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS085](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs085) | Apple haplotype-resolved genomes (rootstock dwarfing) | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS086](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs086) | Eggplant graph pangenomes + pan-phenome | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS087](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs087) | What are we learning from plant pangenomes? | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS088](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs088) | From structural pangenomes to functional panomics | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS089](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs089) | Pangenomes for large/complex plant genomes | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |
| [VS090](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs090) | Complexity welcome (review) | 15. Peer plant pangenome studies and reviews (new section in this supplement) | supplement 1 |

### idea (16)

| ID | Name | Section | Source |
|---|---|---|---|
| [V021](PANGENOME_CATALOG.md#L69) | PanSN-spec | 2. Graph construction | main |
| [V022](PANGENOME_CATALOG.md#L70) | Chromosome-level graph partitioning | 2. Graph construction | main |
| [V036](PANGENOME_CATALOG.md#L93) | Leave-one-out haplotype benchmark | 3. Assembly and graph QC before genotyping | main |
| [V040](PANGENOME_CATALOG.md#L108) | Heaps law openness | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V057](PANGENOME_CATALOG.md#L130) | SV size and class taxonomy | 4. Variant discovery: sequence PAV, structural variants and TE insertions | main |
| [V094](PANGENOME_CATALOG.md#L194) | Gene-level vs sequence-level PAV | 7. Graph-aware gene presence and family copy-number | main |
| [V100](PANGENOME_CATALOG.md#L209) | Snarl decomposition | 8. Graph analysis, indexing and formats | main |
| [V136](PANGENOME_CATALOG.md#L272) | Haplotype-aware phylogenomics | 11. Evolution, ancestry and introgression | main |
| [V153](PANGENOME_CATALOG.md#L316) | COSIGT on ancient grape seeds [待确认] | 14. Ideas still untested on Vitis | main |
| [V154](PANGENOME_CATALOG.md#L317) | Berry-colour locus graph (VvMybA1) | 14. Ideas still untested on Vitis | main |
| [V155](PANGENOME_CATALOG.md#L318) | Pangenome foundation models | 14. Ideas still untested on Vitis | main |
| [V159](PANGENOME_CATALOG.md#L322) | Graph-node GWAS + eQTL fusion | 14. Ideas still untested on Vitis | main |
| [V160](PANGENOME_CATALOG.md#L323) | Clone-level pangenome | 14. Ideas still untested on Vitis | main |
| [V161](PANGENOME_CATALOG.md#L324) | Implicit-graph locus atlas | 14. Ideas still untested on Vitis | main |
| [V162](PANGENOME_CATALOG.md#L325) | Personalized-graph scaffolding [待确认] | 14. Ideas still untested on Vitis | main |
| [VS073](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs073) | Pan-proteome with predicted structures (barley abstract) | 14. Ideas still untested on Vitis | supplement 1 |

### resource (6)

| ID | Name | Section | Source |
|---|---|---|---|
| [VS061](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs061) | PN_T2T reference | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS062](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs062) | Pierre et al. data deposit | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS063](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs063) | Muscadinia rotundifolia Trayshed diploid assembly | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS064](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs064) | Muscadine Carlos assembly + pan-genome | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS069](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs069) | VitExpress + haplotype-resolved assembly | 12. Vitis pangenome studies and public resources | supplement 1 |
| [VS070](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs070) | Munage haplotype-resolved assemblies | 12. Vitis pangenome studies and public resources | supplement 1 |

### format (1)

| ID | Name | Section | Source |
|---|---|---|---|
| [VS033](PANGENOME_CATALOG_SUPPLEMENT_1.md#vs033) | GFA specification | 8. Graph analysis, indexing and formats | supplement 1 |
