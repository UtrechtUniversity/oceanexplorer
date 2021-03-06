% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_NOAA.R
\name{filter_NOAA}
\alias{filter_NOAA}
\title{Filter NOAA}
\usage{
filter_NOAA(NOAA, depth = 0, coord = NULL, epsg = NULL, fuzzy = 0)
}
\arguments{
\item{NOAA}{Dataset of the NOAA World Ocean Atlas
(\code{\link[stars:read_stars]{stars}}).}

\item{depth}{Depth in meters}

\item{coord}{List with named elements, matrix with dimnames, or simple
feature geometry list column: \code{lon} for longitude in degrees, and
\code{lat} for latitude in degrees.}

\item{epsg}{Coordinate reference number.}

\item{fuzzy}{If no values are returned, fuzzy uses a buffer area around the
point to extract values from adjacent grid cells. The fuzzy argument is
supplied in units of kilometer (great circle distance).}
}
\value{
Either a \code{\link[stars:read_stars]{stars}} object or
\code{\link[sf:st_sf]{sf}} dataframe.
}
\description{
This function aids filtering of NOAA datasets.
}
\details{
This function helps filtering relevant data from NOAA World Ocean Atlas
3D arrays (longitude, latitude, and depth) which have been stored with
\code{stars::\link[stars:read_stars]{read_stars()}}. An 2D stars object is
returned if only providing a depth. An \code{\link[sf:st_sf]{sf}} is
returned, when further providing coordinates, as a list
(e.g. \code{list(lon = -120, lat = 12)}), a matrix
(e.g. \code{cbind(lon = -120, lat = 12)}), or an
\code{\link[sf:st_sf]{sf}} object with POINT geometries. In the
latter case it is import to follow the GeoJSON conventions for the order in
\code{sf} vectors with \code{x} (\code{lon} = longitude) followed by \code{y} (\code{lat} = latitude),
see also;
\href{https://r-spatial.github.io/sf/articles/sf1.html}{Simple Features for R}.
}
\examples{
\dontrun{
# get atlas
NOAAatlas <- get_NOAA("oxygen", 1, "annual")

# filter atlas for specific depth and coordinate location
filter_NOAA(NOAAatlas, 30, list(lon = c(-160, -120), lat =  c(11, 12)))
}
}
