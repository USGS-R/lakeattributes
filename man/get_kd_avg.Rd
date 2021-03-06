% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_kd_avg.R
\name{get_kd_avg}
\alias{get_kd_avg}
\title{Get light attenuation coefficient for a given lake}
\usage{
get_kd_avg(ids, default.if.null = FALSE, src = "in-situ", datasource = NA)
}
\arguments{
\item{ids}{The character ID for the requested kd data. Can be a character vector.}

\item{default.if.null}{boolean indicating if default Kd should be used if lake has no observations}

\item{src}{The data source, currently one of \code{c('in-situ', 'satellite')}. In-situ observations are default}
}
\value{
Light attenuation coefficient in m^-1
}
\description{
Returns the light attenuation coefficient for a lake with the given ID
}
\details{
TODO
}
\examples{
#NA returned when no site with that ID found
get_kd_avg(c('WBIC_6100', 'WBIC_10000', 'asdf'))

#Some lakes have satellite data available
get_kd_avg(c('WBIC_6100', 'WBIC_805400', 'asdf'), src='satellite')

#Default can be requested as well
get_kd_avg(c('WBIC_6100','asdf', 'WBIC_10000', 'asdf'), default.if.null=TRUE)


}
\author{
Luke Winslow, Jordan Read
}

