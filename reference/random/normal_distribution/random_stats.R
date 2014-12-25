# 乱数の分布クラスを使用した結果の出力を、図に変換するRスクリプト

# png形式で出力する
png("normal_distribution.png")

# TSV形式になっている乱数の出力データを読み込む
x <- read.table("normal_distribution.tsv")

# 1列目だけを抜き出す
value = x$V1

# 以下、データの特性に合わせて、ヒストグラムかプロットかを選択してください。

# ヒストグラムとして出力
#hist(value)

# プロットとして出力
plot(density(value))
