#!/bin/bash

# working directory is composed of "topout" folders for each samplels

gtf=r1=/path/to/GENCODE.gtf

for i in ls *:
do
cuffquant --no-update-check -p 8 -o ${i}_cuffqout $gtf ${i}/accepted_hits.bam


# for each sample a "cuffqout" folder that contains "abundance.cxb" will be generated ()
# the path to abundance.cxb of each sample will be used in sample_sheet.txt
# next use cuffnorm
