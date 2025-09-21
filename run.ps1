param(
    [string]$CLASS,          # 类名，例如 ch0.BinarySearch
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Args          # 其余参数传递给 main
)

$LIB  = "$(Get-Location)\libs\algs4.jar"
$SRC  = "src"
$OUT  = "out"
$CP   = ".;$LIB;$OUT"

# 确保 out 目录存在
if (-not (Test-Path $OUT)) {
    New-Item -ItemType Directory -Path $OUT | Out-Null
}

# 类名转路径，例如 ch0.BinarySearch → ch0\BinarySearch.java
$Path = $CLASS -replace '\.', '\'

# 编译
& javac -d $OUT -cp "$LIB;$SRC" "$SRC\$Path.java"

# 运行
& java -cp "$CP" $CLASS @Args
