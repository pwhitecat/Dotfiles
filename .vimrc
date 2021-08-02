" ################
" #  IMPORTANTS  #
" ################


let mapleader=" "
nnoremap ; :
nnoremap ii <Esc>


" ######################
" #  General Settings  #
" ######################


set encoding=utf-8
set nocompatible
set path+=**
syntax on
set t_Co=256
set nocompatible
set hidden
filetype on
filetype plugin indent on
filetype plugin on
set backspace=2
set scrolloff=7
set clipboard+=unnamedplus
set laststatus=1

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set number
set relativenumber
set nohlsearch
set colorcolumn=80

set complete+=kspell
set completeopt=longest,menuone
set shortmess+=c

set noswapfile
set nobackup
set nowritebackup
set linebreak


" ##################
" #  Key Bindings  #
" ##################


" Auto bracket
    inoremap { {}<left>
    inoremap {<CR> {<CR>}<Esc>O
    inoremap {} {}
    inoremap {{ {
    inoremap " ""<left>
    inoremap "" "
    inoremap ' ''<left>
    inoremap '' '
    inoremap ( ()<left>
    inoremap () ()
    inoremap (( (
    inoremap [ []<left>
    inoremap [] []
    inoremap [[ [

" Text Shifting
    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv

" Text Indent
    vnoremap > >gv
    vnoremap < <gv
    nnoremap <Tab> >>_
    nnoremap <S-Tab> <<_
    inoremap <S-Tab> <C-D>
    vnoremap <Tab> >gv
    vnoremap <S-Tab> <gv

" Remap Split Navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

" Adjust split sizes
    nnoremap <silent> <C-left> :vertical resize -3<CR>
    nnoremap <silent> <C-Right> :vertical resize +3<CR>
    nnoremap <silent> <C-Up> :resize +3<CR>
    nnoremap <silent> <C-Up> :resize -3<CR>

" Paste Date
    imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
    imap <F4> <C-R>=strftime("%Y-%m-%d %a")<CR>
