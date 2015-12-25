set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'juvenn/mustache.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'goatslacker/mango.vim'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

set regexpengine=1
set gdefault
set backspace=indent,eol,start
set mouse=a
set wildmenu
set wildignore=*.swp,*.class,*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set pastetoggle=<F2>
set nobackup
set noswapfile
set hidden
set encoding=utf-8

set t_Co=256
set title
syntax on
set background=dark
colorscheme mango
set showcmd
set ruler
set number
set scrolloff=5
set laststatus=2
set hlsearch
set list
set lcs=eol:¬

set incsearch
set smartcase
set ignorecase

set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround

set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10

let mapleader=','

inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> :w<CR>
vnoremap <C-s> <esc>:w<CR>
inoremap <s-tab> <C-d>
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
nnoremap Y y$
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
nnoremap <space> za
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
inoremap jj <esc>
nmap <F8> :TagbarToggle<CR>
nmap <Leader>ne :NERDTreeToggle<CR>

cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe

augroup General
    autocmd!
    autocmd BufWritePost * FixWhitespace
augroup END

augroup VimScript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
