" ��������������� 
set fileencodings=utf-8,gbk,chinese

" tab��4���ո�
set ts=4

" �����к�
set number

set expandtab

" �Զ�ѡ����뷽ʽ
set autoindent

" �����Զ�ƥ��ģʽ
set smartindent

" �����α�
set cursorline

" ��������
set guifont=Monaco:h11

" ��������ɫ
syntax on
set background=light
colorscheme onedark

let g:lighline = {'colorscheme':'onedark'}
let g:airline='onedark'


" gvim͸����
if executable("vimtweak.dll")
    autocmd guienter * call libcallnr("vimtweak","SetAlpha",222)
    autocmd guienter * call libcallnr("vimtweak","EnableMaximize",1)
endif

