% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intra_inter_TAD.R
\name{intra_inter_TAD}
\alias{intra_inter_TAD}
\title{Intra and inter TAD contacts}
\usage{
intra_inter_TAD(explist, tad_bed, max_neighbour = 5)
}
\arguments{
\item{explist}{Either a single GENOVA \code{contacts} object or a list of
GENOVA \code{contacts} objects.}

\item{tad_bed}{A BED-formatted \code{data.frame} with three columns
containing the chromosome name, start- and end-positions of non-overlapping
TADs.}

\item{max_neighbour}{An \code{integer} of length 1 indicating how many
neighbouring TADs to take into account.}
}
\value{
An \code{IIT_discovery} object containing the following slots:
  \describe{ \item{results}{A \code{data.table} with two columns of left and
  right TAD identifiers and scores for the experiments in \code{explist}.}
  \item{tads}{The \code{tad_bed} argument supplemented with TAD identifiers
  used in the \code{results} slot.}}
}
\description{
Calculate the coverage over TADs and between a TAD and its neighbours.
}
\details{
The TADs are expected to be consecutive: the 3' border of a TAD is
  the same position as the 5' border of the subsequent TAD.

  Although the \code{explist} argument is allowed to be a different
  resolution than whence the TAD calls came, it is discouraged to use higher
  basepair resolution for the \code{explist} argument compared to the TAD
  calls for accuracy reasons.
}
\section{Resolution recommendation}{
 The same resolution as whence the TADs
  were called.
}

\examples{
\dontrun{
# Getting TAD calls
insula <- insulation_score(WT_20kb)
tads <- call_TAD_insulation(insula)[[1]]

# Calculating the inter-intra TAD contacts
iit <- intra_inter_TAD(list(WT_20kb, KO_20kb), tads)
}
}
\seealso{
For calling TADs with insulation scores, see
  \code{\link[GENOVA]{insulation_score}()} and
  \code{\link[GENOVA]{call_TAD_insulation}}. For calling TADs with HiCseg,
  see \code{\link[GENOVA]{HiCseg.callTAD}}.
}
