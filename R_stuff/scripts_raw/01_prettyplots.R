library(devtools)

pdf("~/ccbb_projects/cmm522/R_stuff/plots/01_plot.pdf")
x <- seq(-pi,pi,0.1)
plot(x, sin(x), col="dodgerblue2", pch=20)
points(x, cos(x), col="indianred", pch=20)
dev.off()

j = runif(100)
k = runif(100)
pdf("~/ccbb_projects/cmm522/R_stuff/plots/02_plot.pdf")
plot(j, k, col="mediumorchid2", pch=20)
dev.off()

pdf("~/ccbb_projects/cmm522/R_stuff/plots/03_doubleplots.pdf")
plot(x, sin(x), col="dodgerblue2", pch=20)
points(x, cos(x), col="indianred", pch=20)
plot(j, k, col="mediumorchid2", pch=20)
dev.off()