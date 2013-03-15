\name{severity-package}
\alias{severity-package}
% \alias{severity}
\docType{package}
\title{
Mayo's Post-data Severity Evaluation
}
\description{
This package contains functions for calculating severity and generating severity curves. Specifically, the simple case of the one-parameter Normal distribution (i.e., with \emph{known} variance) is considered.
}
\details{
\tabular{ll}{
Package: \tab severity\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2013-03-15\cr
License: \tab GPL (>= 2)\cr
}
There is one function in this package, which is called \sQuote{severity}: it (1) computes severity at various discrepancies (from the null hypothesis) for the hypothesis test \eqn{H_{0}: \mu = 12} vs \eqn{H_{1}: \mu > 12}; and (2) plots both the severity curve and the power curve on a single plot.
}
\author{
Nicole Mee-Hyaang Jinn \cr

Maintainer: Nicole Mee-Hyaang Jinn <nicole.jinn@gmail.com>
}
\references{
Mayo, Deborah G. 2012. \dQuote{Statistical Science Meets Philosophy of Science Part 2: Shallow Versus Deep Explorations.} \emph{Rationality, Markets and Morals: Studies at the Intersection of Philosophy and Economics} 3 (Special Topic: Statistical Science and Philosophy of Science) (September 26): 71-107. http://www.rmm-journal.com/downloads/Article_Mayo2.pdf. \cr

Mayo, Deborah G., and David R. Cox. 2010. \dQuote{Frequentist Statistics as a Theory of Inductive Inference.} In \emph{Error and Inference: Recent Exchanges on Experimental Reasoning, Reliability, and the Objectivity and Rationality of Science}, edited by Deborah G. Mayo and Aris Spanos, 247-274. Cambridge: Cambridge University Press. \cr

Mayo, Deborah G., and Aris Spanos. 2006. \dQuote{Severe Testing as a Basic Concept in a Neyman-Pearson Philosophy of Induction.} \emph{The British Journal for the Philosophy of Science} 57 (2) (June 1): 323-357. doi:10.2307/3873470. http://www.jstor.org/stable/3873470. \cr

Mayo, Deborah G., and Aris Spanos. 2011. \dQuote{Error Statistics.} In \emph{Philosophy of Statistics}, edited by Prasanta S. Bandyopadhyay and Malcom R. Forster, 7:153-198. Elsevier.
}
\keyword{ package }
\keyword{ htest }
% \seealso{
% %%  ~~ Optional links to other man pages, e.g. ~~
% %%  ~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
% }
\examples{
%%  ~~ simple examples of the most important functions ~~
library(severity)
sigma <- 2
n <- 100
alpha <- 0.025
xbar <- c(12.39, 12.30, 12.10, 12.40, 12.60, 12.80)
sev <- severity(xbar = xbar, sigma = sigma, n = n, alpha = alpha)
sev
}
