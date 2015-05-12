#! /bin/bash

samtools view -b /Volumes/Solomon_Lab/Megan/GATK/WAI320.realign.bam | intersectBed -abam stdin -b ~/Genomes/IPO323/Zym_jason_annotation/10688_gDNA_sorted.bed -bed



intersectBed -wb -abam /Volumes/Solomon_Lab/Megan/GATK/WAI320.realign.bam -b ~/Genomes/IPO323/Zym_jason_annotation/10688_gDNA_sorted.bed -bed 

coverageBed -abam /Volumes/Solomon_Lab/Megan/GATK/WAI320.realign.bam -b ~/Genomes/IPO323/Zym_jason_annotation/10688_gDNA_sorted.bed -hist> WAI320.covbed.hist
grep "all" WAI320.covbed.hist > WAI320.covpergene.hist

coverageBed -abam /Volumes/Solomon_Lab/Megan/GATK/WAI320.realign.bam -b ~/Genomes/IPO323/Zym_jason_annotation/10688_gDNA_sorted.bed > WAI320.covbed.bed
cat WAI320.covbed.bed | awk -F ZtRRes_ '{print $1 $2}' | sort -k 4 | awk '{print $1"\t"$2"\t"$3"\tZtRRes_"$4"\t"$5"\t"$6"\t"$7"\t"$8}' > WAI320.sorted.covbed.bed
cat WAI320.sorted.covbed.bed | awk '$8 <= 0.5000' | grep -c ZtRRes

samtools view -uf 0x2 /Volumes/Solomon_Lab/Megan/GATK/WAI320.realign.bam > paired.bam
coverageBed -abam paired.bam -b ~/Genomes/IPO323/Zym_jason_annotation/10688_gDNA_sorted.bed > gdna.bed.proper.coverage
cat gdna.bed.proper.coverage | awk -F ZtRRes_ '{print $1 $2}' | sort -k 4 | awk '{print $1"\t"$2"\t"$3"\tZtRRes_"$4"\t"$5"\t"$6"\t"$7"\t"$8}' > WAI320.sorted.proper.bed
cat WAI320.sorted.proper.bed | awk '$8 <= 0.5000' | grep -c ZtRRes