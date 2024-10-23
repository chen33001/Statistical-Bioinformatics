seq <- ">SBI01 an example sequence
MALVCN
MALVCN"
seqlength <- 0

for (line in strsplit(seq, "\n")[[1]]) {
  if (substr(line,0,-1) != ">"){
    seqlength = seqlength + nchar(line)
  }
}
print(seqlength)
