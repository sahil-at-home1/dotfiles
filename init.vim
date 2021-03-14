"********************************"
"		init.vim / .vimrc		 "
"********************************"

" Key Bindings "
""""""""""""""""""""""""""""""""""
set mouse=a "enable the mouse 
let mapleader="\\"
nnoremap ; : 
"switch windows faster
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"exit vim terminal insert mode with escape
tnoremap <Esc> <C-\><C-n>

" Plug-ins
""""""""""""""""""""""""""""""""""
call plug#begin("~/.vim/plugged/")
	Plug 'dag/vim-fish'
	Plug 'lervag/vimtex'
	Plug 'mhinz/neovim-remote'
	Plug 'scrooloose/syntastic'
	Plug 'itchyny/lightline.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdcommenter'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" Appearance "
""""""""""""""""""""""""""""""""""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "fixes colors
let g:lightline = { 'colorscheme': 'onehalfdark' }
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
set background=light
syntax on 
"colorscheme onehalfdark
colorscheme onehalflight

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

" Plug-in: NerdCommenter "
""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1			 "adds a space after the comment char
let g:NERDToggleCheckAllLines=1
let g:NERDCreateDefaultMappings=0
"comment similar to vscode
map <C-_> <Plug>NERDCommenterToggle 

" Plug-in: Git Gutter "
""""""""""""""""""""""""""""""""""
let g:gitgutter_async=0				"no async updates on git dif
let g:gitgutter_highlight_linenrs=1 "line numbers colored too
autocmd BufWritePost * GitGutter    "update git diff on save
"line numbers match the color of git diff
hi link GitGutterAddLineNr			DiffAdd
hi link GitGutterChangeLineNr		DiffChange 
hi link GitGutterDeleteLineNr		DiffDelete 
hi link GitGutterChangeDeleteLineNr	DiffDelete

" Plug-in: Vim-Tex"
""""""""""""""""""""""""""""""""""
let g:vimtex_compiler_progname = 'nvr'
