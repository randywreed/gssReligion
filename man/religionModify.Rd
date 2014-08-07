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
