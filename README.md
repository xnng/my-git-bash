<h4 align="center">Powerful Git Bash</h4>
<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/52173922-dbbbbd80-27c7-11e9-8181-4928ce4087b3.png" width="750">
</p>

## Installation

```bash
$ curl https://gitee.com/xnng/bash/raw/master/install.sh | sh
```

>用管理员身份打开 `Git Bash`，然后再运行命令，期间会开两个窗口，需要手动复制下文件，这个过程是在安装字体，命令无法操作，[动图演示](https://xnngs.oss-cn-shanghai.aliyuncs.com/img/bash.gif)

## Documentation

- [在 Windows 一键上打造体验良好的 Linux 终端](https://juejin.im/post/5bd5a08cf265da0add520772)

## Change Log

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

## License

[MIT](./LICENSE)
