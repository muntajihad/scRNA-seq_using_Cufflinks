#!/bin/bash

gtf=/path/to/GENCODE.gtf
samplesheet=/path/to/sample_sheet.txt

cuffnorm --no-update-check -p 8 --use-sample-sheet -o final_out $gtf $samplesheet

# This will generate "final_out" folder containing multiple files that are ready to be used in R 
