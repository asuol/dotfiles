set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Syntax checking/highlight
Plugin 'vim-syntastic/syntastic'

" Filesystem tree
Plugin 'scrooloose/nerdtree'

" Missing formatter plugin (eg google/vim-codefmt)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" Universal editor settings
"

syntax on " enable syntax highlight

" 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent " basic identation - copy the style from the previous line

set fileformat=unix " store files in unix format

set encoding=utf-8

set nu " show line numbers

" Ctrl + i to ident whole file
map <C-i> gg=G<C-o><C-o> 

"
" Plugin configurations
"

" start NERDtree if no file was specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDtree with ctrl + n
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"

" syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
