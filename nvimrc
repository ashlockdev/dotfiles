"Jason Ashlock

" PlugIns {{{
    set nocompatible              " be improved, required
    filetype off                  " required

    call plug#begin('~/.vim/plugged')
        Plug 'jelera/vim-javascript-syntax'
        Plug 'pangloss/vim-javascript'
        Plug 'valloric/YouCompleteMe'
        Plug 'nathanaelkane/vim-indent-guides'
        Plug 'Raimondi/delimitMate'
        Plug 'scrooloose/syntastic'
        Plug 'marijnh/tern_for_vim'
        Plug 'scrooloose/nerdtree'
        Plug 'bling/vim-airline'
        Plug 'alvan/vim-closetag'
        
    call plug#end()
    let g:closetag_filenames = "*.html" 
"}}}

" colors {{{
    set t_Co=256
	syntax enable		"enables syntax highlighting 
    set background=dark
	colorscheme molokai	"sets this colorscheme
"}}}

" misc {{{
    imap jk <Esc>
    map <C-b> :bnext<CR>
    augroup reload_nvimrc " {
        autocmd!
        autocmd BufWritePost $MYNVIMRC source $MYNVIMRC
    augroup END "}

    :let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    "Close html tags with </ <space>
    :iabbrev </ </<C-X><C-O> 
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"}}}

" spaces & tabs {{{
	set modelines=1		"allows local files to change local settings
	set tabstop=2		"2 space tab
	set softtabstop=2	"2 space tab
	set expandtab		"use space for tabs			
	set shiftwidth=2	"auto indent spacing
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
 "   autocmd vimenter * NERDTree  "NerdTree opens with vim
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
    let g:syntastic_javascript_checkers = ['eslint']
    let g:mustache_abbreviations = 1
"}}}

" NerdTree {{{
    map <C-n> :NERDTreeToggle<CR>
    let g:NERDTreeWinSize=22
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"}}}

" vim:foldmethod=marker:foldlevel=0
