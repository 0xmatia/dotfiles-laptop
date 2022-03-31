"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					General options					  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber					" relative line numbers
set cc=100									" set right side column
set signcolumn=yes							" fixed column for diagnostics
set updatetime=300							" 300ms of no cursor movements
set showmatch								" show matching
set ignorecase								" ignore casing
set hlsearch								" highlight search
set tabstop=4								" set tab size
set softtabstop=4							" tab stuff
set shiftwidth=4							" width for auto-indent
set autoindent								" autoindent
set wildmode=longest,list					" bash-like autocompletion
set completeopt=menuone,noinsert,noselect	" auto-completion options
set shortmess+=c
filetype plugin indent on					" auto-indent based on file type
set syntax									" syntax highlighting
set mouse=a									" enable mouse
set clipboard=unnamedplus					" use system clipboard
filetype plugin on
set ttyfast									" speed up scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Plugins								   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'dracula/vim'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'neovim/nvim-lspconfig'
" Autocompletion framework
Plug 'hrsh7th/nvim-cmp'
" cmp LSP completion
Plug 'hrsh7th/cmp-nvim-lsp'
" cmp Snippet completion
Plug 'hrsh7th/cmp-vsnip'
" cmp Path completion
Plug 'hrsh7th/cmp-path'
" cmp buffer completion
Plug 'hrsh7th/cmp-buffer'
" cmp cmdline auto-completion
Plug 'hrsh7th/cmp-cmdline'
Plug 'simrat39/rust-tools.nvim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" nord colorscheme
Plug 'arcticicestudio/nord-vim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						Keybindings						   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set map leader
let g:mapleader = " "

" Toggle bar
nmap <F8> :TagbarToggle<CR>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>

" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Colors, Themes & customization			   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme nord							" nord colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						LUA STUFF						   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require('config')
