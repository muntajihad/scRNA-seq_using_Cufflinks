#!/bin/bash

# working directory is RNA_trimmed_data
# paired end samples are named as: cell_##_R1.fastq.gz and cell_##_R2.fastq.gz

gtf=/path/to/GENCODE.gtf
genome=/path/to/reference_genome #indexed by Bowtie

for i in (ls *.gz | cut -c -5 | uniq);
do
tophat -p 8 -o ${i}topout -G $gtf $genome ${i}R1.fastq.gz {i}R2.fastq.gz;
done

# At the end of the process "topout" folder will be generated for each sample contains multiple files.
# "accepted_hits.bam" file of each sample will be used in Cufflinks pipeline
# Next, cuffquant will be used
