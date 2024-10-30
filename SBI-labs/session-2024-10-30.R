setwd("C:/Users/User/Desktop/Bioinformatidcs/Statistical-Bioinformatics/SBI-labs")
protein <- read.table("protein-consumption.tab")
class(protein)
dim(protein)
summary(protein)
apply(protein, 1, sum)

rownames(head(protein[order(1/protein$Eggs),], n=3))
rownames(head(protein[order(1/protein$Fish),], n=3))

meat_consumption <- function(protein){
  total_consumption <- apply(protein, 1, sum)
  red_white_meat_consumption <- cbind(protein[1],protein[2])
  row_sums <- apply(red_white_meat_consumption, 1, sum)
  total_percentage <- matrix(row_sums/total_consumption)
  rownames(total_percentage) <- rownames(protein)
  colnames(total_percentage) <- c("red_white_meat_percentage")
  total_percentage <- total_percentage > 0.2
  return(total_percentage)
}

meat_consumption(protein)



E_coli <- read.xlsx('E-coli-data.xlsx', sheet=2,colNames = FALSE, rowNames = TRUE)
colnames(E_coli) <- c("mcg","gvh","lip","chg","aac","alml","alm2","loc")
write.xlsx(E_coli, file = "C:/Users/User/Desktop/Bioinformatidcs/Statistical-Bioinformatics/SBI-labs/E-coli-data-fixed.xlsx", asTable = FALSE, rowNames = TRUE)


