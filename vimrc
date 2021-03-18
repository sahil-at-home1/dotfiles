"********************************"
"		.vimrc		 "
"********************************"

" Key Bindings "
""""""""""""""""""""""""""""""""""
set mouse=a "enable the mouse 
let mapleader="\\"
nnoremap ; : 
"faster saving
nnoremap <Leader>w :w<CR>
"switch windows faster
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
"arrow keys with vim keys
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"exit vim terminal insert mode with escape
tmap <Esc> <C-\><C-n>

" Appearance "
""""""""""""""""""""""""""""""""""
set wrap		   "turns word wrap on
set title
set ruler
set number		   "just normal line numbers
set t_Co=256	   "fixes colors even more
set showmatch	   "show matching brackets
set cursorline	   "shows darker color for line cursor is one
set cmdheight=1	   "command line
set laststatus=2   "status line is 2 lines high
set termguicolors  "fixes colors even more more 
set noequalalways  "windows dont have to be equal size
set signcolumn=yes "left hand column for special signs
"set background=dark
"set background=light
syntax on 

" Swap Files "
""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set nowritebackup

" Spacing
""""""""""""""""""""""""""""""""""
set ai			  "auto indent"
set si			  "smart indent"
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=eol,start,indent

" Searching "
""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set smartcase
set ignorecase

" Extra "
""""""""""""""""""""""""""""""""""
set belloff=all	   "try to get rid of annoying bells
set encoding=utf-8
filetype plugin on
