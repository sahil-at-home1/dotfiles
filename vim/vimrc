"********************************"
"		.vimrc		 "
"********************************"

" Key Bindings "
""""""""""""""""""""""""""""""""""
set mouse=a "enable the mouse 
let mapleader="\\"
"faster saving
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
"switch windows faster
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
"push windows around faster
nnoremap <Leader>h <C-w>H
nnoremap <Leader>j <C-w>J
nnoremap <Leader>k <C-w>K
nnoremap <Leader>l <C-w>L
"arrow keys with vim keys
map <C-h> <Left>
map <C-j> <Down>
map <C-k> <Up>
map <C-l> <Right>
"exit vim terminal insert mode with escape
tmap <Esc> <C-\><C-n>
tnoremap <Leader>q :q!<CR>

" Auto Completion "
""""""""""""""""""""""""""""""""""
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
	  return "\<Tab>"
   else
	  return "\<C-N>"
   endif
endfunction
function! CleverShiftTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
	  return "\<S-Tab>"
   else
	  return "\<C-P>"
   endif
endfunction
"CleverTab - Tab to open forward native autocomplete (from h: ins-completion)
"CleverShiftTab - Shift+Tab to go back in native autocomplete menu 
inoremap <Tab> <C-R>=CleverTab()<CR>
inoremap <S-Tab> <C-R>=CleverShiftTab()<CR>
"allows Enter to select Pop-Up Menu (pum) autocomplete suggestions
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"set completion to also show on just one match, 
"and to not insert unless selected
set completeopt=menuone,noinsert 
set omnifunc=syntaxcomplete#Complete "omni-completion (syntax-based) for supported languages
filetype plugin on "detect file type and run native vim file-specific scripts 

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
