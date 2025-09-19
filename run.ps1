param(
    [string]$class
)

$lib = "D:\code\datastructure\libs\algs4.jar"
$src = "src"

$cp = ".;$lib;$src"

# 编译
javac -cp $cp "$src\$($class -replace '\.', '\\').java"

# 运行
java -cp $cp $class
