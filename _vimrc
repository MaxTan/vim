" 解决中文乱码问题 
set fileencodings=utf-8,gbk,chinese

" tab键4个空格
set ts=4

" 开起行号
set number

set expandtab

" 自动选择对齐方式
set autoindent

" 设置自动匹配模式
set smartindent

" 设置游标
set cursorline

" 配置字体
set guifont=Monaco:h11

" 配置主题色
syntax on
set background=light
colorscheme onedark

let g:lighline = {'colorscheme':'onedark'}
let g:airline='onedark'


" gvim透明度
if executable("vimtweak.dll")
    autocmd guienter * call libcallnr("vimtweak","SetAlpha",222)
    autocmd guienter * call libcallnr("vimtweak","EnableMaximize",1)
endif

