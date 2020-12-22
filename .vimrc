" 添加vim运行时路径
set runtimepath+=~/.vim

" Vundle插件配置

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/max/source/vim/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 插件放这里面
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" 解决中文乱码问题 
set fileencodings=utf-8,gbk,chinese

" 设置智能缩进
set smartindent

" tab键4个空格
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" 光标移动括号时高亮显示匹配的括号
set showmatch

" 开启行号
set number


" 设置实时搜索
 set incsearch

" 高亮显示搜索结果
set hlsearch

" 设置游标
set t_Co=256
set cursorline
set cursorcolumn
"highlight CursorLine cterm=none ctermbg=236 guibg=red
"highlight CursorColumn cterm=none ctermbg=236 guibg=red

"显示行尾空格
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:-

" 配置字体
set guifont=Monaco:h11

" 取消自动折行
set nowrap

" 配置主题色

syntax on
set background=light
colorscheme onedark
let g:lightline = {
    \ 'colorscheme':'onedark'
    \ }
let g:airline_theme='onedark'
let g:laststatus=2



" gvim透明度
if executable("vimtweak.dll")
    autocmd guienter * call libcallnr("vimtweak","SetAlpha",240)
    "autocmd guienter * call libcallnr("vimtweak","EnableMaximize",1)
endif

" gvim专用
if has("gui_running")
    "au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    "set guioptions-=r " 隐藏右侧滚动条
    "set guioptions-=b " 隐藏底部滚动条
    "set showtabline=0 " 隐藏Tab栏
endif

" windows terminal 鼠标方块
if &term =~ '^xterm'
    let &t_SI .= "\<Esc>[5 q"
    let &t_EI .= "\<Esc>[2 q"
endif


" 不显示vim编辑模式
set noshowmode


" 启动时打开NERDTree
" autocmd vimenter * NERDTree

" 修改配置文件后自动加载
autocmd! bufwritepost .vimrc source ~\.vimrc

" 键盘映射
"
"切换窗口映射成mm
nnoremap mm <C-W><C-W>

nnoremap -b :exe 'NERDTreeToggle'<CR>
