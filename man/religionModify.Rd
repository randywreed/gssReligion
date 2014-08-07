\name{religionModify}
\alias{religionModify}
\title{ ~~function to modify gss file for religion analysis ~~}
\description{
This will select only religion variables and convert all labels to upper case
it will then [optionally] create an rda files
}
\usage{
religionModify(df, savedf = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
original data fame
}
  \item{savedf}{
name of file to output if present
}
}
\details{}
\value{ modifed data frame }
\references{
%% ~put references to the literature/web site here ~
}
\author{randywreed@gmail.com}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{ religionModify(df, "new_rda.rda")
}

\keyword{ GSS }
