" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" 自动补全
Plugin 'Valloric/YouCompleteMe'
" 目录树
Plugin 'scrooloose/nerdtree'
" 给目录树添加 git支持
Plugin 'Xuyuanp/nerdtree-git-plugin'
" vim 状态行
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 文件搜索
Plugin 'kien/ctrlp.vim'
" 配合上面 ctrlp 使用，搜索函数
Plugin 'tacahiroy/ctrlp-funky'
" 快速跳转
Plugin 'easymotion/vim-easymotion'
" 根据具体内容搜索文件：:Ag [options] {pattern} [{directory}]
" :Ag! content 
Plugin 'rking/ag.vim'
" 语法检测
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8' " F7 检测代码是否符合规范
Plugin 'tell-k/vim-autopep8' " F8 自动格式化代码
" 添加缩进指示线，使用:IndentLinesToggle
Plugin 'Yggdroot/indentLine'
" 平滑滚动
Plugin 'terryma/vim-smooth-scroll'
" 多光标输入
Plugin 'terryma/vim-multiple-cursors'
" git状态
Plugin 'airblade/vim-gitgutter'
"start: <C-n> start multicursor and add a virtual cursor + selection on the match
"next: <C-n> add a new virtual cursor + selection on the next match
"skip: <C-x> skip the next match
"prev: <C-p> remove current virtual cursor + selection and go back on previous match
"select all: <A-n> start multicursor and directly select all matches
Plugin 'pangloss/vim-javascript'
" 自动格式化 js 代码
Plugin 'mitermayer/vim-prettier'
" <leader> + p
" 显示文件中类、函数等大纲视图
Plugin 'majutsushi/tagbar'
" go 语言代码检查以及语法高亮
Plugin 'fatih/vim-go'
" python跳转以及补全
Plugin 'davidhalter/jedi-vim'
" vue颜色显示
Plugin 'posva/vim-vue'
" c 语言插件
Plugin 'vim-scripts/c.vim'
" 自动闭合标签 html 和 xml
Plugin 'docunext/closetag.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""
" tagbar 的配置
nmap <F9> :TagbarToggle<CR>
""设置tagbar使用的ctags的插件,必须要设置对  
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
"设置tagbar的窗口宽度
let g:tagbar_width=40
""设置tagbar的窗口显示的位置,为左边
let g:tagbar_right=1
"打开文件自动 打开tagbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py call tagbar#autoopen()

""""""""""""""""""""""""""""""""""""""""""""""
" 目录树的配置
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" nerdtree
autocmd vimenter * NERDTree    " 打开vim，自动开启nerd tree
""""""""""""""""""""""""""""""""""""""""""""""
" vim-vue setting
let g:vue_pre_processors = 'detect_on_enter'
autocmd FileType vue syntax sync fromstart
let g:syntastic_javascript_checkers = ['eslint']
""""""""""""""""""""""""""""""""""""""""""""""
" vim-smooth-scroll配置
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" vim状态行的配置
let g:airline_theme="bubblegum"
""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
let g:airline_cmd = 'CtrlP'        " ctrl + p 按键启动
""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim - ctrlp-funky
" fu 进入当前文件的函数列表搜索
" fU 搜索当前光标下单词对应的函数
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
""""""""""""""""""""""""""""""""""""""""""""""
" ag.vim 命令配置 
let g:ag_highlight=1
let g:ag_working_path_mode="r"
""""""""""""""""""""""""""""""""""""""""""""""
" autopep8配置 
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" syntastic 设置
let g:syntastic_python_checkers = ['flake8']

""""""""""""""""""""""""""""""""""""""""""""""
" 缩进指示线配置 
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1
""""""""""""""""""""""""""""""""""""""""""""""
" YCM配置 
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
""""""""""""""""""""""""""""""""""""""""""""""
" gitgutter配置 
let g:gitgutter_terminal_reports_focus = 0
nnoremap <leader>gd :GitGutterToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" vim-go 语法高亮设置
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
""""""""""""""""""""""""""""""""""""""""""""""
" vim-javascript设置
" 高亮文档字符串
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 修改 vim 颜色，对应~/.vim/color
"colorscheme molokai
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

set paste "进入paste模式,避免粘贴格式问题
" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

" history文件中需要记录的行数 
set history=100 

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 与windows共享剪贴板 
set clipboard+=unnamed 

" 侦测文件类型 
filetype on 

" 载入文件类型插件 
filetype plugin on 

" 为特定文件类型载入相关缩进文件 
filetype indent on 

" 保存全局变量 
set viminfo+=! 

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 

" 语法高亮 
colo desert
syntax on 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide 

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=2 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a " a启动了所有模式，这样就屏蔽了鼠标右健功能，c模式开启复制黏贴
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
set hlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
" set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 总是显示状态行 
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 设TAB宽度为4个空格 
set ts=4
" 在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用
set softtabstop=4
" 表示每一级缩进的长度，一般设置成跟 softtabstop 一样
set shiftwidth=4
" 表示缩进用空格来表示
set expandtab

"autocmd FileType javascript,json setlocal sw=2 ts=2 et ai
" 将js，vue和html的缩进设置为两个空格
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix

" 配置prettier
let g:prettier#config#tab_width = 4
let g:prettier#config#print_width = 120
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" 不要换行 
set wrap 

" 在行和段开始处使用制表符 
set smarttab 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Autocommands 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示 

if has("autocmd") 
autocmd FileType xml,javascript,html,vue,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number 
autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o--> 
autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o 
autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=200 
autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim 
autocmd BufReadPost * 
\ if line("'\"") > 0 && line("'\"") <= line("$") | 
\ exe " normal g`\"" | 
\ endif 
endif "has("autocmd") 


" 能够漂亮地显示.NFO文件 
set encoding=utf-8 
function! SetFileEncodings(encodings) 
let b:myfileencodingsbak=&fileencodings 
let &fileencodings=a:encodings 
endfunction 
function! RestoreFileEncodings() 
let &fileencodings=b:myfileencodingsbak 
unlet b:myfileencodingsbak 
endfunction 

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single au BufReadPost *.nfo call RestoreFileEncodings() 

" 高亮显示普通txt文件（需要txt.vim脚本） 
au BufRead,BufNewFile * setfiletype txt 

" 用空格键来开关折叠 
set foldenable 
set foldmethod=indent 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 

" minibufexpl插件的一般设置 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
