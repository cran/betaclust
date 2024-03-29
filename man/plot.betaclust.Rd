% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.betaclust.R
\name{plot.betaclust}
\alias{plot.betaclust}
\title{Plots for visualizing the betaclust class object}
\usage{
\method{plot}{betaclust}(
  x,
  what = "fitted density",
  plot_type = "ggplot",
  data = NULL,
  sample_name = NULL,
  title = NULL,
  patient_number = 1,
  threshold = FALSE,
  scale_param = "free_y",
  ...
)
}
\arguments{
\item{x}{A \code{\link[betaclust:betaclust]{betaclust}} object.}

\item{what}{The different plots that can be obtained are either "fitted density","kernel density","uncertainty" or "information criterion" (default = "fitted density").}

\item{plot_type}{The plot type to be displayed are either "ggplot" or "plotly" (default = "ggplot").}

\item{data}{A dataframe of dimension \eqn{C \times NR} containing methylation values for \eqn{C} CpG sites from \eqn{R} samples collected from \eqn{N} patients which was passed as an argument to the \code{\link[betaclust:betaclust]{betaclust}} function.
The data is not required as an input when generating "uncertainty" or "information criterion" plots and the default has been set as "NULL". The data needs to be passed as an argument to this function when generating either "fitted density" or "kernel density" plots.}

\item{sample_name}{The names of DNA sample types in the dataset analysed by the K.R model. If no value is passed then default values of sample names, e.g. Sample 1, Sample 2, etc are used as legend text (default = NULL).}

\item{title}{The title that the user wants to display. If no title is to be displayed the default is "NULL".}

\item{patient_number}{The column number representing the patient in the patient-wise ordered dataset selected for visualizing the clustering solution of the K.. or KN. model (default = 1).}

\item{threshold}{The "TRUE" option displays the threshold points in the graph for the K.. and the KN. model (default = "FALSE").}

\item{scale_param}{The position scales can be fixed or allowed to vary between different panels generated for the density estimate plots for visualizing the K.R clustering solution. Options are "fixed", "free_y","free_x" or "free" (default = "free_y"). The option "fixed" results in the x and y scales being fixed across all panels, "free" varies the x and y scales across the panels, "free_x" fixes the y scale and lets the x scale vary across all panels and "free_y" fixes the x scale and lets the y scale vary across all panels.}

\item{...}{Other graphics parameters.}
}
\value{
This function displays the following plots as requested by the user:
\itemize{
\item fitted density estimates - Plot showing the fitted density estimates of the clustering solution under the optimal model selected.
\item kernel density estimates - Plot showing the kernel density estimates of the clustering solution under the optimal model selected.
\item uncertainty -  A boxplot showing the uncertainties in the optimal clustering solution.
\item information criterion - Plot showing the information criterion values for all models fitted to support the selection of the optimal model.
}
}
\description{
Visualise a \code{\link[betaclust:betaclust]{betaclust}} clustering solution by plotting the fitted and kernel density estimates, the uncertainty and the information criterion.
}
\details{
The fitted density estimates can be visualized under the optimal clustering solution by specifying what = "fitted density" and kernel density estimates under the optimal clustering solution by specifying what = "kernel density".

The threshold inferred can be visualized by specifying threshold = TRUE.
The KN. model calculates different pairs of threshold points for each patient as the shape parameters are allowed to vary for each patient.
So the patient for whom the threshold needs to be displayed can be specified by inputting the column number representing the patient in the patient-wise ordered dataset in the parameter patient_number.

Interactive plots can also be produced using plot_type = "plotly". The uncertainty in the clustering solution can be plotted using what = "uncertainty".
The information criterion values for all fitted models can be plotted using what = "information criterion".
}
\examples{
\donttest{
my.seed <- 190
M <- 3
N <- 4
R <- 2
data_output <- betaclust(pca.methylation.data[1:100,2:9], M, N, R,
            model_names = c("K..","KN.","K.R"), model_selection = "BIC",
            parallel_process = FALSE, seed = my.seed)
plot(data_output, what = "fitted density", plot_type = "ggplot",
     data=pca.methylation.data[1:100,2:9])
plot(data_output, what = "uncertainty", plot_type = "ggplot")
plot(data_output, what = "information criterion", plot_type = "ggplot")
}
}
\seealso{
\code{\link{betaclust}}
}
