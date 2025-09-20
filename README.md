# 数据结构项目

这是一个基于 Java 的数据结构学习项目，使用普林斯顿大学《算法（第 4 版）》配套的 algs4 库进行算法实现和学习。

## 环境依赖


### Java 环境安装

#### Linux/macOS 系统

```bash
# Ubuntu/Debian
~> sudo apt-get update
~> sudo apt-get install openjdk-11-jdk
```

验证安装：

```bash
java -version
javac -version
```

## 项目结构

```
datastructure/
├── src/                    # 源代码目录
│   ├── Main.java          # 主入口文件
│   └── ch0/               # 第0章示例代码
│       ├── BinarySearch.java
│       ├── HelloWorld.java
│       ├── HelloGoodbye.java
│       ├── RandomSeq.java
│       ├── RandomWord.java
│       ├── tinyT.txt      # 测试数据文件
│       └── tinyW.txt      # 测试数据文件
├── libs/                  # 依赖库目录
│   └── algs4.jar         # 普林斯顿算法库
├── out/                   # 编译输出目录（自动生成）
├── run.sh                 # Linux/macOS运行脚本
├── run.ps1               # Windows PowerShell脚本
└── README.md             # 项目说明文档
```

## 脚本使用说明

### Windows 系统 (PowerShell)

使用`run.ps1`脚本来编译和运行 Java 程序：

```powershell
# 基本语法
.\run.ps1 <完整类名>

# 示例：运行HelloWorld
.\run.ps1 ch0.HelloWorld

```

**注意事项**：

- 类名必须是完整的包名加类名格式（如：`ch0.BinarySearch`）

### Linux/macOS 系统 (Bash)

使用`run.sh`脚本来编译和运行 Java 程序：

```bash
# 给脚本添加执行权限（首次使用）
chmod +x run.sh

# 基本语法
./run.sh <完整类名> [程序参数...]

# 示例：运行HelloWorld
./run.sh ch0.HelloWorld

# 示例：运行BinarySearch
./run.sh ch0.BinarySearch src/ch0/tinyW.txt < src/ch0/tinyT.txt

# 示例：运行带参数的程序
./run.sh ch0.HelloGoodbye Alice Bob
```

**脚本特性**：

- 自动编译 Java 源文件到`out`目录
- 自动包含 algs4.jar 库的类路径
- 支持命令行参数传递
- 支持输入重定向

## 手动编译和运行

如果不使用脚本，也可以手动编译和运行：

### Windows 系统

```cmd
# 编译
javac -d out -cp "libs\algs4.jar;src" src\ch0\HelloWorld.java

# 运行
java -cp ".;libs\algs4.jar;out" ch0.HelloWorld
```

### Linux/macOS 系统

```bash
# 编译
javac -d out -cp "libs/algs4.jar:src" src/ch0/HelloWorld.java

# 运行
java -cp ".:libs/algs4.jar:out" ch0.HelloWorld
```

## 参考资源

- [《算法（第 4 版）》官方网站](https://algs4.cs.princeton.edu/home/)
- [algs4 库文档](https://algs4.cs.princeton.edu/code/javadoc/)
- [Java 官方文档](https://docs.oracle.com/javase/)
