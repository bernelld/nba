\name{age_scorer}
\alias{age_scorer}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{age_scorer
%%  ~~function to do ... ~~
}
\description{The input for this function is an individual year in the “Seasons_Stats_NBA.csv” dataset. The output is the age of the player who scored the most points in the numeric 4-digit year.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
age_scorer(season)
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
    era <- nba_data \%>\% filter(Year == season)
    high_score <- max(era$PTS, na.rm = TRUE)
    scorer <- era \%>\% filter(era$PTS == high_score)
    player_name <- scorer$Player
    age <- max(scorer$Age, na.rm = TRUE)
    print(age)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
