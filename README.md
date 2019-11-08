<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868583-fa523400-4dc8-11e9-9315-a1c0b71b7a6b.png" width="750">
</p>
<h6 align="center">My Git Bash</h6>

![GitHub](https://img.shields.io/github/license/xnng/my-git-bash.svg?logo=github)
![](https://img.shields.io/badge/Git%20Bash-%3E%3D2.20.0-blue.svg)
![](https://img.shields.io/badge/Tmux-v2.7-orange.svg)


## 目录

- [目录](#%E7%9B%AE%E5%BD%95)
- [开始使用](#%E5%BC%80%E5%A7%8B%E4%BD%BF%E7%94%A8)
  - [安装字体](#%E5%AE%89%E8%A3%85%E5%AD%97%E4%BD%93)
  - [安装主题](#%E5%AE%89%E8%A3%85%E4%B8%BB%E9%A2%98)
  - [安装 Tmux](#%E5%AE%89%E8%A3%85-tmux)
  - [安装 wget 和 tree 命令](#%E5%AE%89%E8%A3%85-wget-%E5%92%8C-tree-%E5%91%BD%E4%BB%A4)
- [终端快捷键](#%E7%BB%88%E7%AB%AF%E5%BF%AB%E6%8D%B7%E9%94%AE)
- [个人设置](#%E4%B8%AA%E4%BA%BA%E8%AE%BE%E7%BD%AE)
  - [安装我的 alias](#%E5%AE%89%E8%A3%85%E6%88%91%E7%9A%84-alias)
  - [安装我的 Tmux 配置](#%E5%AE%89%E8%A3%85%E6%88%91%E7%9A%84-tmux-%E9%85%8D%E7%BD%AE)
  - [安装 tmux 自动恢复 session 和持久化 session 插件](#%E5%AE%89%E8%A3%85-tmux-%E8%87%AA%E5%8A%A8%E6%81%A2%E5%A4%8D-session-%E5%92%8C%E6%8C%81%E4%B9%85%E5%8C%96-session-%E6%8F%92%E4%BB%B6)
  - [安装我的 git 配置](#%E5%AE%89%E8%A3%85%E6%88%91%E7%9A%84-git-%E9%85%8D%E7%BD%AE)
- [其它](#%E5%85%B6%E5%AE%83)
  - [在 VSCode 中配置 `Git Bash`](#%E5%9C%A8-vscode-%E4%B8%AD%E9%85%8D%E7%BD%AE-git-bash)
  - [解决 win10 快捷键不能秒启动问题](#%E8%A7%A3%E5%86%B3-win10-%E5%BF%AB%E6%8D%B7%E9%94%AE%E4%B8%8D%E8%83%BD%E7%A7%92%E5%90%AF%E5%8A%A8%E9%97%AE%E9%A2%98)
  - [解决某些命令会卡住不动或无法上下选择脚手架选项的问题](#%E8%A7%A3%E5%86%B3%E6%9F%90%E4%BA%9B%E5%91%BD%E4%BB%A4%E4%BC%9A%E5%8D%A1%E4%BD%8F%E4%B8%8D%E5%8A%A8%E6%88%96%E6%97%A0%E6%B3%95%E4%B8%8A%E4%B8%8B%E9%80%89%E6%8B%A9%E8%84%9A%E6%89%8B%E6%9E%B6%E9%80%89%E9%A1%B9%E7%9A%84%E9%97%AE%E9%A2%98)
- [更新日志](#%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97)

## 使用前说明

本仓库的最初目的是探索如何在 Windows 上打造出非常易用的终端环境。后来随着 Windows Terminal 和 WSL2 的发布，微软给出了一套更好的解决方案。不过目前的 WSL2 使用起来仍然像是个虚拟机，且资源消耗非常高，不适合 8GB 内存的电脑使用。

我认为现阶段 Windows Terminal（终端） + Git Bash（Shell）会是一个更好的选择，WSL2 辅助来用。

所以，我建议使用 Windows Terinal 作为终端，Git Bash 作为 Shell 搭配其使用。Git Bash 的精髓在于 alias 和自带常用 linux 命令，性能也非常高，而 Windows Terminal 目前作为终端来说可定制性和易用性更好，比如自带多标签和分屏功能，目前 Windows Terminal 的快捷键需要自行配置，我将我的配置放到了 `profiles.json` 文件中，仅供参考。

以下内容，永不过时。

## 开始使用

以下所有命令都需要在「以管理员身份运行」的 Git Bash 中执行。

先克隆仓库然后 cd 到仓库目录中再执行下面的所有操作。

```bash
$ git clone https://github.com/xnng/my-git-bash.git
$ cd my-git-bash
```

gitee 镜像：

```bash
$ git clone https://gitee.com/xnng/bash.git
$ cd bash
```

### 安装字体

此字体可解决 unicode 字符乱码问题，执行命令后，将字体文件拖放进去即可完成安装。

```bash
$ start c://Windows//Fonts && start %cd%/fonts
```

<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868439-70ee3200-4dc7-11e9-9096-d0159d78ea3c.gif" width="750">
</p>

### 安装主题

```bash
$ cp .minttyrc ~ && cp git-prompt.sh /etc/profile.d
```

<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868400-09d07d80-4dc7-11e9-8498-b6f146133b8c.gif" width="750">
</p>

安装主题后同时会开启复制粘贴快捷键：Ctrl + Shift + C/V，需要 Git Bash 版本大于 2.20.0 才可以使用。

### 安装 Tmux

tmux 是一个终端复用神器，可实现单窗口多标签页、分屏等功能，借助插件还能保存和一键恢复窗口数据。

>tmux for windows 源地址：https://github.com/hongwenjun/tmux_for_windows

```bash
$ cp tmux/bin/* /usr/bin && cp tmux/share/* /usr/share -r
```

同时开启鼠标操作：

```bash
$ echo -e "setw -g mouse\nset-option -g mouse on" > ~/.tmux.conf
```

tmux 使用：https://juejin.im/post/5a8917336fb9a0633e51ddb9

<p align="center">
    <img alt="tmux 基本操作" src="https://user-images.githubusercontent.com/38936252/54868283-df31f500-4dc5-11e9-9bd5-b706066db82d.gif" width="750">
</p>
<h6 align="center">Tmux 基本操作演示</h6>

<p align="center">
    <img alt="tmux 分屏" src="https://user-images.githubusercontent.com/38936252/54868922-c2e58680-4dcc-11e9-9cb4-1e7e795ba148.gif" width="750">
</p>
<h6 align="center">Tmux 分屏演示</h6>


### 安装 wget 和 tree 命令

```bash
$ cp tools/* /usr/bin
```

## 终端快捷键

附 Git Bash 终端快捷键

|    按键     |                    效果                    |
| :---------: | :----------------------------------------: |
| Alt + Enter |                    全屏                    |
|  关闭窗口   |     Ctrl + D（需当前行没有字符才可用）     |
|    清屏     |                  Ctrl + L                  |
|  打开终端   |       右键快捷方式，在属性中自行设置       |
|  复制粘贴   | Ctrl + Shift + C/V（v2.20.0 版本后才支持） |

其他快捷键遵循 `Bash` 标准快捷键，例如 `Ctrl + R` 搜索历史命令、`exit` 退出终端、`clear` 和 `reset` 清屏、`Ctrl + E/A` 光标到行首尾，等等可自行搜索。


## 个人设置

>以下为我的个人配置备份，请勿模仿。

### 安装我的 alias

```bash
$ cp .bash_profile ~
```

### 安装我的 Tmux 配置

```bash
$ cp tmux/.tmux.conf ~
```

### 安装 tmux 自动恢复 session 和持久化 session 插件

>插件会使新建 tmux 工作区的时间明显变长，非必要情况下无需使用插件。

```bash
$ mkdir -p ~/.tmux/plugins/tpm
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

将注释的部分全部打开，按 `prefix I` 安装插件。

### 安装我的 git 配置

```bash
$ cp .gitconfig ~
```

## 其它

### 在 VSCode 中配置 `Git Bash`

在 VSCode 中使用 `Git Bash` 只需要在 `Settings.json` 中添加如下两行即可，第一行中 `bash.exe` 的文件路径需要改成自己的，第二行是非必须配置，不配置无法使用 `alias`。

```json
{
  "terminal.integrated.shell.windows": "C:\\Program Files\\Git\\bin\\bash.exe",
  "terminal.integrated.shellArgs.windows": ["--login", "-i"]
}
  ```

<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54927827-e5eb7400-4f4d-11e9-8a0c-b75ea4a0ce8a.png" width="750">
</p>

### 解决 win10 快捷键不能秒启动问题

为 `Git Bash` 设置了全局快捷键后，可能出现按下快捷键后延迟两秒左右终端才打开的现象，只需要在服务中禁用掉 `superFetch` 即可，此服务在比较新的 win10 上改名为了 `sysMain`，禁用服务后重启操作系统生效

### 解决某些命令会卡住不动或无法上下选择脚手架选项的问题

使用某些命令，如 `python`、`mongo`、`mysql`、`redis-cli` 时会发现有卡住不动的现象，只需要在命令前面加上 `winpty` 即可，每次之性命都都要加这个会比较麻烦，可以设置 `alias` 重写命令，例如：

```bash
alias wsl='winpty wsl'
alias mysql='winpty mysql -uroot -p'
alias mongo='winpty mongo'
alias redis-cli='winpty redis-cli'
```

很多脚手架工具在初始化项目的时候提供了可以上下选择选项的功能，该功能在 git bash 中可用，但是无法显示上下选择的效果，需要在命令前加上 `winpty`，同时脚手架命令需要加上后缀 `.cmd`，例如：

```bash
alias vue='winpty vue.cmd'
```

## 更新日志

- 2019-11-08

  - 新增 windows terminal 配置

- 2019-04-28

  - 添加解决某些命令会卡住不动或无法上下选择脚手架选项的解决方法

- 2019-03-25

  - 添加 vscode 配置
  - 添加快捷加启动慢解决方法

- 2019-03-23

  - 移除一键安装脚本，分离通用和个人配置
  - 新增 tmux 演示 gif 图片
  - 新增快捷键列表

- 2019-02-03

  - 移除 vim 配置
  - 将命令提示符由 Unicode 字符改为圆点，提高兼容性
  - 修复安装脚本
  - 开启 256 真色支持
  - 优化 tmux 状态栏配色
  - 开启 Ctrl + Shift + C/V 快捷键支持

- 2018-12-24 
  
  - 新增 tmux 插件使 session 能持久化到本地
  - 终端背景色由绿色修改为灰色
  - 将红色颜色配置由橙色改回红色


