% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootAverageDominanceAnalysis.r
\name{bootAverageDominanceAnalysis}
\alias{bootAverageDominanceAnalysis}
\title{Bootstrap average values for Dominance Analysis}
\usage{
bootAverageDominanceAnalysis(x, R, constants = c(),
  fit.functions = "default", null.model = NULL, ...)
}
\arguments{
\item{x}{lm, glm, lmer model}

\item{R}{number on bootstrap resamples}

\item{constants}{vector of variables to remain unchanged between models}

\item{fit.functions}{list of functions which provides fit indexes for model.}

\item{null.model}{for mixel models, null model against to test the submodels}

\item{...}{Other arguments provided to lm or lmer (not implemented yet)}
}
\description{
Bootstrap average values, which are used on general dominance
Use \code{\link{summary.bootAverageDominanceAnalysis}} to get a nice formatted
data.frame
}
\examples{
\dontrun{
lm.1<-lm(Employed~.,longley)
da.ave.boot<-bootAverageDominanceAnalysis(lm.1,R=1000)
summary(da.ave.boot)
}
}
\seealso{
\code{\link{summary.bootAverageDominanceAnalysis}}
}
