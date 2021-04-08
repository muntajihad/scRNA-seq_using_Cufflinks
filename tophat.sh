#!/bin/bash

gtf=/path/to/GENCODE.gtf
genome=/path/to/reference_genome #indexed by Bowtie

tophat -p 8 -o cell_01_topout -G $gtf $genome cell_01.R1.fastq.gz cell_01.R2.fastq.gz
tophat -p 8 -o cell_02_topout -G $gtf $genome cell_02.R1.fastq.gz cell_02.R2.fastq.gz
tophat -p 8 -o cell_03_topout -G $gtf $genome cell_03.R1.fastq.gz cell_03.R2.fastq.gz
tophat -p 8 -o cell_04_topout -G $gtf $genome cell_04.R1.fastq.gz cell_04.R2.fastq.gz


# At the end of the process "topout" folder will be generated for each sample contains multiple files.
# "accepted_hits.bam" file of each sample will be used in Cufflinks pipeline.

#Next, cuffquant will be used