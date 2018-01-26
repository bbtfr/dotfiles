xssh
===

效果：

在服务器上执行 subl / open 命令，在本地打开文本编辑器 / 文件夹

![screencast](xssh-demo.gif)

原理：

通过 sshfs 把目标目录挂载到本地，配合 iTerm2 的一个神奇功能 [triggers](https://www.iterm2.com/documentation-triggers.html) 在 iTerm2 屏幕上输出文本，在本地捕获后打开相应的程序和路径

Installation
---

```
git clone git@git-core.megvii-inc.com:liyang/xssh.git ~/.dotfiles
```

setup iterm2
---

```
cd ~/.dotfiles
sh iterm2/install.sh
```
