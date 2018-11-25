<h4 align="center">Powerful Git Bash</h4>
<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48936837-180cab00-ef47-11e8-8925-71eea5980e74.png" width="750">
</p>

> 以下所有命令都需在 `Git Bash` 中执行。

## 一键配置

执行以下命令会安装我的所有配置，其中有我的 `Git Bash` 主题、我常用的 `alias`、`tree`、`wget`、`tmux`、`DejaVu Sans Mono Bold` 字体、`vim` 主题 `molokai` 以及我的用户信息和代理配置。

```bash
$ curl https://gitee.com/xnng/bash/raw/master/install.sh | sh
```

请先用管理员身份打开 `Git Bash`，然后再运行命令，期间会开两个窗口，需要手动复制下文件，这个过程是在安装字体，命令无法操作。

我录了一张动态图，由于图片过大无法展示，所以需要手动点击观看（32MB）: [Bash.gif](https://xnngs.oss-cn-shanghai.aliyuncs.com/img/bash.gif)

**注意：上面的操作同时会有我的用户信息和代理配置，他们都在 `~/.gitconfig` 这个文件中，你需要修改此文件或删除它才能正常使用。**

## 按需配置

如果你不需要我的那么多配置，或者想知道如何自定义配置，就接着往下看：

### 安装主题

```bash
$ git clone https://github.com/xnng/bash.git
$ cd bash
$ cp .minttyrc ~
$ cp git-prompt.sh /etc/profile.d
```

如果你想知道如何修改 `git-prompt.sh` 文件，可以参考[这篇文章](http://www.voidcn.com/article/p-wavhthxe-tr.html)。

### 安装 `tmux`

tmux 是一个终端复用神器，可解决 `Git Bash` 没有多标签功能的问题。

tmux 入门可参考掘金的[这篇文章](https://juejin.im/post/5a8917336fb9a0633e51ddb9)。

```bash
$ git clone https://github.com/xnng/bash.git
$ cd bash
$ cp tmux/bin/* /usr/bin
$ cp tmux/share/* /usr/share -r
```

创建配置文件支持鼠标拖动窗口分隔线

```bash
$ vim ~/.tmux.conf
```

```bash
setw -g mouse
set-option -g history-limit 20000
set-option -g mouse on
bind -n WheelUpPane select-pane -t= \; copy-mode -e \; send-keys -M
bind -n WheelDownPane select-pane -t= \; send-keys -M
```

这里还要感谢 hongwenjun 提取的 [tmux for windows](https://github.com/hongwenjun/tmux_for_windows)

### 安装 `DejaVu Sans Mono Bold` 字体

执行如下命令，如果终端能够正常显示箭头而不是方框则无需安装此字体。

```bash
$ echo ➜
```

部分版本的 `windows` 上的 `Git Bash` 会出现 `unicode` 字符显示异常的现象，安装此字体可解决。

依次打开「控制面板」-「外观和个性化」-「字体」，将 `fonts` 文件夹中的内容复制到该文件夹中。然后在 `Git Bash` 的选项中可选择此字体。

<p align="center">
<img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48935544-fad5dd80-ef42-11e8-9ab8-d8df8605a68c.png" width="750">
</p>

[点此下载更多字体](https://github.com/powerline/fonts)

### 安装 wget 和 tree 命令

```bash
$ git clone https://github.com/xnng/bash.git
$ cd bash
$ cp tools/* /usr/bin
```

## 杂谈

这个可以说是我目前能够配置的最好的终端了，日常使用基本足够。如果想要 Linux 系统的话，不妨试试虚拟机、Docker for windows、云服务器或是微软推出的 Linux 子系统 wsl。

在 `Git Bash` 中用如下方式可进入 wsl。

```
$ winpty wsl
```

<p align="center">
<img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48980806-be53de80-f108-11e8-8781-4bf4c508cd7c.gif" width="750">
</p>

> 其实一般我是不用 wsl 的，它目前的性能和兼容性还不是很好，期待未来它能有更大的作用。我一般会安装 Docker for windows，普通的项目就在 docker 容器中跑。如果有更多的需求会直接 ssh 到服务器中。

如果你想在 VSCode 中使用 `Git Bash`，也是一个很不错的选择，只需要在 `settings.json` 中添加如下配置即可，其他开发工具类似：

```json
{
  "terminal.integrated.shell.windows": "C:\\Program Files\\Git\\bin\\bash.exe",
  "terminal.integrated.shellArgs.windows": ["--login", "-i"]
}
```

<p align="center">
<img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48980950-7b930600-f10a-11e8-9d8c-4c95de7327df.png" width="750">
</p>

最后再说一下如何给 Git Bash 添加快捷键吧

搜索 `Git Bash`，然后打开文件所在位置

<p align="center">
<img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48981059-daa54a80-f10b-11e8-8ba3-f99a9b3f74a6.png" width="700">
</p>

然后右键点击快捷方式，就能设置了

<p align="center">
<img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/48981096-3079f280-f10c-11e8-95ca-545fa55904b8.png" width="750">
</p>

Windows 的某些版本会出现快捷键打开程序有 3 秒延迟的情况，这个时候禁用掉 `sysMain` 服务即可，如果你找不到这个服务，那么你应该是在用版本较低的 windows，找到它的原名 `superFetch` 也是可以的，禁用后重启电脑即可生效。

此服务其实是针对机械硬盘的缓存服务，对固态没用，可以放心禁用掉。

## License

[MIT](./LICENSE)
