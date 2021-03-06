% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ffTrack.R
\name{seq2fft}
\alias{seq2fft}
\title{seq2fft}
\usage{
seq2fft(seq, fftpath, nnuc = 0, dict = NULL, chrsub = TRUE, neg = FALSE,
  region = NULL, mc.cores = 1, verbose = FALSE, buffer = 1e+05,
  skip.sweep = FALSE, vmode = "ubyte", min.gapwidth = 1000)
}
\arguments{
\item{seq}{BSGenome object, ffTrack object representing genomic sequence, or (not yet supported) FASTA file}

\item{fftpath}{path to ffTrack .rds that will be created by this}

\item{nnuc}{how many nucleotides to left and right to enumerate}

\item{dict}{this should be a character vector or DNAStringSet, overrides nnuc arg if not null}

\item{chrsub}{whether to sub in / sub out 'chr' when accessing seq file}

\item{neg}{whether to analyze sequence data on negative strand (i.e. motifs will be analyzed in rev complement)}

\item{region}{GRanges specifying regions to limit ffTrack computation to (default is whole genome, ie seqnames of BigWig file)}

\item{mc.cores}{currently mc.cores can only be one (weird mclapply bug when running)}

\item{verbose}{logical flag}

\item{buffer}{integer size of how big of a buffer to use when transferring data from BigWig to ffTrack object; number of bases to access at a time}

\item{skip.sweep}{logical flag (default FALSE) if TRUE will skip the sweep of "region" for the portions that have non-NA values; if TRUE will not sweep for covered region, just make a whole genome file or a file across provided regions}

\item{vmode}{character specifyhing vmode to use for encoding (by default double)}

\item{min.gapwidth}{minimum gap-width with which to merge reference adjacent intervals, this will mildly increase the file size but reduce the range complexity of the GRanges object; flank (to reduce the range complexity of the ffdata skeleton, but increase file size)}
}
\value{
ffTrack object corresponding to the data in the BigWig file
}
\description{
Creates ffTrack object from BSGenome or FASTA (coming soon) file

## will either convert (1) raw sequence (2) k-nucleotide context centered around base or (3) motifs defined by some dictionary (anchored at first base) into leveled ffTrack (i.e. integer track with populated levels field)
}
