# 乱数の分布クラスを使用した結果の出力を、図に変換するRスクリプト

# png形式で出力する
png("lognormal_distribution.png")

# TSV形式になっている乱数の出力データを読み込む
x <- read.table("lognormal_distribution.tsv")

# 1列目だけを抜き出す
value = x$V1

# グラフを縦に2つ
par(mfrow=c(2, 1))

# 1つ目：データをプロットとして出力
plot(value)

# 2つ目：ヒストグラムとして出力
hist(value)
