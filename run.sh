#!/bin/bash

CLASS=$1
LIB="`pwd`/libs/algs4.jar"
SRC="src"

CP=".:$LIB:$SRC"

# 编译
javac -cp "$CP" "$SRC/$(echo $CLASS | tr '.' '/').java"

# 运行
java -cp "$CP" $CLASS
