% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/figures-historical.R
\name{plot_historical_ts}
\alias{plot_historical_ts}
\title{Plot historical time series}
\usage{
plot_historical_ts(
  object,
  type = c("Number", "Biomass", "VBiomass", "SBiomass", "Removals", "Landings",
    "Discards", "Find", "RecDev", "Unfished_Equilibrium"),
  n_samples = 50,
  this_year = 2018,
  observed_ts = NULL,
  scale = if (!is.null(observed_ts)) TRUE else FALSE,
  legend_position = c(0.9, 0.85)
)
}
\arguments{
\item{object}{A MSEtool object of class \code{Hist} that was created by
running \code{\link[MSEtool:runMSE]{MSEtool::runMSE()}} with \code{Hist = TRUE}.}

\item{type}{A character object describing the element of \code{object@TSdata} to
plot.}

\item{n_samples}{The number of timeseries samples to illustrate.}

\item{this_year}{The last year of the historical timeseries.}

\item{observed_ts}{An optional observed timeseries to add is a comparison.}

\item{scale}{Should the timeseries be scaled by their geometric mean?}

\item{legend_position}{The x and y coordinates of the legend.}
}
\value{
ggplot object
}
\description{
Plot historical time series
}
\examples{
library(MSEtool)
historical_mse <- runMSE(om, Hist = TRUE)
plot_historical_ts(historical_mse, type = "Removals", n_samples = 2)
plot_historical_ts(historical_mse, type = "SBiomass", n_samples = 2)
plot_historical_ts(historical_mse, type = "RecDev", n_samples = 2)
plot_historical_ts(historical_mse,
  n_samples = 2,
  observed_ts = rlnorm(50, 1, 0.3)
)
}
