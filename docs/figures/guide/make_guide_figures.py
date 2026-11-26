# Draws the two schematic guide figures (03 and 04) for docs/figures/guide/.
# Deterministic: same Pillow version and DejaVu fonts give the same PNG bytes.
# Usage: python3 make_guide_figures.py OUTDIR   (licence: MIT, see LICENSE)
import sys, os
from PIL import Image, ImageDraw, ImageFont
OUT=sys.argv[1]
F='/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf'; FB='/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
# Verified with Pillow 12.3.0, FreeType 2.14.3 and DejaVu Sans 2.37 (fonts-dejavu-core).
def font(s,b=False):
    path=FB if b else F
    for p in (path, os.path.basename(path)):
        try: return ImageFont.truetype(p, s)
        except OSError: pass
    sys.stderr.write("DejaVu Sans not found; using the Pillow default font (output will not be byte-identical)\n")
    return ImageFont.load_default(s)
COL=['#1b6ca8','#e07b39','#3a9d5d','#8e5ea2']
GREY='#555555'
def save(img,name):
    p=os.path.join(OUT,name)
    if os.path.exists(p): raise SystemExit('exists '+p)
    img.save(p,optimize=False); print(p)

# Figure A: one graph, four kinds of variation, and a gene presence matrix
W,H=1600,980
im=Image.new('RGB',(W,H),'white'); d=ImageDraw.Draw(im)
d.text((40,25),'Pangenome concepts on one graph (schematic)',font=font(34,True),fill='black')
d.text((40,75),'Shared sequence = grey node; each coloured line = one haplotype path; a bubble = a variant site',font=font(22),fill=GREY)
y0=300; xs=[60,300,560,860,1180,1520]
def node(x,y,w=110,h=46,fill='#d9d9d9',label=''):
    d.rounded_rectangle([x,y-h//2,x+w,y+h//2],radius=10,fill=fill,outline='black',width=2)
    if label: d.text((x+w/2,y),label,font=font(20,True),fill='black',anchor='mm')
# backbone nodes
for i,x in enumerate(xs): node(x,y0,w=80)
# bubble 1 SNP between xs0 and xs1
node(170,y0-80,w=60,fill='#ffffff',label='A'); node(170,y0+80,w=60,fill='#ffffff',label='G')
# bubble 2 insertion (PAV)
node(400,y0-90,w=110,fill='#fff3c4',label='+ seq')
# bubble 3 duplication (CNV): loop back edge
node(660,y0-90,w=120,fill='#e3f1e3',label='gene g')
# bubble 4 inversion
node(990,y0-80,w=110,fill='#ead9f0',label='>>>'); node(990,y0+80,w=110,fill='#ead9f0',label='<<<')
# paths
def path(pts,c,off):
    pts=[(x,y+off) for x,y in pts]; d.line(pts,fill=c,width=5,joint='curve')
P=[ # hap1: ref-like
 [(100,y0),(170+30,y0-80),(340,y0),(600,y0),(900,y0),(990+55,y0-80),(1220,y0),(1560,y0)],
 [(100,y0),(170+30,y0+80),(340,y0),(400+55,y0-90),(600,y0),(660+60,y0-90),(860,y0),(990+55,y0+80),(1220,y0),(1560,y0)],
 [(100,y0),(170+30,y0-80),(340,y0),(400+55,y0-90),(600,y0),(660+60,y0-90),(820,y0-140),(620,y0-140),(660+60,y0-90),(900,y0),(990+55,y0-80),(1220,y0),(1560,y0)],
 [(100,y0),(170+30,y0+80),(340,y0),(600,y0),(900,y0),(990+55,y0+80),(1220,y0),(1560,y0)],
]
for i,p in enumerate(P): path(p,COL[i],(i-1.5)*5)
for i,x in enumerate(xs): node(x,y0,w=80)
node(170,y0-80,w=60,fill='#ffffff',label='A'); node(170,y0+80,w=60,fill='#ffffff',label='G')
node(400,y0-90,w=110,fill='#fff3c4',label='+ seq'); node(660,y0-90,w=120,fill='#e3f1e3',label='gene g')
node(990,y0-80,w=110,fill='#ead9f0',label='>>>'); node(990,y0+80,w=110,fill='#ead9f0',label='<<<')
labs=[(200,'SNP'),(455,'PAV / indel'),(720,'copy number'),(1045,'inversion')]
for x,t in labs: d.text((x,y0+150),t,font=font(24,True),fill='black',anchor='mm')
d.text((720,y0+182),'(hap 3 loops: 2 copies)',font=font(18),fill=GREY,anchor='mm')
d.text((455,y0+182),'(absent in hap 1, 4)',font=font(18),fill=GREY,anchor='mm')
for i in range(4):
    d.line([(1250,140+i*34),(1300,140+i*34)],fill=COL[i],width=6); d.text((1312,140+i*34),'haplotype %d'%(i+1),font=font(20),fill='black',anchor='lm')
d.text((40,500),'A linear reference keeps only one path (here haplotype 1): reads from the inserted',font=font(22),fill=GREY)
d.text((40,530),'sequence have nowhere to map. This is one source of reference bias.',font=font(22),fill=GREY)
# gene PAV matrix
d.text((40,590),'Gene presence/absence across haplotypes',font=font(28,True),fill='black')
genes=['g1','g2','g3','g4','g5','g6','g7','g8']
M=[[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,0],[1,0,1,1],[0,1,1,0],[0,0,1,0],[1,0,0,0]]
cx,cy,cs=160,650,52
for j in range(4): d.text((cx+j*cs+cs/2,cy-8),'h%d'%(j+1),font=font(20,True),fill=COL[j],anchor='mb')
for i,g in enumerate(genes):
    d.text((cx-14,cy+i*36+18),g,font=font(20),fill='black',anchor='rm')
    for j in range(4):
        f='#2f4f6f' if M[i][j] else '#f2f2f2'
        d.rectangle([cx+j*cs+2,cy+i*36+2,cx+(j+1)*cs-2,cy+(i+1)*36-2],fill=f,outline='#999999')
bx=cx+4*cs+30
d.line([(bx,cy+4),(bx,cy+3*36-4)],fill='black',width=3); d.text((bx+12,cy+54),'core: in every haplotype',font=font(22),fill='black',anchor='lm')
d.line([(bx,cy+3*36+4),(bx,cy+8*36-4)],fill='black',width=3); d.text((bx+12,cy+3*36+90),'dispensable: missing from some',font=font(22),fill='black',anchor='lm')
d.text((bx+12,cy+3*36+120),'(shell; cloud if in one only)',font=font(18),fill=GREY,anchor='lm')
tx=900
for k,t in enumerate(['Keep two layers apart:','  sequence PAV = bases or windows on the graph','  gene PAV = gene models present or absent','A gene called absent may only be unannotated:','  project one annotation onto every haplotype','  before calling it missing.']):
    d.text((tx,650+k*36),t,font=font(22,k in (0,3)),fill='black')
d.text((40,H-40),'Schematic made for this repository; toy data, not results. CC BY 4.0.',font=font(18),fill=GREY)
save(im,'03_concepts_on_one_graph.png')

# Figure B: reference route
W,H=1600,1000
im=Image.new('RGB',(W,H),'white'); d=ImageDraw.Draw(im)
d.text((40,25),'Reference route through this repository (schematic)',font=font(34,True),fill='black')
d.text((40,75),'Each step: name, catalogue section, example scripts in pipeline/. Dashed outline: optional branch.',font=font(22),fill=GREY)
steps=[('1. Phased assemblies','section 1','hifiasm, Verkko; then PanSN names (01-03)'),
('2. Assembly QC','section 3','Merqury, BUSCO/compleasm'),
('3. Build the graph','section 2','PGGB (04) or Minigraph-Cactus (12)'),
('4. Graph QC','section 3','odgi + panacus (16)'),
('5. Variants from the graph','section 4','vg deconstruct (05), panacus (06), SyRI (10)'),
('6. Genotype a cohort','section 5','vg Giraffe + vg call (14), PanGenie (15)'),
('7. Gene PAV and copy number','section 7','Liftoff/miniprot, pangene, OrthoFinder'),
('8. Visualise','section 9','odgi viz, BandageNG, SequenceTubeMap'),
('9. Link to traits','section 10','GWAS, eQTL on graph genotypes')]
bw,bh=700,78
for i,(a,b,c) in enumerate(steps):
    col=i%2; row=i//2
    x=60+col*780; y=140+row*165
    if i==8: x=60+390
    dash = i in (6,8)
    d.rounded_rectangle([x,y,x+bw,y+bh],radius=14,fill='#eef4fa' if not dash else '#ffffff',outline='#1b6ca8',width=3)
    if dash:
        for k in range(x+10,x+bw-10,24): d.line([(k,y),(k+12,y)],fill='white',width=4); d.line([(k,y+bh),(k+12,y+bh)],fill='white',width=4)
    d.text((x+18,y+12),a,font=font(26,True),fill='black')
    d.text((x+bw-18,y+14),b,font=font(20),fill='#1b6ca8',anchor='ra')
    d.text((x+18,y+48),c,font=font(20),fill=GREY)
# arrows
def arrow(p,q):
    d.line([p,q],fill='black',width=3)
    import math
    a=math.atan2(q[1]-p[1],q[0]-p[0]); L=16
    d.polygon([q,(q[0]-L*math.cos(a-0.4),q[1]-L*math.sin(a-0.4)),(q[0]-L*math.cos(a+0.4),q[1]-L*math.sin(a+0.4))],fill='black')
for i in range(8):
    c1,r1=i%2,i//2; c2,r2=(i+1)%2,(i+1)//2
    x1=60+c1*780; y1=140+r1*165; x2=60+c2*780; y2=140+r2*165
    if i+1==8: x2=60+390
    if c1==0 and c2==1 and r1==r2: arrow((x1+bw,y1+bh/2),(x2,y2+bh/2))
    else: arrow((x1+bw/2,y1+bh),(x2+bw/2,y2))
d.text((40,H-80),'Steps 3-6 are the default path; graph genotypers only type sites already in the graph.',font=font(20),fill=GREY)
d.text((40,H-45),'Schematic made for this repository. CC BY 4.0.',font=font(18),fill=GREY)
save(im,'04_reference_route.png')
