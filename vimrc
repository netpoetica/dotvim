runtime bundle/vim-pathogen/autoload/pathogen.vim

" pathogen for plugins
call pathogen#infect()

syntax enable
syntax on

" omnicomplete for tern
" set omnifunc=syntaxcomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" remap omnicomplete to more useful keystroke
inoremap <C-space> <C-x><C-o>

" Example manual complete
" au FileType php setl ofu=phpcomplete#CompletePHP

" tern
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"

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

" toggle NERDTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" gundo for undo history
nnoremap <F5> :GundoToggle<CR>

let g:syntastic_javascript_checkers = ['eslint'] " gjslint 'eslint', 'jscs']
" allow multiple syntastic checkers for same filetype
let g:syntastic_aggregate_errors=1

" cold folding
set foldmethod=syntax     "fold based on indent
" set foldmethod=syntax   "fold based on syntax file 
" set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable          "dont fold by default
" set foldlevel=1         "this is just what i use

" Show the cursor position
set ruler

" Enhance command-line completion
set wildmenu

" enable 256 colors
set t_Co=256

" (cp) use Vim defaults (much better)
set nocompatible

" (sc) display an incomplete command in the lower right
set showcmd

" if you try to copy text out of the xterm that vim is
" running in, you'll get the text as well as the numbers.
set mouse=a

" Always show status line
set laststatus=2
set autoread
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

" Don't expand tabs to spaces
set noexpandtab

" Tab Settings
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent

" sets <LF> (unix) first, then tries <CR><LF> (dos) next
" set fileformats=unix,dos

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
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

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

" set cursor configuration
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkwait10
set guicursor+=i:blinkwait90

" status message
set laststatus=2                         " Always show status line
set statusline =                         " clear out status line
set statusline+=%#StatusFileName#        " 'todo' colorscheme
set statusline+=[%Y]                     " file type
set statusline+=%r\                      " read only mode
set statusline+=%-10F                    " full file name
set statusline+=%*                       " default colorscheme
set statusline+=%=                       " right justify everything after this line
set statusline+=[%3c,%-3l\               " cursor column position
set statusline+=of\ %L\ lines\           " cursor line, total lines
set statusline+=(%p%%)]\ \ \             " percentage
set statusline+=[%{g:colors_name}\ ->\   " colorscheme
set statusline+=(%{&term})\              " terminal color setting name
set statusline+=%{&t_Co}\ Color\ Scheme] " color count

" --------------------------------------------------------------------------------
" Toggle status line color
" --------------------------------------------------------------------------------
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    highlight statusline guibg=green ctermbg=green
  elseif a:mode == 'r'
    highlight statusline guibg=white ctermbg=white
  else
    highlight statusline guibg=red ctermbg=red
  endif
endfunction
 
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=gray ctermbg=gray
 
" default the statusline to green when entering Vim
highlight statusline guibg=gray ctermbg=gray
 
" --------------------------------------------------------------------------------
" Toggle status line color
" --------------------------------------------------------------------------------
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    highlight statusline guibg=green ctermbg=green
  elseif a:mode == 'r'
    highlight statusline guibg=white ctermbg=white
  else
    highlight statusline guibg=red ctermbg=red
  endif
endfunction
 
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=gray ctermbg=gray
 
" default the statusline to green when entering Vim
highlight statusline guibg=gray ctermbg=gray

" git gutter settings
" Set this higher manually when you get errors when writing to large files w/ many changes.
let g:gitgutter_max_signs = 500  " default value.
