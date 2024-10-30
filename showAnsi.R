showAnsi = function() {
  for (i in 0:10) {
    for (j in 0:9) {
      n = 10*i + j;
      if (n > 109) break;
      cat(sprintf("\033[%dm %3d\033[0m", n, n))
    }
    cat("\n");
  }
  return (0);
}
showAnsi()
