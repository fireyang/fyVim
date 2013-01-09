" Last Change: 2013-1-9 
" Last Change: 2012-11-13 17:21:06

source ~/.vim/vundle_setting

"判断系统是否具有“自动命令”（autocmd）的支持
if has('autocmd')
"清除所有的自动命令，以方便调试
au!
"对于后缀为“.asm”的文件，认为其是微软的 Macro Assembler 格式
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
endif



" 载入文件类型插件
filetype plugin on 

"set encoding=utf-8
set fileencodings=utf-8
"filetype plugin indent on
syntax on
"设置行
set nu
"换行
"设置缩进
set sw=4
set ts=4
set softtabstop=4
set tabstop=4
set expandtab
set cursorline
set smartindent "根据当前行的缩进，预测下一行的缩进
set nocompatible  "使得vim避免了原始vi的一些漏洞和限制
set autoindent      "使用你当前行的缩进来设置你下一行的缩进

"在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu

"打开自动缩,继承前一行的缩进注释 进
set autoindent
"默认情况下手动折叠
set foldmethod=manual

"配色方案
colorscheme desert
"colorscheme tango
"使用空格代替tab
set et

set guifont=Courier_New:h10:cANSI
"set guifontwide=YaHei\ Consolas\ Hybrid:h10

" 不要生成swap文件
set noswapfile
"隐藏菜单栏
set guioptions-=m
"隐藏工具栏
set guioptions-=T

let g:snips_author = 'FireYang'

" 窗口区域切换,F5 后 ↑↓←→  来切换
"imap <silent> <C-h> <esc><C-W><left>
vmap <silent> <C-h> <esc><C-W><left>
nmap <silent> <C-h> <C-W><left>
"imap <silent> <C-l> <esc><C-W><right>
vmap <silent> <C-l> <esc><C-W><right>
nmap <silent> <C-l> <C-W><right>
"imap <silent> <C-k> <esc><C-W><up>
vmap <silent> <C-k> <esc><C-W><up>
nmap <silent> <C-k> <C-W><up>
"imap <silent> <C-j> <esc><C-W><down>
vmap <silent> <C-j> <esc><C-W><down>
nmap <silent> <C-j> <C-W><down>

inoremap <C-z> <C-O>u
nnoremap <C-z> u    
" ctrl + y
"inoremap <C-y> <C-O><C-R>
"nnoremap <C-y> <C-R>
" ctrl + v
nnoremap <C-b> "+gP
inoremap <C-b> <C-O>"+gP
" ctrl + f
imap <C-f> <esc>:/
nmap <C-f> :/
" ctrl + r
imap <A-r> <esc>:%s/
vmap <A-r> <esc>:%s/
nmap <A-r> :%s/
" ctrl + o
imap <C-o> <C-O>:e
vmap <C-o> <esc>:e
nmap <C-o> :e 
"}}}

if version >603
set helplang=cn
set cmdheight=2
endi

"切换窗体，并最大化
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
"设置状态
set laststatus=2
"设置命令行2行
set cmdheight=2
"设置缓存
set nobackup
set ai
set lbr
set hls
"set no wrap
set nowrap


"customer hotkey===============================
"set mapleader
let mapleader = ","

"Insert now date
"map <F3> :echo strftime("%Y-%m-%d %a %I:%M %p")<cr>

" QuickClose
map <leader>u :ZoomWin<cr>
map <leader><leader>u :close<cr>
" VSplit
map <leader>vs :vsplit<cr><C-l>
" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tl :tabN<cr>
map <leader>th :tabp<cr>
" Fast editing of the .vimrc
"map <leader>e :e! $HOME/.vimrc<cr>
"edit vimrc file
map <leader>e :exec "edit" '~/.vimrc'<cr>
" fast saving 
map <leader>w :w<cr>
map <leader>q :q<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -n

"switch to current directory 
"切换到当前文件目录
map <leader>cd :cd %:p:h<CR>  

