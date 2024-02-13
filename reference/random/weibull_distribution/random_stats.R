# 乱数の分布クラスを使用した結果の出力を、図に変換するRスクリプト

# png形式で出力する
png("weibull_distribution.png")

# TSV形式になっている乱数の出力データを読み込む
x <- read.table("weibull_distribution.tsv")

# 1列ずつ抜き出す
value1 = x$V1
value2 = x$V2

# プロットとして出力
#plot(density(value1), xlim=c(-1,10), ylim=c(0.0,0.8), lty="longdash", col=rgb(0,1,0))
#par(new=T)
#plot(density(value2), xlim=c(-1,10), ylim=c(0.0,0.8), col=rgb(0,0,1))

# グラフを縦に2つ
par(mfrow=c(2, 1))

hist(value1, col=rgb(0,1,0,0.2))
hist(value2, col=rgb(0,0,1,0.2))
