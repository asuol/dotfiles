" Use Vim features (nocompatible with classic vi)
set nocompatible

" TODO: is this required by syntastic? It in on after Vundle..
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Syntax checking/highlight
Plugin 'vim-syntastic/syntastic'

" Filesystem tree
Plugin 'scrooloose/nerdtree'

" Python identation
Plugin 'vim-scripts/indentpython.vim'

" Auto-complete
Plugin 'ycm-core/YouCompleteMe'

" Missing formatter plugin (eg google/vim-codefmt)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on    " required

"
" Universal editor settings
"

" enable syntax highlight
syntax on 

" 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" basic identation - copy the style from the previous line
set autoindent 

" store files in unix format
set fileformat=unix 

set encoding=utf-8

" show line numbers
set nu 

" Ctrl + i to ident whole file
map <C-i> gg=G<C-o><C-o> 

" Enable code folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

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

" YCM configurations
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/gzhsuol_global_extra_conf.py'

nnoremap ,g :YcmCompleter GoTo<CR>
nnoremap ,r :YcmCompleter RefactorRename<space>

" enable mouse mode
set mouse=a

" highlight search occurrences
set hlsearch

" use ENTER to clear any previous highlighting
nnoremap <CR> :noh<CR><CR>

