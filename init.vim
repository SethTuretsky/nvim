call plug#begin('~/.config/nvim/plugged')
  """ Functional
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-fugitive'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
call plug#end()

""" Coloring
color slate 

""" Carried over from MacVim
syntax on
filetype plugin indent on

set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set breakindent
set ruler
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
set nowrap                      " No wrapping
set backspace=indent,eol,start " Let backspace work over anything.
set wildignore+=.git,.hg,.svn
set wildmenu

set list                        " Show whitespace
set listchars=trail:·,tab:>-

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge

set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set ignorecase
set smartcase                   " Smart case-sensitivity when searching

set autoread                    " No prompt for file changes outside Vim

set nolist                      " Don't show tabs, I think

""" Nerd Commenter
filetype plugin on

""" Speed up git gutter
set updatetime=100

""" Mapping
let leader=","

" Gracefully handle holding shift too long after : for common commands
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev Tabe tabe
cabbrev Tabc tabc

" Copy current file path to system pasteboard
map <leader>cp :let @* = fnamemodify(expand("%"), ":.")<CR>:echo "Copied: ".fnamemodify(expand("%"), ":.")<CR>
map <leader>C :let @* = fnamemodify(expand("%"), ":.").":".line(".")<CR>:echo "Copied: ".fnamemodify(expand("%"), ":.").":".line(".")<CR>
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>

""" Open NERDTree 
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>

""" Disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

""" Comment/uncomment lines
nmap <leader>/ :NERDCommenterToggle
vmap <leader>/ :NERDCommenterToggle
