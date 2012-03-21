syntax on
set number
set nocompatible
set cursorline              " 突出显示当前行  
set ruler                   " 打开状态栏标尺  
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4  
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格  
set tabstop=4               " 设定 tab 长度为 4  
set nobackup                " 覆盖文件时不备份  
set autochdir               " 自动切换当前目录为当前文件所在的目录  
filetype plugin indent on   " 开启插件  
set backupcopy=yes          " 设置备份时的行为为覆盖  
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感  
set nowrapscan              " 禁止在搜索到文件两端时重新搜索  
set incsearch               " 输入搜索内容时就显示搜索结果  
set hlsearch                " 搜索时高亮显示被找到的文本  
set noerrorbells            " 关闭错误信息响铃  
set novisualbell            " 关闭使用可视响铃代替呼叫  
set t_vb=                   " 置空错误铃声的终端代码  
set magic                   " 设置魔术  
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存  
set guioptions-=T           " 隐藏工具栏  
set guioptions-=m           " 隐藏菜单栏  
set smartindent             " 开启新行时使用智能自动缩进  
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符  
set cmdheight=1             " 设定命令行的行数为 1  
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)  
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " 设置在状态行显示的信息  
set foldenable              " 开始折叠  
set foldmethod=syntax       " 设置语法折叠  
set foldcolumn=0            " 设置折叠区域的宽度  
setlocal foldlevel=1        " 设置折叠层数为  
set modifiable
set write
"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936

filetype plugin on  
map <F3> :silent! Tlist<CR>  
let Tlist_Ctags_Cmd = '/usr/bin/ctags.exe'  
let Tlist_Show_One_File = 1  
let Tlist_Exit_OnlyWindow = 1  
let Tlist_Use_Right_Window = 1  

set nocp
filetype plugin on
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_DisplayMode = 0
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 0
let OmniCpp_ShowAccess = 1
let OmniCpp_DefaultNamespaces = ["std"]
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 0
let OmniCpp_SelectFirstItem = 0


set tags+=/usr/include/sys/systags
set tags+=~/.vim/stdc++tags
set tags+=/usr/include/nettags
set tags+=/cygdrive/d/Main_uWorldServer/unig2/uworld1.60/tags

set cindent
map fg : Dox<cr>
let g:DoxygenToolkit_briefTag_pre="@function  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="linx"
let g:DoxygenToolkit_licenseTag="My own license \<enter>"             

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ .<CR>
