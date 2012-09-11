syntax on
set number
set nocompatible
set cursorline              " ͻ����ʾ��ǰ��  
set ruler                   " ����״̬������  
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ���Ϊ 4  
set softtabstop=4           " ʹ�ð��˸���ʱ����һ��ɾ�� 4 ���ո�  
set tabstop=4               " �趨 tab ����Ϊ 4  
set nobackup                " �����ļ�ʱ������  
set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼  
filetype plugin indent on   " ��������  
set backupcopy=yes          " ���ñ���ʱ����ΪΪ����  
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����  
set nowrapscan              " ��ֹ���������ļ�����ʱ��������  
set incsearch               " ������������ʱ����ʾ��������  
set hlsearch                " ����ʱ������ʾ���ҵ����ı�  
set noerrorbells            " �رմ�����Ϣ����  
set novisualbell            " �ر�ʹ�ÿ���������������  
set t_vb=                   " �ÿմ����������ն˴���  
set magic                   " ����ħ��  
set hidden                  " ��������δ�������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�  
set guioptions-=T           " ���ع�����  
set guioptions-=m           " ���ز˵���  
set smartindent             " ��������ʱʹ�������Զ�����  
set backspace=indent,eol,start " ���趨�ڲ���״̬�޷����˸����� Delete ��ɾ���س���  
set cmdheight=1             " �趨�����е�����Ϊ 1  
set laststatus=2            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)  
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\  " ������״̬����ʾ����Ϣ  
set foldenable              " ��ʼ�۵�  
set foldmethod=syntax       " �����﷨�۵�  
set foldcolumn=0            " �����۵������Ŀ���  
setlocal foldlevel=1        " �����۵�����Ϊ  

set autowriteall			" �л��ļ�ʱ�Զ�����
"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
set fileformats=unix
set modifiable
set write

set backup
set backupext=.bak

filetype plugin on  
map <F3> :silent! Tlist<CR>  
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  
let Tlist_Show_One_File = 1  
let Tlist_Exit_OnlyWindow = 1  
let Tlist_Use_Right_Window = 1  

set nocp
filetype plugin on
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_DisplayMode = 1
"let OmniCpp_ShowScopeInAbbr = 0
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_DefaultNamespaces = ["std"]
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 0
"let OmniCpp_SelectFirstItem = 0

"-- omnicppcomplete setting -- 
set completeopt=menu,menuone 
let OmniCpp_MayCompleteDot = 1 " autocomplete with . 
let OmniCpp_MayCompleteArrow = 1 " autocomplete with -> 
let OmniCpp_MayCompleteScope = 1 " autocomplete with :: 
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert) 
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files 
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window 
let OmniCpp_GlobalScopeSearch=1 
let OmniCpp_DisplayMode=1 
let OmniCpp_DefaultNamespaces=["std"]

set tags+=/usr/include/sys/systags
set tags+=~/.vim/stdc++tags
set tags+=/usr/include/nettags
set tags+=/cygdrive/d/MainuWorldServer/unig2/uworld1.60/tags
set tags+=/data/server/developers20/developers/linx/usrv/unig2/uworldServer1.60/tags

set cindent
map fg : Dox<cr>
let g:DoxygenToolkit_briefTag_pre="@function:"
let g:DoxygenToolkit_paramTag_pre="@Param	:"
let g:DoxygenToolkit_returnTag="@Returns :"
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="linx"
let g:DoxygenToolkit_licenseTag="My own license \<enter>"             

map <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ .<CR>

set nocscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-	"�������趨�Ƿ�ʹ�� quickfix ��������ʾ cscope ����
map <F4> :call Do_Cscope()<CR>
function Do_Cscope()
	if (executable('cscope') && has("cscope"))
		"silent! execute !find . -name '*.h' -o -name '*.c' -o -name '*.cpp' >> cscope.files"
		silent! execute "!cscope -bkq -i cscope.files"
	endif
endfunction

"NERDTree
filetype plugin on
nnoremap fh :NERDTreeToggle
let NERDTreeIgnore=['\.vim$', '\~$', '\.d$', '\.o$', '\.bak$']
