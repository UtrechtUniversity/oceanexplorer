% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_NOAA.R
\name{get_NOAA}
\alias{get_NOAA}
\title{Obtain NOAA World Ocean Atlas dataset}
\usage{
get_NOAA(var, spat_res, av_period, cacheNOAA = TRUE)
}
\arguments{
\item{var}{The chemical or physical variable of interest.}

\item{spat_res}{Spatial resolution, either 1 or 5 degree grid-cells (numeric)
.}

\item{av_period}{Temporal resolution, either \code{"annual"}, specific seasons
(e.g. \code{"winter"}), or month (e.g. \code{"August"}).}

\item{cacheNOAA}{Caching the extracted files under \code{inst/extdata}.}
}
\value{
\code{\link[stars:read_stars]{stars}} object.
}
\description{
The function retrieves data from the NOAA World Ocean Atlas.
}
\details{
This function retrieves data from the
\href{https://www.ncei.noaa.gov/products/world-ocean-atlas}{NOAA World Ocean Atlas}
as an 3D array (longitude, latitude, and depth) and stores them with
\code{stars::\link[stars:read_stars]{read_stars()}} as an stars object
(see also: \href{https://r-spatial.github.io/stars/articles/stars1.html}{Introduction to the stars package}).
The function can automatically cache the extracted files
(default: \code{cacheNOAA = TRUE}).
}
\examples{
\dontrun{
get_NOAA("oxygen", 1, "annual")
}
}
