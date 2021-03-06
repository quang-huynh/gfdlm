% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/figures-projections.R
\name{plot_main_projections}
\alias{plot_main_projections}
\title{Make a standard projection plot with SSB, F, and catch}
\usage{
plot_main_projections(
  object,
  catch_breaks = NULL,
  catch_labels = NULL,
  rel_widths = c(2, 1.18),
  msy_ylim = c(0, 4.5),
  catch_ylim = NULL,
  french = isTRUE(getOption("french"))
)
}
\arguments{
\item{object}{An MSE object from MSEtool.}

\item{catch_breaks}{Optional y-axis tick locations for the catch column.}

\item{catch_labels}{Optional y-axis tick labels for the catch column. Helpful
for dealing with large numbers.}

\item{rel_widths}{A numeric vector of length 2 the controls the relative
width of the SSB and F columns (first element of the numeric vector) and
the catch column (second element of the numeric vector). Depending on the
number of years in the projection on the size of the axis labels, you may
need to tweak the second element of this vector to make all 3 columns the
same width. Figured it out by trial and error.}

\item{msy_ylim}{SSB and F column y limits.}

\item{catch_ylim}{Catch column y limits.}

\item{french}{French?}
}
\value{
A ggplot2 object
}
\description{
This is a wrapper for \code{\link[=plot_projection_ts]{plot_projection_ts()}} that includes columns for SSB,
F, and catch.
}
\examples{
catch_breaks <- c(0, 1000, 2000, 3000)
plot_main_projections(mse_example,
  catch_breaks = catch_breaks,
  catch_labels = catch_breaks / 1000
)
}
\seealso{
\code{\link[=plot_projection_ts]{plot_projection_ts()}}
}
