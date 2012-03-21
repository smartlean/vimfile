syntax on
set number
set nocompatible
set cursorline              " ͻ����ʾ��ǰ��  
set ruler                   " ��״̬�����  
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4  
set softtabstop=4           " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�  
set tabstop=4               " �趨 tab ����Ϊ 4  
set nobackup                " �����ļ�ʱ������  
set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼  
filetype plugin indent on   " �������  
set backupcopy=yes          " ���ñ���ʱ����ΪΪ����  
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����  
set nowrapscan              " ��ֹ���������ļ�����ʱ��������  
set incsearch               " ������������ʱ����ʾ�������  
set hlsearch                " ����ʱ������ʾ���ҵ����ı�  
set noerrorbells            " �رմ�����Ϣ����  
set novisualbell            " �ر�ʹ�ÿ�������������  
set t_vb=                   " �ÿմ����������ն˴���  
set magic                   " ����ħ��  
set hidden                  " ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�  
set guioptions-=T           " ���ع�����  
set guioptions-=m           " ���ز˵���  
set smartindent             " ��������ʱʹ�������Զ�����  
set backspace=indent,eol,start " ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���  
set cmdheight=1             " �趨�����е�����Ϊ 1  
set laststatus=2            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)  
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " ������״̬����ʾ����Ϣ  
set foldenable              " ��ʼ�۵�  
set foldmethod=syntax       " �����﷨�۵�  
set foldcolumn=0            " �����۵�����Ŀ��  
setlocal foldlevel=1        " �����۵�����Ϊ  
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
