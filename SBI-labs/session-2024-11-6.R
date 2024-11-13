library(palmerpenguins)
data("penguins")
head(penguins)
class(penguins)
summary(penguins)
pairs(penguins)

mypairs = function (df) {
  # tibbles make problems with the class information
  # just convert everything to a data frame
  df=as.data.frame(df)
  opar=par(mfrow=c(ncol(df),ncol(df)),mai=rep(0.3,4))
  for (i in 1:ncol(df)) {
    for (j in 1:ncol(df)) {
      if (i == j) {
        # diagonal (empty plot)
        plot(0.5,0.5,type='n',axes=FALSE,xlab='',ylab='')
        box()
        text(0.5,0.5,colnames(df)[i],cex=2.2)
      } else if (i != j) {
        if (class(df[,i]) == "numeric" &  class(df[,j]) == "factor") {
          boxplot(df[,i]~df[,j])
        } else {
          # this else branch should be extended to cover as well
          # assocplot's
          plot(df[,c(i,j)])
        }
      }
    }
  }
  par(opar)
}
png("C:/Users/User/Desktop/Bioinformatidcs/Statistical-Bioinformatics/SBI-labs/penguins.png",width=800,height=800)
mypairs(penguins[,1:4])
dev.off()





















