\name{corr_num}
\alias{corr_num}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{corr_num
%%  ~~function to do ... ~~
}
\description{The input for this function is an individual year in the “Seasons_Stats_NBA.csv” dataset. The output is the correlation matrix for all numeric variables in the data for that year.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
corr_num(season)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{season}{
%%     ~~Describe \code{season} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (season)
{
    library(tidyverse)
    library(dplyr)
    library(corrplot)
    era <- nba_data \%>\% filter(Year == season)
    era_num <- select_if(era, is.numeric)
    era_num <- era_num[, colSums(is.na(era_num)) < nrow(era_num)]
    cor(era_num)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
