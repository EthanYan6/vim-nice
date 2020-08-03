# vim-nice

> 作者：小闫同学

## 1.说明

[vim使用教程](https://www.pythonnote.cn/vim操作有这一篇就足够了/)

懒人配置vim方案，有详细说明，以及现成的.vimrc配置文件供使用。

The lazy person configures the vim scheme, with detailed instructions, and the ready-made `.vimrc` configuration file for use.

> 更多精彩内容，请关注微信公众号【Pythonnote】或者【全栈技术精选】<br> 请收藏个人网站 pythonnote.cn

![vim展示](https://github.com/EthanYan6/pic/raw/master/vim%E5%B1%95%E7%A4%BA.png)

## 2.步骤

### 2.1 安装包管理工具

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
```

### 2.2 下载最经典的vim配色方案

1.克隆所需仓库文件

```shell
git clone https://github.com/tomasr/molokai.git ~/.vim/colors
```

2.移动文件

```shell
mv ~/.vim/colors/colors/molokai.vim ~/.vim/colors
```

> 将克隆下来的代码中 `molokai.vim` 放到 `vim` 可读取配置的目录内（`~/.vim/colors`）。

3.删除无用文件

```shell
cd ~/.vim/colors
rm -rf colors README.md LICENSE.md
```

> `colors` 中有用的文件我们已经移除，这个空目录可以删除；`README.md` 是说明文件；`LICENSE.md` 是授权说明文件。

### 2.3 安装搜索命令ag

#### 2.3.1 Ubuntu

```shell
sudo apt-get install silversearcher-ag
```

#### 2.3.2 CentOS

```shell
yum install epel-release
yum -y install the_silver_searcher
```

#### 2.3.3 Mac

```shell
brew install the_silver_searcher
```

### 2.4 用仓库中.vimrc文件替换掉电脑中的同名配置文件

1.将 `.vimrc` 放到家目录 `~/` 下

2.使用 `vim` 打开 `.vimrc`

```shell
vim ~/.vimrc
```

3.使用包管理器安装配置文件中的插件

```shell
:PluginInstall
```

> 上述命令在 `vim` 的命令模式下输入。输入完后回车，耐心等待下载，插件比较多耗时比较长。如果下载完成后，底部状态行会显示 `Done!`

### 2.5 注意

1.如果报错：The ycmd server SHUT DOWN (restart with ...low the instructions in the documen

**解决方法**：

```shell
cd ~/.vim/bundle/YouCompleteMe
./install.py
```

2.如果报错：ERROR: Unable to find executable 'cmake'. CMake is required to build ycmd

**解决办法**：

```shell
# Ubuntu
sudo apt install cmake
# Mac
brew install cmake
```

3.如果安装完后颜色显示与图片中不一致，状态栏颜色也是黑色，那么可以考虑使用如下方法解决。

**解决方法**：

```shell
vim ~/.vimrc
# 添加如下信息
set t_Co=256
```

## 3.tmux配置过程

[tmux使用教程](https://www.pythonnote.cn/Tmux让你开发效率飞起/)

### 3.1 下载tmux包管理工具

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 3.2 将该仓库中 .tmux.conf 放到家目录下

如果你的家目录下存在同名文件，则替换为该仓库中的 `.tmux.conf` 文件。

### 3.3 安装配置文件中的插件

1.进入 `tmux` 中，使用 `ctrl-b` 加上 `I` ，安装插件。

> 配置文件有三个重要插件：一个显示剩余电量，一个显示 `CPU` 使用率，一个可以持久化保存当前所有窗口配置。

2.**持久化保存当前 `tmux` 所有窗口配置**：

> 保存内容包括：界面中所有命名 `Window`，每个 `Window` 中分割的 `Panel`，以及每个 `Panel` 中的路径。

使用如下命令保存：

```shell
<ctrl-b> + <ctrl-s>
```

断电或电脑关机重启后，先进入 `tmux`，然后使用如下命令恢复：

```shell
<ctrl-b> + <ctrl-r>
```

### 3.4 注意

如果进入 `tmux` 中发现打开 `vim` 时，发现状态栏以及背景等**颜色不正常**

**解决方法**：

使用 `tmux -2` 命令启动。

> 之前我们都是使用 `tmux` 开启并进入到多窗口页面，现在添加参数 `-2`

