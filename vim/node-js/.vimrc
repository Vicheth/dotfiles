set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" General
" Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node.
Plugin 'moll/vim-node'
" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

" Linter
" Align declarations, equals signs, etc.
Plugin 'godlygeek/tabular'

" Syntax
" JavaScript indentation and syntax
Plugin 'pangloss/vim-javascript'
" Enhanced JavaScript Syntax for Vim
Plugin 'jelera/vim-javascript-syntax'
" Syntax checking hacks for vim
" Plugin 'scrooloose/syntastic'
" Vim mode for mustache and handlebars (Deprecated)
Plugin 'juvenn/mustache.vim'
" Syntax Highlighting for Stylus
Plugin 'wavded/vim-stylus'
" Vim Jade template engine syntax highlighting and indention
Plugin 'digitaltoad/vim-jade'
" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'bronson/vim-trailing-whitespace'

" Editing
" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'
" An extensible & universal comment vim-plugin that also handles embedded filetypes
Plugin 'tomtom/tcomment_vim'
" vim plugin which formated javascript files by js-beautify
Plugin 'maksimr/vim-jsbeautify'

" Colorschemes
" Mango
Plugin 'goatslacker/mango.vim'

" Snippets
" This project adds CoffeeScript support to vim. It covers syntax, indenting, compiling, and more.
Plugin 'kchmck/vim-coffee-script'
" Emmet.vim
Plugin 'mattn/emmet-vim'
" angular.vim
Plugin 'burnettk/vim-angular'
" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional
Plugin 'honza/vim-snippets'

" Browsing
" The NERD Tree
Plugin 'scrooloose/nerdtree'
" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'

" Miscellaneous
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'
" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'
" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'
" Vim motion on speed!
Plugin 'Lokaltog/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" General
set regexpengine=1
set gdefault " Global as default
set backspace=indent,eol,start " Make backspace acts as it should act
set mouse=a " Enable mouse support in console
set wildmenu " Enable tab completion
set wildignore=*.swp,*.class,*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " Ignore compiled files
set pastetoggle=<F2> " Toggle between paste mode
set nobackup " No backup files
set noswapfile " No swap files
set hidden " A buffer becomes hidden when it is abandoned
set encoding=utf-8

" Look and Feel
" set term=screen-256color " Display the right color with tmux
set t_Co=256 " Use 256 colours
set title " Change the terminal's title
syntax on " Enable syntax highlighting
set background=dark " It doesn't hurt eyes
colorscheme mango " Solarized Colorscheme
set showcmd " Show (partial) command in the last line of the screen
set ruler " Show current cursor position on status bar
set number " Show line number
" set cursorline " Show cursor line
" set cursorcolumn " Show cursor column
set scrolloff=5 " Set 5 lines to the cursor - when moving vertically using j/k
set laststatus=2 " Always show status line
set hlsearch " Highlight search results
" set linebreak " Wraps between words
set list " Enable list mode
set lcs=eol:¬

" Searching
set incsearch " Show search matches as typing
set smartcase " Be smart about cases
set ignorecase " Ignore case when searching

" Text formatting
set autoindent " Auto indent
set smartindent " Smart indent
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs
set shiftwidth=2 " Auto-indent 4 spaces when using cindent, >>, <<
set tabstop=2 " 1 tab == 4 spaces
set softtabstop=2 " 4 spaces when hitting tab or backspace
set shiftround " Round > and < to multiples of shiftwidth

" Folding
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " 10 nested folds max

" Mapping
let mapleader="," " Change the mapleader from \ to ,
" Saving using Ctrl + S
inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> :w<CR>
vnoremap <C-s> <esc>:w<CR>
" Experimental tabs
inoremap <s-tab> <C-d>
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
" Copy until the end of the line
nnoremap Y y$
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Make arrow keys useful
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
" Open and close folds
nnoremap <space> za
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Highlight last inserted text
nnoremap gV `[v`]
" jj is escape
inoremap jj <esc>
" The F8 key will toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>
" The F8 key will toggle the Tagbar window
nmap <Leader>ne :NERDTreeToggle<CR>

" Abbreviations
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe

" Autocommands
augroup General
    autocmd!
    autocmd BufWritePost * FixWhitespace
augroup END

augroup VimScript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Node autocommand
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
" <C-w>f to open the file under the cursor in a new vertical split
autocmd User Node
            \ if &filetype == "javascript" |
            \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
            \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
            \ endif

" Tabular
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Concealing Characters
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

" JsBeautify
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

nnoremap <silent> <leader>e :call JSFormat()<cr>
function! JSFormat()
    " Preparation: save last search, and cursor position.
    let l:win_view = winsaveview()
    let l:last_search = getreg('/')
    let fileWorkingDirectory = expand('%:p:h')
    execute ':lcd' . fileWorkingDirectory
    execute ':silent' . '%!esformatter'
    if v:shell_error
        undo
        execute ":silent normal! gg=G<cr>"
    endif
    call winrestview(l:win_view)
endfunction
