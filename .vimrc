" vim options
" Display
set number	"設置行號 
set hlsearch	"高亮搜索
set ruler
set linebreak
set showcmd	"show incompoete commands
set incsearch
set cursorline
set scrolloff=5

" Search
set smartcase
set ignorecase		"case-insensitive search


set rtp+=/usr/local/opt/fzf
set clipboard=unnamedplus	" use system clipboard
set wildmenu
set backup
set autoindent
set smartindent
set clipboard=unnamed
set noswapfile

" tab and space
set softtabstop=2
set shiftwidth=2
set expandtab
set showtabline=2
:nnoremap  <TAB> >>


" split
set splitbelow
set splitright

" color
syntax on
colorscheme default

set nopaste

" -------------------------------------------------------------------

" Learn Vimscript the hard way practice
" Basic key mapping

" 兩行互換
" :nnoremap - ddp 

inoremap <c-u> <esc>lviwUi
nnoremap <leader><c-u> viwU

let mapleader = ","
let maplocalleader = "\\"

" 按下 ,ev，就切一個vertical 視窗開始編輯.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 按下 ,sv，就 source .vimrc 
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a" <esc>hbi"<esc>lel

" insert mode and visual mode，用 jk 取代 <esc>
inoremap jk <esc>
vnoremap jk <esc>

" 強制把原本的 <esc> 功能取消
inoremap <esc> <nop>

" 強制把 insert mode 的方向鍵取消
inoremap <Up> <nop>

" 強制把 normal mode 的方向鍵取消
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" python 相關設定
" 按 \c 就把游標所在那行變成 comment
autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
autocmd FileType python :iabbrev <buffer> iff if:<left>
autocmd FileTYpe python :iabbrev <buffer> class class test_(self):<cr>def __init__(self):<cr><esc>

iabbrev @@ alfiechen@google.com
iabbrev ccopy Copyright 2013 Alfie Chen, all rights reserved.
iabbrev ssig -- <cr>Alfie Chen<cr>alfiechen@google.com


" --------------------------------------------------------------------



let @a = 'IA NOTE: ^[j'

" for NERDTree
" enable NERDTree when vim is launched.
" autocmd VimEnter * NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>


" vim-plug
call plug#begin('~/.vim/plugged')


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'


" On-demand loading
Plug 'zivyangll/git-blame.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ggreer/the_silver_searcher'
Plug 'tomtom/tcomment_vim'
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Both options are optional. You don't have to install fzf in ~/.fzf
" and you don't have to run the install script if you use fzf only in Vim.
call plug#end()


" plugin settings
" git-blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>







filetype plugin indent on
