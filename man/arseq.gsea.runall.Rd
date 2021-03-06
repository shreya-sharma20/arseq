% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arseq.gsea.runall.R
\name{arseq.gsea.runall}
\alias{arseq.gsea.runall}
\title{Bulk Gene Set Enrichment Analysis (GSEA)}
\usage{
arseq.gsea.runall(ranked.list, save = FALSE, custom.gsea = NULL,
  save.dir = getwd())
}
\arguments{
\item{ranked.list}{Ranked list of genes for GSEA analysis. Use 'arseq.gsea.preprocess' to generate ranked list of genes from DESeq2 differential gene expression analysis.}

\item{save}{Logical. Argument to indicate if to save the results in disk (pdf and csv files). Default=FALSE}

\item{custom.gsea}{User defined gene list to perform GSEA. File need to be supplied as a dataframe with each row as a gene list.}

\item{save.dir}{Directory to save the results when 'save=TRUE'. Default= Working Directory.}
}
\value{
List containing all the GSEA dataframe and ggplot objects.
}
\description{
Performing GSEA enrichment analysis on a ranked list of genes for all msigDB.
}
\examples{
\dontrun{
ranked.list <- arseq.gsea.preprocess (deg=example_deg)
gsea.output <- arseq.gsea.runall (ranked.list)
}
}
