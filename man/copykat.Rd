% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/copykat.R
\name{copykat}
\alias{copykat}
\title{copycat main_func.}
\usage{
copykat(
  rawmat = rawdata,
  id.type = "S",
  cell.line = "no",
  ngene.chr = 5,
  min.gene.per.cell = 200,
  LOW.DR = 0.05,
  UP.DR = 0.1,
  win.size = 25,
  norm.cell.names = "",
  KS.cut = 0.1,
  sam.name = "",
  distance = "euclidean",
  output.seg = "FALSE",
  plot.genes = "TRUE",
  genome = "hg20",
  n.cores = 1
)
}
\arguments{
\item{rawmat}{raw data matrix; genes in rows; cell names in columns.}

\item{id.type}{gene id type: Symbol or Ensemble.}

\item{cell.line}{if the data are from pure cell line,put "yes"; if cell line data are a mixture of tumor and normal cells, still put "no".}

\item{ngene.chr}{minimal number of genes per chromosome for cell filtering.}

\item{min.gene.per.cell, }{default 200}

\item{LOW.DR}{minimal population fractions of genes for smoothing.}

\item{UP.DR}{minimal population fractions of genes for segmentation.}

\item{win.size}{minimal window sizes for segmentation.}

\item{norm.cell.names}{a vector of normal cell names.}

\item{KS.cut}{segmentation parameters, input 0 to 1; larger looser criteria.}

\item{sam.name}{sample name.}

\item{distance}{distance methods include euclidean, and correlation converted distance include pearson and spearman.}

\item{output.seg}{TRUE or FALSE, output seg file for IGV visualization}

\item{plot.genes}{TRUE or FALSE, output heatmap of CNVs with genename labels}

\item{genome}{hg20 or mm10, current version only work for human or mouse genes}

\item{n.cores}{number of cores for parallel computing.}
}
\value{
\enumerate{
\item aneuploid/diploid prediction results; 2) CNA results in 220KB windows; 3) heatmap; 4) hclustering object.
}
}
\description{
copycat main_func.
}
\examples{
test.ck <- copykat(rawmat=rawdata,id.type="S", ngene.chr=5, win.size=25, KS.cut=0.1,sam.name="test", distance="euclidean", norm.cell.names="", n.cores=4, output.seg="FALSE", min.gene.per.cell=200)

test.pred <- test.ck$prediction
}
