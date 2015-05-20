#! /bin/bash

##script to executle BLASTtoGff_50percent.py
## Run on May7th at 5:15 pm 2015
## Will use as final results for genome paper gene presence absence

cd /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly
##Use python script to make gff files and fasta files for each gene from each Spades denovo assembly
~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI320.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI320.blastn.out  -g WAI320.50percent.out.gff -o WAI320.50percent.out.fasta
#sort the gff file by gene number to get the gene in the order that they occur accross the genome
cat WAI320.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI320.50percent.sorted.out.gff
#add back in the original Zt_RRes which was removed in the previous step to allow proper sorting
cat WAI320.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI320.50percent.sorted2.out.gff


~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI321.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI321.blastn.out  -g WAI321.50percent.out.gff -o WAI321.50percent.out.fasta
cat WAI321.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI321.50percent.sorted.out.gff
cat WAI321.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI321.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI322.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI322.blastn.out  -g WAI322.50percent.out.gff -o WAI322.50percent.out.fasta
cat WAI322.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI322.50percent.sorted.out.gff
cat WAI322.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI322.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI323.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI323.blastn.out  -g WAI323.50percent.out.gff -o WAI323.50percent.out.fasta
cat WAI323.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI323.50percent.sorted.out.gff
cat WAI323.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI323.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI324.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI324.blastn.out  -g WAI324.50percent.out.gff -o WAI324.50percent.out.fasta
cat WAI324.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI324.50percent.sorted.out.gff
cat WAI324.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI324.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI326.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI326.blastn.out  -g WAI326.50percent.out.gff -o WAI326.50percent.out.fasta
cat WAI326.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI326.50percent.sorted.out.gff
cat WAI326.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI326.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI327.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI327.blastn.out  -g WAI327.50percent.out.gff -o WAI327.50percent.out.fasta
cat WAI327.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI327.50percent.sorted.out.gff
cat WAI327.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI327.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI328.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI328.blastn.out  -g WAI328.50percent.out.gff -o WAI328.50percent.out.fasta
cat WAI328.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI328.50percent.sorted.out.gff
cat WAI328.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI328.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/WAI329.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/WAI329.blastn.out  -g WAI329.50percent.out.gff -o WAI329.50percent.out.fasta
cat WAI329.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI329.50percent.sorted.out.gff
cat WAI329.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI329.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/ST79.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/ST79.blastn.out  -g WAI332.50percent.out.gff -o WAI332.50percent.out.fasta
cat WAI332.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI332.50percent.sorted.out.gff
cat WAI332.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' >WAI332.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/ST147.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/ST147.blastn.out  -g WAI147.50percent.out.gff -o WAI147.50percent.out.fasta
cat WAI147.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI147.50percent.sorted.out.gff
cat WAI147.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI147.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/ST55.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/ST55.blastn.out  -g WAI55.50percent.out.gff -o WAI55.50percent.out.fasta
cat WAI55.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI55.50percent.sorted.out.gff
cat WAI55.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI55.50percent.sorted2.out.gff

~/GIT/Z.tritici-gene-presence-absence/BLASTtoGFF_50percent.py -i /Users/meganm/Genomes/IPO323/Zym_jason_annotation/10688_proteins_JV1.fasta -r /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/ST56.spades.fa \
-b /Volumes/Solomon_Lab/Megan/Spades_3.5_assembly/blastout/ST56.blastn.out  -g WAI56.50percent.out.gff -o WAI56.50percent.out.fasta
cat WAI56.50percent.out.gff | awk -F ZtRRes_ '{print $1 $2 }' | sort -k2 > WAI56.50percent.sorted.out.gff
cat WAI56.50percent.sorted.out.gff | awk '{print $1 "\tZtRRes_"$2"\t"$3"\t"$4}' > WAI56.50percent.sorted2.out.gff 
