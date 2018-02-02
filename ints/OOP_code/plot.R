#S3method(plot, pical_s3)

plot <- function(x,y,col,pch,...) UseMethod("plot")
plot.pical_s3  <- function(x){
  plot.matrix <- rbind(x$out$sample,x$out$indictor)
  inside.point <- plot.matrix[1:2,which(plot.matrix[3,]==1)]
  outside.point <- plot.matrix[1:2,which(plot.matrix[3,]==0)]
  plot(x=inside.point[1,], y=inside.point[2,], col="black",pch=19)
  points(x=outside.point[1,], y=outside.point[2,], col="red",pch=19)
}
