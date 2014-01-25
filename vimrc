execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a
set runtimepath^=~/.vim/bundle/ctrlp.vim

set splitright
set splitbelow

colorscheme molokai

map <C-b> :NERDTreeToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set nocompatible
set modelines=0

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

nnoremap j gj
nnoremap k gk

nnoremap ; :
let g:tmuxify_custom_command = 'tmux split-window -d -l 12'
