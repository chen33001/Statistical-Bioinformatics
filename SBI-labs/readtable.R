read.tabfiles <- function (dir) {
  setwd(dir)
  x=1
  data.all = data.frame()
  for (file in list.files(dir)) {
    data=read.table(file,header=TRUE,sep="\t")
    if (x==length(list.files(dir))) {
      data.all=data.all
    } 
    else {
      data.all=rbind(data.all,data)
    }
    x=x+1   
  }
  return(data.all)
}

dir <- "C:\\Users\\User\\Desktop\\Bioinformatidcs\\Statistical-Bioinformatics\\SBI-labs\\data"
read.tabfiles(dir)

