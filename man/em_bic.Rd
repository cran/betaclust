% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/em_bic.R
\name{em_bic}
\alias{em_bic}
\title{Bayesian Information Criterion}
\usage{
em_bic(llk, C, M, N, R, model_name = "K..")
}
\arguments{
\item{llk}{Log-likelihood value.}

\item{C}{Number of CpG sites.}

\item{M}{Number of methylation states identified in a DNA sample.}

\item{N}{Number of patients.}

\item{R}{Number of DNA sample types collected from each patient.}

\item{model_name}{Fitted mixture model. Options are "K..", "KN." and/or "K.R" (default = "K..").}
}
\value{
The BIC value for the selected model.
}
\description{
Compute the BIC value for the optimal model.
}
\details{
Computes the BIC for a specified model given the log-likelihood, the dimension of the data, and the model names.
}
\seealso{
\code{\link{em_aic}}

\code{\link{em_icl}}
}
