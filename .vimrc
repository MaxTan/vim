" Vundle�������

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" �����������
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

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



" ��������������� 
set fileencodings=utf-8,gbk,chinese

" tab��4���ո�
set ts=4

" �����к�
set number

" �Զ�ѡ����뷽ʽ
set autoindent

" �����Զ�ƥ��ģʽ
set smartindent

" ����ʵʱ����
set incsearch

" ������ʾ�������
set hlsearch

" �����α�
set cursorline

" ��������
set guifont=Monaco:h11

" ��������ɫ
syntax on
set background=light
colorscheme onedark

let g:lightline = {
    \ 'colorscheme':'onedark'
    \ }
let g:airline_theme='onedark'
let g:laststatus=2


" gvim͸����
if executable("vimtweak.dll")
    autocmd guienter * call libcallnr("vimtweak","SetAlpha",240)
    autocmd guienter * call libcallnr("vimtweak","EnableMaximize",1)
endif

if has("gui_running")
    "au GUIEnter * simalt ~x " ��������ʱ�Զ����
    set guioptions-=m " ���ز˵���
    set guioptions-=T " ���ع�����
    set guioptions-=L " ������������
    "set guioptions-=r " �����Ҳ������
    "set guioptions-=b " ���صײ�������
    "set showtabline=0 " ����Tab��
endif


" ����ʾvim�༭ģʽ
set noshowmode


" ����ʱ��NERDTree
autocmd vimenter * NERDTree