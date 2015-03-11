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

" File Manager
" The NERD Tree
Plugin 'scrooloose/nerdtree'

" Color Schemes
" Molokai Color Scheme for Vim
Plugin 'tomasr/molokai'
" Solarized Colorscheme for Vim
Plugin 'altercation/vim-colors-solarized'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'
" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'
" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby'
" rails.vim: Ruby on Rails power tools
Plugin 'tpope/vim-rails'
" SnipMate is a very useful plugin for managing code snippets.
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'
" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'
" This project adds CoffeeScript support to vim. It covers syntax, indenting, compiling, and more.
Plugin 'kchmck/vim-coffee-script'
" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'
" endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
Plugin 'tpope/vim-endwise'
" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'bronson/vim-trailing-whitespace'
" HTML5 omnicomplete and syntax
Plugin 'othree/html5.vim'
" Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'
" Vim's MatchParen for HTML tags
Plugin 'gregsexton/MatchTag'
" Vastly improved Javascript indentation and syntax support in Vim.
Plugin 'pangloss/vim-javascript'
" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

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
colorscheme molokai " Molokai Colorscheme
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
set shiftwidth=4 " Auto-indent 4 spaces when using cindent, >>, <<
set tabstop=4 " 1 tab == 4 spaces
set softtabstop=4 " 4 spaces when hitting tab or backspace
set shiftround " Round > and < to multiples of shiftwidth

" Folding
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " 10 nested folds max

" Mapping
let mapleader="," " Change the mapleader from \ to ,
" Experimental tabs
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
map <left> <ESC>:NERDTreeToggle<CR>
map <right> <nop>
map <up> <ESC>:bp<RETURN>
map <down> <ESC>:bn<RETURN>
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
augroup HTML
    autocmd!
    autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
augroup Ruby
    autocmd!
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup CSS
    autocmd!
    autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup JavaScript
    autocmd!
    autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType coffee setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END

