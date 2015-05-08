#! /usr/bin/env python


### make a gDNA file out of a gff3 file 

###Import modules
import csv
import sys
import argparse
from Bio import SeqIO
from Bio.Seq import Seq
from collections import defaultdict
import subprocess


def main(inGff=None, refFasta=None, outFasta=None):

	#open fasta file from commandline
	#fasta_file=open("test.fasta",'w')
	fasta_file=open(outFasta,'w')

	# Open Gff3 file to be parsed
	#gff=open("~/Genomes/IPO323/Zym_jason_annotation/Jason_EBI_Annotation2.gff3", "rt")
	gff=open(inGff, "rt")

	#Initialise dictionary
	d=defaultdict(dict)

	#Initialize empty list to parse gff file into
	gfflist=[]
	#start looking through original gff line by line
	#you gff3 file should look like the line below. If not, you need to adjust the code to match your gff file
	#the program will only work for gff file with EXONS only
	#chrom prog cod start stop dummy1 dummy2 dummy3 name geneid
	#1	maker	CDS	2074175	2074294	.	+	2	ID=ZtRRes_00587
	
	#Populate gfflist with the unique geneid, start stop for each exon and the chromosome number (geneid, start,stop,chrom)
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
		gfflist.append((geneid,start,stop,chrom))
		
		

	for k, v, x, z in gfflist:
		if k not in d:
			d[k]["bases"]=list()
			d[k]["CHR"]=list()
			d[k]["CHR"].append(z)
		d[k]["bases"].append(v)
		d[k]["bases"].append(x)



	gene={}
	for key in d:
		startbase=min(d[key]["bases"])
		endbase=max(d[key]["bases"])
		c1=d[key]["CHR"][0]
		p1=subprocess.call(["samtools faidx "+refFasta+" "+c1+":"+startbase+"-"+endbase+"> temp.fasta"], shell=True)
		temp_file=open('temp.fasta', 'r')
		for seq_record in SeqIO.parse(temp_file, 'fasta'):
			gene[key]=str(seq_record.seq)
		

	for key, value in gene.iteritems():
		fasta_file.write('>'+key+'\n')
		fasta_file.write(value+'\n')

	
	gff.close()
	fasta_file.close()

if __name__== '__main__':
	###Argument handling.
	arg_parser = argparse.ArgumentParser(
		description='Takes gff3 file that contains coding exons ONLY and finds the start stop \
		coordinates for each gene. Then uses this information to extract the gDNA fasta file\
		from the reference genome provided')
	arg_parser.add_argument("-i", "--inGff", default=None, required=True, help="Provide the path to the Gff file containing coding exons ONLY")
	arg_parser.add_argument("-r", "--inRef", default=None, required=True, help="Provide the reference genome to extract sequence from using samtools faidx")
	arg_parser.add_argument("-o", "--outFasta", default=None, required=True, help="Provide output file name, will be written to current directory if full path is not provided")
	if len(sys.argv)==1:
		arg_parser.print_help()
		sys.exit(1)
		
	#Parser arguments
	args=arg_parser.parse_args()
	
	##Variable Definitions
	inGff=args.inGff
	refFasta=args.inRef
	outFasta=args.outFasta
	
	main(inGff, refFasta, outFasta)
