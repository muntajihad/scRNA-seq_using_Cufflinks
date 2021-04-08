#!/bin/bash

gtf=r1=/path/to/GENCODE.gtf

cuffquant --no-update-check -p 8 -o cell_01_cuffqout $gtf cell_01_topout/accepted_hits.bam
cuffquant --no-update-check -p 8 -o cell_02_cuffqout $gtf cell_02_topout/accepted_hits.bam
cuffquant --no-update-check -p 8 -o cell_03_cuffqout $gtf cell_03_topout/accepted_hits.bam
cuffquant --no-update-check -p 8 -o cell_04_cuffqout $gtf cell_04_topout/accepted_hits.bam

# for each sample a"cuffqout" folder that contains "abundance.cxb" will be generated ()
# the path to abundance.cxb of each sample will be used in sample_sheet.txt
# next use cuffnorm