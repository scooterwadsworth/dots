" =====
"  vim
" =====
" @scooterwadsworth

set nocompatible

set exrc
set guicursor=
set number relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
" set ignorecase
" set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set sidescrolloff=4
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set cursorline
set cursorcolumn

" Give more space for displaying messages
set cmdheight=2

" Delay
set updatetime=50

" Don't pass messages to |ins-completion-menu|
set shortmess+=c

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
" Open NERDTree by default when vim starts up if no files specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Automatically close a tab if NerdTree is the last thing running
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call plug#begin(stdpath('config') . '/plugged')

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Toggle NERDTree
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFocus<CR>
