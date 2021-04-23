"=================================================
" VIM mode
"=================================================
set nocompatible

"=================================================
" Plugins
"=================================================
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
call plug#end()

"=================================================
" Syntax
"=================================================
filetype plugin indent on
syntax on

"=================================================
" Colorsheme
"=================================================
set background=dark
set termguicolors

if isdirectory(expand("~/.vim/plugged/base16-vim"))
    colorscheme base16-material-darker
else
    colorscheme default
endif

"=================================================
" Text & IO
"=================================================
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set encoding=utf-8
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set timeoutlen=250

"=================================================
" Indentation
"=================================================
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

"=================================================
" Buffers
"=================================================
set autoread
set hidden

"=================================================
" Windows
"=================================================
set nowrap
set scrolloff=5
set sidescrolloff=15
set splitbelow
set splitright

"=================================================
" Line numbers
"=================================================
set number
set relativenumber

"=================================================
" Match
"=================================================
set showmatch
set matchtime=1

"=================================================
" Status line
"=================================================
set laststatus=2
set ruler
set showmode
set showcmd

"let g:airline_powerline_fonts = 1

"=================================================
" Wild menu
"=================================================
set path=.,,**
set wildmenu

"=================================================
" Search
"=================================================
set ignorecase
set smartcase
set incsearch

"=================================================
" Maps
"=================================================
set pastetoggle=<leader>p
nnoremap <c-j> :m+1<CR>
nnoremap <c-k> :m-2<CR>
