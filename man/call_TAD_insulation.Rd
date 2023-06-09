% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call_TAD_insulation.R
\name{call_TAD_insulation}
\alias{call_TAD_insulation}
\title{Call TADs from insulation scores}
\usage{
call_TAD_insulation(IS_discovery, method = "crane", min_strength = 0.1)
}
\arguments{
\item{IS_discovery}{A GENOVA \code{IS_discovery} object as created by
\code{insulation_score()}.}

\item{method}{A \code{character} vector of length 1. Currently, only
\code{"crane"} is implemented.}

\item{min_strength}{A \code{numeric} vector of length 1 setting a threshold
on the boundary strength wherein higher means stronger boundaries.}
}
\value{
A \code{list} containing BED-formatted \code{data.frame}s for each
  experiment in the \code{IS_discovery} object.
}
\description{
Runs peak detection on the genome wide insulation scores to identify
insulation valleys that correspond well to TAD boundaries.
}
\details{
The Crane \emph{et al}. (2015) method calculates a delta vector across the
  insulation score defined by the difference between 100kb to the right and
  left of a central bin. This delta crosses zero at local extrema, of which
  the minima are kept. Subsequently, potential boundaries are filtered on the
  boundary strength defined as the difference in the delta vector between the
  nearest 5' local maximum and 3' local minimum relative to the boundaray.
}
\examples{
\dontrun{
# Calculating insulation scores
ins <- insulation_score(list(WT_20kb, KO_20kb), window = 25)

# Calling TADs from the insulation score
tadlist <- call_TAD_insulation(ins)

# Plotting TADs
hic.matrixplot(
  exp1 = WT_20kb,
  chrom = "chr7",
  start = 25e6,
  end = 30e6,
  tads = tadlist$WT_20kb
)
}
}
\seealso{
\code{\link[GENOVA]{insulation_score}} for calculating insulation
  scores.
}
