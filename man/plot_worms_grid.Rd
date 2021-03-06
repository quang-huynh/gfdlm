% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/figures-worm.R
\name{plot_worms_grid}
\alias{plot_worms_grid}
\title{Make a Kobe "worm" timeseries plot with uncertainty}
\usage{
plot_worms_grid(
  object_list,
  prob = 0.5,
  include_historical = TRUE,
  french = isTRUE(getOption("french"))
)
}
\arguments{
\item{object_list}{A named list of MSE objects from DLMtool.
Names become scenario names.}

\item{prob}{Tail probability for the quantiles. E.g., 0.5 refers to an
interquartile range.}

\item{include_historical}{Logical: include the historical time?}

\item{french}{French?}
}
\value{
A ggplot object
}
\description{
Make a Kobe "worm" timeseries plot with uncertainty
}
\details{
Note that if you receive an error such as
\verb{Error: vector memory exhausted (limit reached?)},
consider starting a fresh R session of removing
any large objects from memory. Also,
try adding \verb{R_MAX_VSIZE=64Gb} (or pick some reasonable large value)
to your .Renviron file. \code{usethis::edit_r_environ()}
}
\examples{
x <- list()
x[[1]] <- mse_example
x[[2]] <- mse_example
names(x) <- c("Scenario 1", "Scenario 2")
plot_worms_grid(x)
}
