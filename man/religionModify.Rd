\name{religionModify}
\alias{religionModify}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to modify gss file for religion analysis ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
religionModify(df, savedf = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
%%     ~~Describe \code{df} here~~
}
  \item{savedf}{
%%     ~~Describe \code{savedf} here~~
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
function (df, savedf = "") 
{
    relnames <- grep("reli", names(df))
    gss2008_12.religionA <- df[c("year", "region", "age", "reborn", 
        "attend", "attend12", "cohort")]
    gss2008_12.religionB <- df[relnames]
    gss2008_12.religionC <- df[4588:4675]
    gss2008_12.relcombine <- data.frame(gss2008_12.religionA, 
        gss2008_12.religionB, gss2008_12.religionC)
    names(gss2008_12.relcombine) <- toupper(names(gss2008_12.relcombine))
    nrow(gss2008_12.relcombine)
    rm(df)
    if (savedf != "") {
        save(gss2008_12.relcombine, file = savedf)
    }
    gss2008_12.relcombine
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
