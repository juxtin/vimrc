set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

" Mouse power!
set mouse=a

" Ctrl+P support
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Save files on FocusLost
au FocusLost * :wa

" default register is the OS X clipboard
set clipboard=unnamed

" ,, to cycle open files
nnoremap <leader><leader> <c-^>

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set t_Co=256
set laststatus=2
let g:Powerline_symbols = 'unicode'

" Intuitive split behavior
set splitright
set splitbelow

colorscheme molokai

map <C-b> :NERDTreeToggle<CR>

" Use ctrl+[hjkl] to navigate splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
nnoremap <tab> %
vnoremap <tab> %

nnoremap j gj
nnoremap k gk

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap ; :
let g:tmuxify_custom_command = 'tmux split-window -d -l 12'

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
