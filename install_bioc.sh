#!/bin/bash

Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("BiocInstaller"); biocLite("BSgenome.Hsapiens.UCSC.hg19"); biocLite("Biostrings"); biocLite("VariantAnnotation"); biocLite("RCytoscape"); biocLite("graph"); install.packages("devtools"); biocLite("GenomicRanges"); devtools::install_github("mskilab/gUtils")'
