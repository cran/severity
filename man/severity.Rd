\name{severity}
\alias{severity}
\title{
Mayo's \emph{Post-data} Severity Evaluation
}
\description{
Computes severity at various discrepancies (from the null hypothesis) for the hypothesis test \eqn{H_{0}: \mu = \mu_{0}} vs \eqn{H_{1}: \mu > \mu_{0}}, where \eqn{\mu_{0}} is the hypothesized value. Also plots both the severity curve(s) and the power curve on a single plot.
}
\usage{
severity(mu0, xbar, sigma, n, alpha)
}
\arguments{
  \item{mu0}{ the hypothesized value \eqn{\mu_{0}}, an integer strictly greater than zero. }
  \item{xbar}{ a \emph{non-empty} numeric vector containing up to 6 elements. Each element represents a sample mean \eqn{\bar{x}}, a real number in the \bold{closed} interval \eqn{[\mu_{0}, \mu_{0} + 1]}. That is, each sample mean describes a different set of outcomes \eqn{\mathbf{x}_{0}} under consideration. }
  \item{sigma}{ standard deviation \eqn{\sigma}, a scalar strictly greater than zero, which is assumed to be \emph{known} in this case. }
  \item{n}{ sample size \eqn{n}, an integer strictly greater than zero. }
  \item{alpha}{ \emph{pre-data} significance level \eqn{\alpha}, a real number in the \bold{open} interval (0, 1): the significance level determines the rejection region for the hypothesis test. }
}
\details{
Given \code{mu0} and \code{xbar} (see the \dQuote{Arguments} section), as well as other inputs, this function separates the elements of \code{xbar} into two categories: one for rejecting the null hypothesis (i.e., \eqn{H_{0}: \mu = \mu_{0}}); the other for accepting the null hypothesis. In other words, all the inferences that lead to acceptance of \eqn{H_{0}} are grouped together, as are the inferences that lead to rejection of \eqn{H_{0}}. However, if there are more than 3 elements of \code{xbar} that belong to any of the two categories then only the first 3 elements are considered in each category. \cr

In addition, the null hypothesis and the alternative hypothesis both follow the \emph{Normal} (or \emph{Gaussian}) distribution in this case.\cr

*** The difference between this version and previous versions is that one more input is added for additional flexibility: the user is now able to control the hypothesized value of the unknown parameter \eqn{\mu}. *** \cr

This function also contributes as an introduction to the \emph{severity} concept, for which the general inferential rationale is the following: \cr
\dQuote{
\bold{Severity rationale:} Error probabilities may be used to make inferences about the process giving rise to data, by enabling the assessment of how well probed or how severely tested claims are, with data \eqn{\mathbf{x}_{0}}.
} (Mayo & Spanos 2006) \cr

Note: Although the degree of severity with which a hypothesis \emph{H} has passed a test is used to determine if it is warranted to infer \emph{H}, the degree of severity is not assigned to \emph{H} itself: \dQuote{it is an attribute of the test procedure as a whole, including the inference under consideration} (Mayo & Spanos 2006).
}
\value{
An object of class \code{list}, a list including the following elements:
\item{accept}{ a numeric \emph{binary} vector, where each element takes one of two values (i.e., 0 or 1): 1 if the null hypothesis is accepted; 0 if the null hypothesis is rejected. }
\item{p}{ a numeric vector, with each element being the p-value corresponding to the appropriate element in \code{xbar} (see the \dQuote{Arguments} section). }
\item{severity_acceptH0}{ a numeric matrix, with each column containing severity calculations for each discrepancy in the vector \code{discrepancy}. These severity calculations apply to the elements in \code{xbar} that indicate \bold{accepting} \eqn{H_{0}}. }
\item{severity_rejectH0}{ a numeric matrix, with each column containing severity calculations for each discrepancy in the vector \code{discrepancy}. These severity calculations apply to the elements in \code{xbar} that indicate \bold{rejecting} \eqn{H_{0}}. }
\item{power}{ a numeric vector comprising the power function corresponding to each discrepancy in the vector \code{discrepancy}. }
\item{discrepancy}{ a numeric vector of discrepancies from \eqn{\mu_{0}}. }
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
mu0 <- 5
sigma <- 2
n <- 100
alpha <- 0.025
xbar <- c(5.39, 5.30, 5.10, 5.40, 5.60, 5.85)
(sev <- severity(mu0 = mu0, xbar = xbar, sigma = sigma, n = n, alpha = alpha))
}
%% __ONLY ONE__ keyword per line
\keyword{ htest }
