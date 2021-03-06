% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seurat.R
\name{Setup}
\alias{Setup}
\title{Setup Seurat object}
\usage{
Setup(object, project, min.cells = 3, min.genes = 1000, is.expr = 0,
  do.logNormalize = T, total.expr = 10000, do.scale = TRUE,
  do.center = TRUE, names.field = 1, names.delim = "_",
  meta.data = NULL, save.raw = TRUE)
}
\arguments{
\item{object}{Seurat object}

\item{project}{Project name (string)}

\item{min.cells}{Include genes with detected expression in at least this
many cells}

\item{min.genes}{Include cells where at least this many genes are detected}

\item{is.expr}{Expression threshold for 'detected' gene}

\item{do.logNormalize}{whether to normalize the expression data per cell and transform to log space.}

\item{total.expr}{scale factor in the log normalization}

\item{do.scale}{In object@scale.data, perform row-scaling (gene-based
z-score)}

\item{do.center}{In object@scale.data, perform row-centering (gene-based
centering)}

\item{names.field}{For the initial identity class for each cell, choose this
field from the cell's column name}

\item{names.delim}{For the initial identity class for each cell, choose this
delimiter from the cell's column name}

\item{meta.data}{Additional metadata to add to the Seurat object. Should be
a data frame where the rows are cell names, and the columns are additional
metadata fields}

\item{save.raw}{TRUE by default. If FALSE, do not save the unmodified data in object@raw.data
which will save memory downstream for large datasets}
}
\value{
Seurat object. Fields modified include object@data,
object@scale.data, object@data.info, object@ident
}
\description{
Setup and initialize basic parameters of the Seurat object
}
