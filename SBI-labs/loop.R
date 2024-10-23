x <- 0
while (x<7) {
  cat(weekdays(Sys.time()+60*60*24*x,abbrev= TRUE)," ")
  x <- x + 1
}