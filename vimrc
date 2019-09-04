"=================================================
" VIM mode
"=================================================
if &compatible
  set nocompatible
endif

"=================================================
" GUI
"=================================================
if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guifont=Input\ 10,Source\ Code\ Pro\ 10,DejaVu\ Sans\ Mono\ 10
endif

"=================================================
" Plugins
"=================================================
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

"=================================================
" Syntax highlighting
"=================================================
filetype plugin indent on
syntax on

"=================================================
" Colorsheme
"=================================================
colorscheme default
set background=dark

if filereadable(expand("~/.vimrc_background"))
  if isdirectory(expand("~/.vim/plugged/base16-vim"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif
endif

"=================================================
" Netrw
"=================================================
let g:netrw_dirhistmax=0

"=================================================
" Temp files & history
"=================================================
set nobackup
set noswapfile
set nowritebackup
set viminfo=

"=================================================
" Text
"=================================================
set backspace=start,indent,eol
set clipboard=unnamed,unnamedplus
set encoding=utf-8
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set nowrap
set timeoutlen=250

"=================================================
" Indentation
"=================================================
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4

"=================================================
" Buffers
"=================================================
set autoread
set hidden

"=================================================
" Windows
"=================================================
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
"let g:airline_powerline_fonts = 1
set laststatus=2
set ruler
set showmode
set showcmd
set statusline=
set statusline+=[%n]\ %<%f%(\ %M%)%(\ [%R%H%W]%)
set statusline+=%=
set statusline+=%(%{&filetype!=''?&filetype:'text'}\ \ %)
set statusline+=%(%{&fileencoding!=''?&fileencoding:&encoding}%(\ %{&bomb?'BOM':''}%)\ \ %)
set statusline+=%(%{&fileformat}\ \ %)
set statusline+=%(%3p%%%10(%l/%L%):%4(%c%)%)

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
