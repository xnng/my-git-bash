<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868583-fa523400-4dc8-11e9-9315-a1c0b71b7a6b.png" width="750">
</p>
<h6 align="center">My Git Bash</h6>

## 开始

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

## 安装字体

此字体可解决 unicode 字符乱码问题，执行命令后，将字体文件拖放进去即可完成安装。

```bash
$ start c://Windows//Fonts && start %cd%/fonts
```

<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868439-70ee3200-4dc7-11e9-9096-d0159d78ea3c.gif" width="750">
</p>

## 安装主题

```bash
$ cp .minttyrc ~ && cp git-prompt.sh /etc/profile.d
```

<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/54868400-09d07d80-4dc7-11e9-8498-b6f146133b8c.gif" width="750">
</p>

安装主题后同时会开启复制粘贴快捷键：Ctrl + Shift + C/V，需要 Git Bash 版本大于 2.20.0 才可以使用。

## 安装 Tmux

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


## 安装 wget 和 tree 命令

```bash
$ cp tools/* /usr/bin
```

## 终端快捷键

附 Git Bash 终端快捷键

| 按键 | 效果 |
| :------: | :------: |
| Alt + Enter | 全屏 |
| 关闭窗口 | Ctrl + D（需当前行没有字符才可用） |
| 清屏 | Ctrl + L |
| 打开终端 | 右键快捷方式，在属性中自行设置 |
| 复制粘贴 | Ctrl + Shift + C/V（v2.20.0 版本后才支持） |

其他快捷键遵循 `Bash` 标准快捷键，例如 `Ctrl + R` 搜索历史命令、`exit` 退出终端、`clear` 和 `reset` 清屏、`Ctrl + E/A` 光标到行首尾，等等可自行搜索。

## 个人设置

>以下为我的个人配置备份，请勿模仿。

- 安装我的 alias

```bash
$ cp .bash_profile ~
```

- 安装我的 Tmux 配置

```bash
$ cp tmux/.tmux.conf ~
```

- 安装 tmux 自动恢复 session 和持久化 session 插件

>插件会使新建 tmux 工作区的时间明显变长，非必要情况下无需使用插件。

```bash
$ mkdir -p ~/.tmux/plugins/tpm
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

将注释的部分全部打开，按 `prefix I` 安装插件。

- 安装我的 git 配置

```bash
$ cp .gitconfig ~
```

## 更新日志

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


