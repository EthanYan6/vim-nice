# vim-nice

> 作者：小闫同学

## 1.说明

[vim使用教程](https://www.pythonnote.cn/vim操作有这一篇就足够了/)

懒人配置vim方案，现成的 `.vimrc` 配置文件，仅需按照步骤安装即可。

此 `.vimrc` 中安装了一些常用的插件，如目录树、函数列表、文件搜索等等，大家可以根据需要，结合配置文件中注释内容，删除掉不需要的插件。（比如小闫同学写 `js` 、 `python` ，以及 `go` ，所以偏向这三者，有这三者的语法高亮、格式检查插件，如果你不需要，完全可以删除相应内容。） 

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

> 配合 `vim` 插件 `ag.vim` 使用

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

### 2.4 安装 ctags

> 配合 `vim` 插件 `tagbar` 使用

#### 2.4.1 Mac

1.安装

```
# MAC
brew install ctags-exuberant
```

> 因为 `mac` 系统中自带了一个老版本的 `ctags`，我们需要一个新版本的，并且让 `vim` 识别到我们新下载的内容，所以需要安装后，添加配置。

2.创建文件识别我们安装的 `ctags`

```shell
vim ~/.profile
```

3.添加一句话：

```shell
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
```

4.保存后，终端刷新一下这个文件：

```shell
source ~/.profile
```

#### 2.4.2 Ubuntu

1.安装

```shell
# Ubuntu
sudo apt install ctags
```

2.将仓库中 `.vimrc` 中第67行内容中 `ctags` 命令的路径修改为下列内容

```shell
let g:tagbar_ctags_bin='/usr/bin/ctags'
```

### 2.5 安装代码格式化插件

1.配合 `vim` 插件 `vim-autopep8` 使用，可以自动格式化 `python` 代码

```shell
sudo pip3 install autopep8
```

> `sudo` 是因为需要给全局安装，而不是当前用户安装

2.配合 `vim` 插件 `vim-flake8` 使用，可以提示 `python` 代码错误并给出修改意见。

```shell
sudo pip3 install flake8
```

3.配合 `vim` 插件 `vim-prettier` 使用，可以格式化前端代码。

```shell
sudo npm install -g prettier
```

### 2.6 用仓库中.vimrc文件替换掉电脑中的同名配置文件

1.将 `.vimrc` 放到家目录 `~/` 下

2.使用 `vim` 打开 `.vimrc`

```shell
vim ~/.vimrc
```

3.使用包管理器安装配置文件中的插件

> 安装插件之前大家可以根据注释内容，删除掉不需要的插件

```shell
:PluginInstall
```

> 上述命令在 `vim` 的命令模式下输入。输入完后回车，耐心等待下载，插件比较多耗时比较长。如果下载完成后，底部状态行会显示 `Done!`

### 2.7 注意

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

3.如果 `Ubuntu` 用户使用 `xshell` 等工具连接服务器后，打开 `vim` 发现鼠标右键没用了，无法复制粘贴。

**解决办法**：将仓库 `.vimrc` 中第203行 `set mouse`  部分改为下列代码：

```shell
set mouse=c
```

4.如果安装完后颜色显示与图片中不一致，状态栏颜色也是黑色，那么可以考虑使用如下方法解决。

**解决方法**：

```shell
vim ~/.vimrc
# 添加如下信息
set t_Co=256
```

## 3.tmux配置过程

[tmux使用教程](https://www.pythonnote.cn/Tmux让你开发效率飞起/)

![tmux展示图片](https://github.com/EthanYan6/pic/raw/37009d8171c8b05e07233ae254c063664953db74/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87%E7%BC%96%E8%BE%91_20200803230243.jpg)

### 3.1 下载tmux包管理工具

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

`Tmux-plugins` 集合：https://github.com/tmux-plugins

### 3.2 系统命令预备下载

1.`tmux-urlview` 插件需要安装 `urlview` 命令。

```shell
# Mac
brew install urlview
```

> 此插件可以寻找 `tmux` 中出现的所有的 `url` ，通过 `ctrl-b + u` 列出所有链接，然后回车直接用浏览器打开。

2.`tmux-mem-cpu-load` 插件需要安装命令：

```shell
# Mac
brew install tmux-mem-cpu-load
```

右下角显示的结果说明：

```shell
  2885/7987MB [|||||     ]  51.2% 2.11 2.35 2.44

   ^    ^          ^         ^     ^    ^    ^
   |    |          |         |     |    |    |
   1    2          3         4     5    6    7
   
1. Currently used memory.
2. Available memory.
3. CPU usage bar graph.
4. CPU usage percentage.
5. Load average for the past minute.
6. Load average for the past 5 minutes.
7. Load average for the past 15 minutes.
```

> `load average` 显示的是最近1分钟、5分钟和15分钟的系统平均负载

### 3.3 将该仓库中 .tmux.conf 放到家目录下

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

### 3.5 注意

1.如果进入 `tmux` 中打开 `vim` 时，发现状态栏以及背景等**颜色不正常**

**解决方法**：

使用 `tmux -2` 命令启动。

> 之前我们都是使用 `tmux` 开启并进入到多窗口页面，现在添加参数 `-2`

2.如果使用 `ubuntu` 系统的话，有可能你会发现进入 `tmux` ，鼠标右键无法使用复制粘贴功能，弹出来的菜单是 `tmux` 的帮助菜单。

**解决办法**：在 `tmux` 中先按 `prefix` （ 也就是`Ctrl + B`），然后按冒号，输入如下内容：

```shell
# 2.1版本之后
: set -g mouse off 
# 2.1版本之前
: set -g mode-mouse off
```

