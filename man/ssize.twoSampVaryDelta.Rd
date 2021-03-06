% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ssize.twoSampVaryDelta.R
\name{ssize.twoSampVaryDelta}
\alias{ssize.twoSampVaryDelta}
\title{Sample Size Calculations for Two-Sample Microarray Experiments with Differing Mean Expressions
but fixed Standard Deviations Among Genes}
\usage{
ssize.twoSampVaryDelta(deltaMean, deltaSE, sigma, fdr = 0.05, power = 0.8,
  pi0 = 0.95, maxN = 35, side = "two-sided", cex.title = 1.15,
  cex.legend = 1)
}
\arguments{
\item{deltaMean}{location (mean) parameter of normal distribution followed by each \emph{delta.g}.}

\item{deltaSE}{scale (standard deviation) parameter of normal distribution followed by each \emph{delta.g}.}

\item{sigma}{the common standard deviation of expressions for all genes.}

\item{fdr}{the false discovery rate to be controlled.}

\item{power}{the desired power to be achieved.}

\item{pi0}{a vector (or scalar) of proportions of non-differentially expressed genes.}

\item{maxN}{the maximum sample size used for power calculations.}

\item{side}{options are "two-sided", "upper", or "lower".}

\item{cex.title}{controls size of chart titles.}

\item{cex.legend}{controls size of chart legend.}
}
\value{
\item{ssize}{sample sizes (for each treatment) at which desired power is first reached.}

\item{power}{power calculations with corresponding sample sizes.}

\item{crit.vals}{critical value calculations with corresponding sample sizes.}
}
\description{
For given desired power, controlled false discovery rate, and user-specified proportions of
non-differentially expressed genes, \code{ssize.twoSampVaryDelta} calculates appropriate
sample sizes for two-sample microarray experiments in which the differences between mean
treatment expression levels (\emph{delta.g} for gene \emph{g}) vary among genes.
A plot of power versus sample size is generated.
}
\details{
Each \emph{delta.g} is assumed to follow a Normal distribution with mean \code{deltaMean}
and standard deviation \code{deltaSE}. The standard deviations of expressions are assumed identical
for all genes.

If a vector is input for \code{pi0}, sample size calculations are performed for each proportion.
}
\examples{
dm <- 1.2; ds <- 0.1      ## the delta.g's follow a Normal(1, 1.2) distribution
s <- 1                    ## common standard deviation
fdr <- 0.05               ## false discovery rate to be controlled
pwr <- 0.8                ## desired power
p0 <- c(0.5, 0.8, 0.99)   ## proportions of non-differentially expressed genes
N <- 35                   ## maximum sample size for calculations

size <- ssize.twoSampVaryDelta(deltaMean = dm, deltaSE = ds, sigma = s, fdr = fdr, power = pwr,
                               pi0 = p0, maxN = N, side = "two-sided")
size$ssize                ## first sample size(s) to reach desired power
size$power                ## calculated power for each sample size
size$crit.vals            ## calculated critical value for each sample size
}
\author{
Ran Bi \email{biran@iastate.edu}, Peng Liu \email{pliu@iastate.edu}
}
\references{
Liu, P. and Hwang, J. T. G. (2007) Quick calculation for sample size while controlling
false discovery rate with application to microarray analysis. \emph{Bioinformatics} 23(6): 739-746.

Orr, M. and Liu, P. (2009) Sample size estimation while controlling false discovery rate for microarray
experiments using ssize.fdr package. \emph{The R Journal}, 1, 1, May 2009, 47-53.
}
\seealso{
\code{\link{ssize.twoSamp}}, \code{\link{ssize.twoSampVary}}, \code{\link{ssize.oneSamp}}, \code{\link{ssize.oneSampVary}}, \code{\link{ssize.F}}, \code{\link{ssize.Fvary}}
}

