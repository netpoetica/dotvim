runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
filetype plugin indent on

colorscheme badwolf 

set hidden

" Show the cursor position
set ruler

set smarttab

" Enhance command-line completion
set wildmenu

" Always show status line
set laststatus=2
set autoread
set guifont=Menlo\ for\ Powerline
set spell

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" searching
set incsearch	" highlight dynamically as pattern is typed
set hlsearch	" highlight searches	
set ignorecase	" ignore case of searches
set smartcase

" don't jump over text-wrapped lines
map j gj
map k gk
map <down> g<down>
map <up> g<up>

" toggle search highlight
map <space> :set hlsearch! hlsearch?<CR>

" keep visual mode selection when indenting
vmap > >gv
vmap < <gv

" forward and back in buffers
nmap <tab> :bnext<CR>
nmap <S-tab> :bprev<CR>

" always use ZoomWin
nmap <unique> <c-w><c-o> <Plug>ZoomWin

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let g:ctrlp_regexp = 1
let g:ctrlp_extensions = ['tag']
let g:ctrlp_user_command = {
			\ 'types': {
			\ 1: ['.git', 'cd %s && git ls-files'],
			\ 2: ['.hg', 'hg --cwd %s locate -I .'],
			\ },
			\ }

let erlang_show_errors = 0

" '''''''''''''''''''''''''''''' 
" Allow backspace in insert mode
set backspace=indent,eol,start

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t add empty newlines at the end of files
set binary
set noeol

" Expand tabs to spaces
set shiftwidth=1
set expandtab

" Enable line numbers
set number

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Disable error bells
set noerrorbells
