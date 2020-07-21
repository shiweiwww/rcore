## 创建 Rust 项目

### 创建项目
我们首先创建一个整个项目的目录，并在工作目录中首先创建一个名为 `rust-toolchain` 的文件，并在其中写入所需要的工具链版本：

{% label %}rust-toolchain{% endlabel %}
```
nightly-2020-06-27
```

之后在目录内部使用 `cargo new` 命令在我们的项目目录内创建一个新的 Rust 项目 os，命令如下：

{% label %}运行命令{% endlabel %}
```bash
cargo new os
```

这里我们把项目命名为 os。同时，cargo 默认为我们添加了 `--bin` 选项，说明我们将要创建一个可执行文件而非一个库。

### 目录结构

创建完成后，整个项目的目录结构如下：

{% label %}目录结构{% endlabel %}
```bash
Project                 项目目录
├── rust-toolchain      Rust 工具链版本
└── os
    ├── Cargo.toml      项目配置文件
    └── src             源代码路径
        └── main.rs     源程序
```

### 构建和运行

接下来我们进入 os 文件夹，并尝试构建、运行项目：

{% label %}运行输出{% endlabel %}
```bash
$ cargo run
   ...
Hello, world!
```

打开 `os/src/main.rs` 发现里面确实只是输出了一行 `Hello, world!`。这个应用可以正常运行，但是即使只是这么一个简单的功能，也离不开所在操作系统的帮助。我们既然要写一个新的操作系统，就不能依赖于任何已有操作系统，接下来我们尝试移除该项目对于操作系统的依赖。