"Jason Ashlock

" vundle {{{
    set nocompatible              " be improved, required
    filetype off                  " required

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'gmarik/vundle.vim'
        Plugin 'bling/vim-airline'
        Plugin 'scrooloose/syntastic'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'mattn/emmet-vim'
        Plugin 'mustache/vim-mustache-handlebars'
        Plugin 'cmather/vim-meteor-snippets'
        Plugin 'scrooloose/nerdtree'
        
    call vundle#end()
"}}}

" colors {{{
    set t_Co=256
	syntax enable		"enables syntax highlighting 
	colorscheme molokai	"sets this colorscheme
	"colorscheme badwolf	"sets this colorscheme
"}}}

" misc {{{
"}}}

" spaces & tabs {{{
	set modelines=1		"allows local files to change local settings
	set tabstop=4		"4 space tab
	set softtabstop=4	"4 space tab
	set expandtab		"use space for tabs			
	set shiftwidth=4	"auto indent spacing
	filetype indent on	"indent according to filetype
	filetype plugin on	"loads plugin by filetype
	set autoindent		"use same indent as previous line
"}}}

" ui layout {{{
	set number		"show line numbers
	set showcmd		"show commands in bottom bar
	set nocursorline	"highlight current line
	set wildmenu		"menu
	set wildmode=longest:list,full
    set showmatch       "highlight matching parens
    set laststatus=2    "always show status line
    set mouse=a
    autocmd vimenter * NERDTree  "NerdTree opens with vim
"}}}

" searching {{{
    set ignorecase          " ignore case when searching
    set incsearch           " search as characters are entered
    set hlsearch            " highlight all matches
" }}}

" folding {{{
" "=== folding ===
    set foldmethod=indent   " fold based on indent level
    set foldnestmax=10      " max 10 depth
    set foldenable          " don't fold files by default on open
    nnoremap <space> za
    set foldlevelstart=10    " start with fold level of 1
" }}}

" Airline {{{
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_powerline_fonts=1
"}}}

" Syntastic settings {{{
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
"    let g:syntastic_css_csslint_exec = '/usr/bin/csslint'
    let g:syntastic_css_checkers = ['csslint']
    let g:syntastic_html_checkers = ['tidy'] 
    let g:syntastic_javascript_checkers = ['jshint']
    let g:syntastic_html_tidy_exec = '/usr/bin/tidy5'
    let g:mustache_abbreviations = 1
"}}}
" vim:foldmethod=marker:foldlevel=0
