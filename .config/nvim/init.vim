"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					General options					  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber 	" relative line numbers
set cc=100					" set right side column
set showmatch				" show matching
set ignorecase				" ignore casing
set hlsearch				" highlight search
set tabstop=4				" set tab size
set softtabstop=4			" tab stuff
set shiftwidth=4			" width for auto-indent
set autoindent				" autoindent
set wildmode=longest,list	" bash-like autocompletion
filetype plugin indent on	" auto-indent based on file type
set syntax					" syntax highlighting
set mouse=a					" enable mouse
set clipboard=unnamedplus	" use system clipboard
filetype plugin on
set ttyfast					" speed up scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Plugins								   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'dracula/vim'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'neovim/nvim-lspconfig'
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

" nerdcommenter config
let g:NERDCreateDefaultMappings = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Colors, Themes & customization			   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark 

highlight clear SignColumn
highlight ColorColumn  ctermbg=234
highlight LineNr       ctermbg=234 ctermfg=14
highlight CursorLineNr ctermbg=23 ctermfg=7
highlight CursorLine   ctermbg=236
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=1   ctermfg=16
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
highlight SpellCap     ctermbg=4   ctermfg=15
highlight VertSplit    ctermbg=6   ctermfg=0
highlight MatchParen   ctermbg=241
highlight SpellLocal   ctermbg=55
highlight Search       ctermfg=15 ctermbg=52

" highlight clear MatchParen
highlight DiffAdd      ctermbg=4   ctermfg=15
highlight DiffDelete   ctermbg=5   ctermfg=14
highlight DiffChange   ctermbg=238

" Code folding
highlight Folded ctermfg=1 ctermbg=0
highlight FoldColumn ctermfg=1 ctermbg=0

" Debugger
highlight debugPC ctermbg=24

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						LUA STUFF						   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require('config')
