set nocompatible		"be iMproved
set number
filetype off			"required
syntax on
set hidden
set wildmenu
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
let mapleader=","

"set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'myusuf3/numbers.vim'
"Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
"always display statusline
set laststatus=2

let $PYTHONPATH='/usr/lib/python3.4/site-packages'

"pymode settings
let g:pymode=1

"solarized settings
syntax enable
set background=dark
colorscheme solarized

