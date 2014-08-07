#' Modify and save religion data in gss
#' 
#' This function will modify any data frame to standardize religion variables, it assumes the GSS
#' @param df original data frame
#' @param savedf output name of the rda created by function
#' @return the modified data frame
#' @keywords GSS
#' @export
#' @examples
#' religionModify(gss1990, "newgss.rda")
religionModify <-function (df, savedf='') {
relnames<-grep("reli",names(df))
#names(df[relnames])
#names(df[grep("premars",names(gss2008_12))])
#names(df[,4588:4675])

gss2008_12.religionA<-df[c("year","region","age","reborn", "attend","attend12","cohort")]
gss2008_12.religionB<-df[relnames]
gss2008_12.religionC<-df[4588:4675]
gss2008_12.relcombine<-data.frame(gss2008_12.religionA,gss2008_12.religionB, gss2008_12.religionC)
#convert all names to uppercase
names(gss2008_12.relcombine)<-toupper(names(gss2008_12.relcombine))
#head(gss2008_12.relcombine)
nrow(gss2008_12.relcombine)
rm(df) # clean up memory before last save
#save if given a savedf parameter
if (savedf!='') {
save( gss2008_12.relcombine , file = savedf )
}
gss2008_12.relcombine
}
