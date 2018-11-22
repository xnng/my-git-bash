<h4 align="center"> My Git Bash</h4>
<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/47200745-df0e7300-d3a9-11e8-96b3-7302e3634027.png" width="749">
</p>

>以下所有命令都需在 `Git Bash` 或任一基于 `mintty` 的终端中执行。

## 外观和主题

```bash
$ git clone https://github.com/xnng/terminal-sync.git
$ cd terminal-sync
$ cp .minttyrc ~
$ cp git-prompt.sh /etc/profile.d
```

## 我的 `alias`

```bash
$ cp .bash_profile ~
```

## 安装 `tree` 和 `wget` 命令

```bash
$ cp tools/* /usr/bin
```

## 安装 `tmux`

```bash
$ cp tmux/bin/* /usr/bin
$ cp tmux/share/* /usr/share
```

感谢 hongwenjun 提取的 [tmux for windows](https://github.com/hongwenjun/tmux_for_windows)

## 设置代理、用户信息和字符编码

`.gitconfig` 文件包含我的用户信息、代理设置和更详细的字符编码设置，根据情况更改成自己的信息后执行以下命令可生效

```bash
$ cp .gitconfig ~
```

## 安装 `DejaVu Sans Mono Bold` 字体

执行如下命令，如果终端能够正常显示箭头而不是方框则无需安装此字体。

```bash
$ echo ➜
```

部分版本的 `windows` 上的 `Git Bash` 会出现 `unicode` 字符显示异常的现象，安装此字体可解决。

依次打开「控制面板」-「外观和个性化」-「字体」，将 `fonts` 文件夹中的内容复制到该文件夹中。然后在 `Git Bash` 的选项中可选择此字体。

![image](https://user-images.githubusercontent.com/38936252/48838951-e2d84f80-edc4-11e8-9556-b29e26cab818.png)

[点此下载更多字体](https://github.com/powerline/fonts)

## License

[MIT](./LICENSE)