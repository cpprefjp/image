# 乱数の分布クラスを使用した結果の出力を、図に変換するRスクリプト

# png形式で出力する
png("random.png")

# TSV形式になっている乱数の出力データを読み込む
x <- read.table("random.tsv")

# 1列目だけを抜き出す
value1 = x$V1
value2 = x$V2

# 以下、データの特性に合わせて、ヒストグラムかプロットかを選択してください。

# 折れ線グラフを2つ混ぜて出力
plot(density(value1), xlim=c(-1,4), ylim=c(0.0,0.8), type="l")
par(new=T)
plot(density(value2), xlim=c(-1,4), ylim=c(0.0,0.8), type="l")

