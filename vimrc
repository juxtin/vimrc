set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader = ","

" improve mouse dragging for tmux
if &term =~ '^screen'
  " tmux knows the extended mouse mode
  set ttymouse=xterm2
endif

" Tab wrangling
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" ,W to strip trailing whitespace (doesn't work?)
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" jk, going back to normal mode
inoremap jk <ESC>

" Fugitive niceness
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gs :Gstatus<cr>

" Mouse power!
set mouse=a

" Wrap on words
set wrap linebreak nolist

" Disable annoying markdown folding
let g:vim_markdown_folding_disabled=1

" Ctrl+P support
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Save files on FocusLost
au FocusLost * :wa

" default register is the OS X clipboard
set clipboard=unnamed

" ,, to cycle open files
nnoremap <leader><leader> <c-^>

" Powerline/Airline
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim "not airline
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
set ttimeoutlen=50

"let g:Powerline_symbols = 'unicode'

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

" Preview markdown with ,P
" Setting default browser here
let g:PreviewBrowsers='chrome'

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"nnoremap ; :
"let g:tmuxify_custom_command = 'tmux split-window -d -l 12'

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
