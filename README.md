# scRNA-seq analysis using Cufflinks
### Topha-Cufflinks pipeline for single-cell RNA-seq analysis

> reference: http://cole-trapnell-lab.github.io/cufflinks/

Pipeline steps:
1. Tophat
2. Cuffquant
3. Cuffnorm

**At the end of the pipeline Cuffnorm will generate folder contains multiple "table" files that are ready to be analyzed in R by [Monocle](https://cole-trapnell-lab.github.io/monocle3/) or any other package**
