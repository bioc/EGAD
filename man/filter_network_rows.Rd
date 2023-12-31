% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_network_rows.R
\name{filter_network_rows}
\alias{filter_network_rows}
\title{Filter on rows}
\usage{
filter_network_rows(network, min = 0, max = 1, ids = NA)
}
\arguments{
\item{network}{numeric matrix}

\item{min}{numeric value}

\item{max}{numeric value}

\item{ids}{array to filter on}
}
\value{
network numeric matrix
}
\description{
The function filters out the rows of a matrix such that the size of the group
is exclusively between given min and max values
}
\examples{
genes.labels <- matrix( sample( c(0,1), 10000, replace=TRUE), nrow=100)
rownames(genes.labels) = paste('gene', 1:100, sep='')
colnames(genes.labels) = paste('function', 1:100, sep='')
genes.labels <- filter_network_rows(genes.labels,50,200)

genes.labels <- matrix( sample( c(0,1), 10000, replace=TRUE), nrow=100)
rownames(genes.labels) = paste('gene', 1:100, sep='')
colnames(genes.labels) = paste('function', 1:100, sep='')
genes.labels <- filter_network_rows(genes.labels,ids = paste('gene', 1:20, sep=''))



}
\keyword{filter}
\keyword{network}
\keyword{rows}
