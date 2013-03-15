\name{severity}
\alias{severity}
\title{
Mayo's \emph{Post-data} Severity Evaluation
}
\description{
Computes severity at various discrepancies (from the null hypothesis) for the hypothesis test \eqn{H_{0}: \mu = 12} vs \eqn{H_{1}: \mu > 12}. Also plots both the severity curve and the power curve on a single plot.
}
\usage{
severity(xbar, sigma, n, alpha)
}
\arguments{
  \item{xbar}{ a \emph{non-empty} numeric vector containing up to 6 elements. Each element represents a sample mean \eqn{12 < \bar{x} < 13}. That is, each sample mean describes a different set of outcomes \eqn{\mathbf{x}_{0}} under consideration. }
  \item{sigma}{ standard deviation \eqn{\sigma}, a scalar strictly greater than zero, which is assumed to be \emph{known} in this case. }
  \item{n}{ sample size \eqn{n}, a scalar (integer) strictly greater than zero. }
  \item{alpha}{ \emph{pre-data} significance level \eqn{\alpha}, a real number in the open interval (0, 1): the significance level determines the rejection region for the hypothesis test. }
}
\details{
Given \code{xbar} (see the \sQuote{Arguments} section), as well as the other inputs, this function separates the elements of \code{xbar} into two categories: one for rejecting the null hypothesis; the other for accepting the null hypothesis. In other words, all the inferences that lead to acceptance of \eqn{H_{0}} are grouped together, as are the inferences that lead to rejection of \eqn{H_{0}}. However, if there are more than 3 elements of \code{xbar} that belong to any of the two categories then only the first 3 elements are considered. \cr

In addition, the null hypothesis and the alternative hypothesis both follow the \emph{Normal} (or \emph{Gaussian}) distribution in this case.\cr

This function also contributes as an introduction to the severity concept, for which the general inferential rationale is the following: \cr
\dQuote{
\bold{Severity rationale:} Error probabilities may be used to make inferences about the process giving rise to data, by enabling the assessment of how well probed or how severely tested claims are, with data \eqn{\mathbf{x}_{0}}.
} (Mayo-Spanos 2006) \cr

Note: Although the degree of severity with which a hypothesis \emph{H} has passed a test is used to determine if it is warranted to infer \emph{H}, the degree of severity is not assigned to \emph{H} itself: it is an attribute of the test procedure as a whole, including the inference under consideration (Mayo-Spanos 2006).
}
\value{
An object of class \code{list}, a list including the following elements:
\item{accept}{ a numeric \emph{binary} vector, where each element takes one of two values (i.e., 0 or 1): 1 if the null hypothesis is accepted; 0 if the null hypothesis is rejected. }
\item{p}{ a numeric vector, with each element being the p-value corresponding to the appropriate element in \code{xbar} (see the \dQuote{Arguments} section). }
\item{severity_acceptH0}{ a numeric matrix, with each column containing severity calculations for each discrepancy in the vector \code{discrepancy}. These severity calculations apply to the elements in \code{xbar} that indicate \emph{accepting} \eqn{H_{0}}. }
\item{severity_rejectH0}{ a numeric matrix, with each column containing severity calculations for each discrepancy in the vector \code{discrepancy}. These severity calculations apply to the elements in \code{xbar} that indicate \emph{rejecting} \eqn{H_{0}}. }
\item{power}{ a numeric vector comprising the power function corresponding to each discrepancy in the vector \code{discrepancy}. }
\item{discrepancy}{ a numeric vector of discrepancies from \eqn{H_{0}}. }
}
\references{
Mayo, Deborah G. 2012. \dQuote{Statistical Science Meets Philosophy of Science Part 2: Shallow Versus Deep Explorations.} \emph{Rationality, Markets and Morals: Studies at the Intersection of Philosophy and Economics} 3 (Special Topic: Statistical Science and Philosophy of Science) (September 26): 71-107. http://www.rmm-journal.com/downloads/Article_Mayo2.pdf. \cr

Mayo, Deborah G., and David R. Cox. 2010. \dQuote{Frequentist Statistics as a Theory of Inductive Inference.} In \emph{Error and Inference: Recent Exchanges on Experimental Reasoning, Reliability, and the Objectivity and Rationality of Science}, edited by Deborah G. Mayo and Aris Spanos, 247-274. Cambridge: Cambridge University Press. \cr

Mayo, Deborah G., and Aris Spanos. 2006. \dQuote{Severe Testing as a Basic Concept in a Neyman-Pearson Philosophy of Induction.} \emph{The British Journal for the Philosophy of Science} 57 (2) (June 1): 323-357. doi:10.2307/3873470. http://www.jstor.org/stable/3873470. \cr

Mayo, Deborah G., and Aris Spanos. 2011. \dQuote{Error Statistics.} In \emph{Philosophy of Statistics}, edited by Prasanta S. Bandyopadhyay and Malcom R. Forster, 7:153-198. Elsevier.
}
\author{
Nicole Mee-Hyaang Jinn
}
% \note{
% %%  ~~further notes~~
% }
% \seealso{
% %% ~~objects to See Also as \code{\link{help}}, ~~~
% }
\examples{
library(severity)
sigma <- 2
n <- 100
alpha <- 0.025
xbar <- c(12.39, 12.30, 12.10, 12.40, 12.60, 12.80)
sev <- severity(xbar = xbar, sigma = sigma, n = n, alpha = alpha)
sev
}
%% __ONLY ONE__ keyword per line
\keyword{ htest }
