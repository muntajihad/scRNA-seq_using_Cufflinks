#!/bin/bash

gtf=/path/to/GENCODE.gtf

cuffnorm --no-update-check -p 8 --use-sample-sheet -o final_out $gtf sample_sheet.txt

# This will generate "final_out" folder containing multiple files that are ready to be used in R (by Monocole)
# Monocle: https://cole-trapnell-lab.github.io/monocle3/
