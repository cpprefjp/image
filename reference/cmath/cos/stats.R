png("cos.png", height=380, width=640)
x <- read.table("cos.tsv")

args = x$V1
results = x$V2

plot(args, results, xlim=c(-10, 10), xaxp=c(-10, 10, 20))
