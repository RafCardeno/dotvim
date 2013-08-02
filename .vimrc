set nocompatible

" Define leader key
let mapleader='\'

" Real programmers use spaces, not tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround

" Don't create backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Line numbers and stuff
set number
set tw=79
set nowrap
set fo-=t

" Colors and colorschemes
" url: https://github.com/jgdavey/vim-railscasts/blob/master/colors/railscasts.vim
set t_Co=256
colorscheme railscasts

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Enable code folding
set foldmethod=indent
set foldlevel=99

" Tab management
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>w :tabclose<cr>
nnoremap <leader><Tab> :tabnext<cr>

" Split windows management
nnoremap <leader>o :vsplit<space>
nnoremap <Leader><S-o> :split<space>
nnoremap <leader>q :exit<cr>
" nnoremap <Tab> :wincmd w<cr>

set wmh=0 
set wmw=0
if bufwinnr(1)
    " Window movement
    map <C-UP> <C-W>k
    map <C-DOWN> <C-W>j
    map <C-LEFT> <C-W>h
    map <C-RIGHT> <C-W>l
    " Window folding
    map <C-S-UP> <C-W>k<C-W>_
    map <C-S-DOWN> <C-W>j<C-W>_
    map <C-S-LEFT> <C-W>h500<C-W>>
    map <C-S-RIGHT> <C-W>l500<C-W>>
    " Window resize
    map <S-UP> <C-W>-
    map <S-DOWN> <C-W>+
    map <S-LEFT> <C-W><
    map <S-RIGHT> <C-W>>
endif

" Set up Vundle
" url: https://github.com/gmarik/vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'klen/python-mode'

" NERDtree settings and keybindings
" url: https://github.com/scrooloose/nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <leader><leader> :NERDTreeToggle<cr>

" Python Mode settings
" url: https://githun.com/klen/python-mode
let g:pymode_virtualenv = 1
let g:pymode_rope = 0
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes"
let g:pymode_lint_onfly = 1
let g:pymode_lint_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_minheight = 3
let g:pymode_lint_maxheight = 6
let g:pymode_folding = 0
let g:pymode_utils_whitespaces = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
