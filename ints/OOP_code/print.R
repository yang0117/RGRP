#S3method(print, pical_s3)

print <- function(x) UseMethod("print")
print.pical_s3 <- function(x){
  print(x$out$pi.cal)
}
