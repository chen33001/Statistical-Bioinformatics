seq <- ">SBI01 an example sequence
MALVCN
MALVCN"
getSeqlength <- function(seq){
  seqlength <- 0
  for (line in strsplit(seq, "\n")[[1]]) {
    if (substr(line,1,1) != ">"){
      seqlength = seqlength + nchar(line)
    }
  }
  return(seqlength)
}

getSeqlength(seq)
