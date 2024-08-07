% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_plot_component.R
\name{get_plot_component}
\alias{get_plot_component}
\alias{plot_component_names}
\alias{plot_components}
\title{Get plot components}
\usage{
get_plot_component(plot, pattern, return_all = FALSE)

plot_component_names(plot)

plot_components(plot)
}
\arguments{
\item{plot}{A ggplot or gtable to extract from.}

\item{pattern}{The name of the component.}

\item{return_all}{If there is more than one component, should all be returned
as a list? Default is \code{FALSE}.}
}
\value{
A grob or list of grobs (\code{get_plot_component()}, \code{plot_components()})
or a character vector (\code{plot_component_names()})
}
\description{
Extract plot components from a ggplot or gtable. \code{get_plot_component()}
extracts grobs or a list of grobs. \code{plot_component_names()} provides the
names of the components in the plot. \code{plot_components()} returns all
components as a list.
}
\examples{
library(ggplot2)

p <- ggplot(mpg, aes(displ, cty)) + geom_point()
ggdraw(get_plot_component(p, "ylab-l"))

plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +  geom_point(size=2.5) + theme(legend.position='bottom')
ggdraw(get_plot_component(plot.mpg, "guide-box"))

}
