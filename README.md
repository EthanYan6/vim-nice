# vim-nice

> 作者：小闫同学

## 1.说明

懒人配置vim方案，有详细说明，以及现成的.vimrc配置文件供使用。

The lazy person configures the vim scheme, with detailed instructions, and the ready-made `.vimrc` configuration file for use.

> 更多精彩内容，请关注微信公众号【Pythonnote】或者【全栈技术精选】<br> 请收藏个人网站 pythonnote.cn

![vim展示](https://github.com/EthanYan6/pic/raw/master/vim%E5%B1%95%E7%A4%BA.png)

## 2.步骤

### 1.安装包管理工具

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
```

### 2.下载最经典的vim配色方案

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

### 3.安装搜索命令ag

#### 3.1 Ubuntu

```shell
sudo apt-get install silversearcher-ag
```

#### 3.2 CentOS

```shell
yum install epel-release
yum -y install the_silver_searcher
```

#### 3.3 Mac

```shell
brew install the_silver_searcher
```

### 4.用仓库中.vimrc文件替换掉电脑中的同名配置文件

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

### 5.注意

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
