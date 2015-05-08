#! /bin/bash

##script to executle BLASTtoGFF_50percent.py
## Run on May7th at 5:15 pm 2015
## Will use as final results for genome paper gene presence absence

cd /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence
##Use python script to make gff files and fasta files for each gene from each Spades denovo assembly
~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI320.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI320.blastn.out  -g WAI320.25percent.out.gff -o WAI320.25percent.out.fasta -p 25
#sort the gff file by gene number to get the gene in the order that they occur accross the genome
cat WAI320.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI320.25percent.sorted.out.gff
#add back in the original Zt_RRes which was removed in the previous step to allow proper sorting
cat WAI320.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI320.25percent.sorted2.out.gff


~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI321.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI321.blastn.out  -g WAI321.25percent.out.gff -o WAI321.25percent.out.fasta -p 25
cat WAI321.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI321.25percent.sorted.out.gff
cat WAI321.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI321.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI322.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI322.blastn.out  -g WAI322.25percent.out.gff -o WAI322.25percent.out.fasta -p 25
cat WAI322.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI322.25percent.sorted.out.gff
cat WAI322.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI322.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI323.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI323.blastn.out  -g WAI323.25percent.out.gff -o WAI323.25percent.out.fasta -p 25
cat WAI323.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI323.25percent.sorted.out.gff
cat WAI323.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI323.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI324.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI324.blastn.out  -g WAI324.25percent.out.gff -o WAI324.25percent.out.fasta -p 25
cat WAI324.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI324.25percent.sorted.out.gff
cat WAI324.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI324.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI326.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI326.blastn.out  -g WAI326.25percent.out.gff -o WAI326.25percent.out.fasta -p 25
cat WAI326.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI326.25percent.sorted.out.gff
cat WAI326.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI326.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI327.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI327.blastn.out  -g WAI327.25percent.out.gff -o WAI327.25percent.out.fasta -p 25
cat WAI327.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI327.25percent.sorted.out.gff
cat WAI327.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI327.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI328.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI328.blastn.out  -g WAI328.25percent.out.gff -o WAI328.25percent.out.fasta -p 25
cat WAI328.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI328.25percent.sorted.out.gff
cat WAI328.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI328.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/WAI329.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/WAI329.blastn.out  -g WAI329.25percent.out.gff -o WAI329.25percent.out.fasta -p 25
cat WAI329.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI329.25percent.sorted.out.gff
cat WAI329.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI329.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/ST79.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/ST79.blastn.out  -g WAI332.25percent.out.gff -o WAI332.25percent.out.fasta -p 25
cat WAI332.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI332.25percent.sorted.out.gff
cat WAI332.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI332.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/ST147.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/ST147.blastn.out  -g WAI147.25percent.out.gff -o WAI147.25percent.out.fasta -p 25
cat WAI147.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI147.25percent.sorted.out.gff
cat WAI147.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI147.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/ST55.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/ST55.blastn.out  -g WAI55.25percent.out.gff -o WAI55.25percent.out.fasta -p 25
cat WAI55.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI55.25percent.sorted.out.gff
cat WAI55.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI55.25percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_assembly/Complete_genomes/ST56.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_assembly/RRes_anno_pres_absence/ST56.blastn.out  -g WAI56.25percent.out.gff -o WAI56.25percent.out.fasta -p 25
cat WAI56.25percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI56.25percent.sorted.out.gff
cat WAI56.25percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI56.25percent.sorted2.out.gff 
