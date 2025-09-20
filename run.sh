#!/bin/bash

CLASS=$1
shift   # 把第一个参数(类名)去掉，后面剩下的全是 main 的参数
LIB="$(pwd)/libs/algs4.jar"
SRC="src"
OUT="out"

CP=".:$LIB:$OUT"

# 编译到 out 目录，保持干净
javac -d "$OUT" -cp "$LIB:$SRC" "$SRC/$(echo $CLASS | tr '.' '/').java"

# 运行，支持 < 输入重定向
java -cp "$CP" "$CLASS" "$@"
