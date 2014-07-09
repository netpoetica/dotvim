runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
filetype plugin indent on

colorscheme badwolf 

set hidden

let mapleader = ','

" ```````
" buffers
" ```````
" creating buffers
map <Leader>s <C-w>s
map <Leader>v <C-w>v

" switching between buffers with movement keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" forward and back in buffers
nmap <tab> :bnext<CR>
nmap <S-tab> :bprev<CR>

" cold folding
set foldmethod=indent   "fold based on indent
" set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Show the cursor position
set ruler

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
" set expandtab

" Tab Settings
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Enable line numbers
set number
nnoremap <F2> :set nonumber!<CR>

" Highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set lcs=trail:·,eol:¬,nbsp:_
set list

" Disable error bells
set noerrorbells

" tagbar
nmap <F8> :TagbarToggle<CR>

" Go Tags for use with tagbar in vim-go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
