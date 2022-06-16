# Path to your oh-my-zsh installation.
export ZSH="/Users/ethanyan/.oh-my-zsh"

# 此处为typewritten主题的相关设置
ZSH_THEME="avit"

plugins=(
  git
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# 插件相关配置
# 设置 autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# tab 补全系统
autoload -U compinit && compinit -u

# Setting PATH for java 8
# 以前 java12 配置目录，没找到先预留export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

# setting v8
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/v8@3.15/lib"
export CPPFLAGS="-I/usr/local/opt/v8@3.15/include"

# 设置系统语言
export LANG="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"

# 设置 git 命令执行前获取 sql
# alias git="$CAST_HOME/tool/git.sh"

# 取消自动更新 homebrew
export HOMEBREW_NO_AUTO_UPDATE=true

# 设置 icu4c 变量
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# 导入 zsh 配置
source $ZSH/oh-my-zsh.sh

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql-client/lib"
export CPPFLAGS="-I/usr/local/opt/mysql-client/include"

# macvim replace vim
alias vi=vim
alias vim=mvim
alias mvim='/usr/local/bin/mvim -v'

# python3 and python2
alias python2='/usr/local/bin/python2.7'
alias python3='/usr/local/bin/python3.9'
alias python=python3

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export CFLAGS='-I/usr/local/opt/zlib/include -L/usr/local/opt/zlib/lib'
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# zlib
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
# bzip2
export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"
# pyenv
export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
# pyenv-virtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# sphinx-doc
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

export PATH="/usr/local/opt/ruby/bin:$PATH"

#nvm
export NVM_DIR="/Users/ethanyan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# 导入系统文件的环境变量
source ~/.bash_profile

