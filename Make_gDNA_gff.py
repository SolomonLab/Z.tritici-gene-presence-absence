#! /usr/bin/env python


### make a gDNA file out of a gff3 file 

###Import modules
import csv
import sys
import argparse
from Bio import SeqIO
from Bio.Seq import Seq
from os.path import basename
from collections import defaultdict
import subprocess

outFasta="test.fa.out"
# Open output fasta file
fasta_file=open(outFasta,'w')

# Open Gff3 file to be parsed
gff=open("/Users/meganm/Genomes/IPO323/Zym_jason_annotation/Jason_EBI_Annotation2.gff3", "rt")

#Initialise dictionary
d=defaultdict(list)
c=defaultdict(list)
gfflist=[]
genechrom=[]
#start looking through original gff
reader = csv.reader(gff,dialect="excel-tab")
for line in reader:
	chrom="chr_"+line[0]
	prog=line[1]
	cod=line[2]
	start=line[3]
	stop=line[4]
	dummy1=line[5]
	dummy2=line[6]
	dummy3=line[7]
	name=line[8]
	geneid=name[3:]
	gfflist.append((geneid,start,stop))
	genechrom.append((geneid,chrom))

for k, v, x in gfflist:
	d[k].append(v)
	d[k].append(x)

for m, n in genechrom:
	c[m].append(n)


for key in d:
	d[key].append(c[key][0])


gene={}
for key in d:
	startbase=min(d[key][0:-1])
	endbase=max(d[key][0:-1])
	p1=subprocess.call(["samtools faidx /Users/meganm/Genomes/IPO323/Mycosphaerella_graminicola.allmasked.fa "+d[key][-1]+":"+startbase+"-"+endbase+"> temp.fasta"], shell=True)
	temp_file=open('temp.fasta', 'r')
	for seq_record in SeqIO.parse(temp_file, 'fasta'):
		gene[key]=str(seq_record.seq)
		


for key in gene:
	fasta_file.write(gene[key]+'\n')
	fasta_file.write(gene[key][0]+'\n')
	
	
gff.close()
fasta_file.close()
	