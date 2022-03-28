"********************************" 
"      init.vim / .vimrc		 "
"********************************"

" Key Bindings "
""""""""""""""""""""""""""""""""""
set mouse=a "enable the mouse 
let mapleader="\\"
"switch windows faster
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"remap caps version of nav keys to avoid messing things up"
nnoremap H <Nop>
nnoremap J <Nop>
nnoremap K <Nop>
nnoremap L <Nop>
"push windows around faster
nnoremap <Leader>h <C-w>H
nnoremap <Leader>j <C-w>J
nnoremap <Leader>k <C-w>K
nnoremap <Leader>l <C-w>L
"exit vim terminal insert mode with escape
tmap <Esc> <C-\><C-n>
tnoremap <Leader>q :q!<CR>

" Plug-ins
""""""""""""""""""""""""""""""""""
call plug#begin("~/.vim/plugged/")
	Plug 'dag/vim-fish'
	Plug 'preservim/tagbar'
	Plug 'dense-analysis/ale'
	Plug 'tpope/vim-fugitive'
	Plug 'rust-lang/rust.vim'
	Plug 'mhinz/neovim-remote'
	"Plug 'scrooloose/syntastic'
	Plug 'itchyny/lightline.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdcommenter'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Appearance "
""""""""""""""""""""""""""""""""""
"set wrap		   "turns word wrap on
set nowrap		   "turns word wrap off
set title
set ruler
set number		   "just normal line numbers
set t_Co=256	   "fixes colors even more
set showmatch	   "show matching brackets
set cursorline	   "shows darker color for line cursor
set cmdheight=1	   "command line
set laststatus=2   "status line is 2 lines high
set termguicolors  "fixes colors even more more 
set noequalalways  "windows dont have to be equal size
set signcolumn=yes  "left hand column for special signs
set background=dark
"set background=light
syntax on 
colorscheme onehalfdark
"colorscheme onehalflight
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "fixes colors
"let g:lightline = { 'colorscheme': 'wal' }
let g:lightline = { 'colorscheme': 'onehalfdark' }
"let g:lightline = { 'colorscheme': 'onehalflight' }

" Auto Completion "
""""""""""""""""""""""""""""""""""
"set completion menu to show on just one match, 
"and to not insert unless an entry is selected
set completeopt=menuone,noinsert 
"omni-completion (syntax-based) for supported languages
set omnifunc=ale#completion#OmniFunc
"detect file type and run native vim file-specific scripts 
filetype plugin on 

" Swap Files "
""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set nowritebackup

" Spacing
""""""""""""""""""""""""""""""""""
"set ai			  "auto indent
set noai			  "auto indent
"set si			  "smart indent
set nosi			  "smart indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set backspace=eol,start,indent

" Searching "
""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set smartcase
set ignorecase
set tags=tags;/ "ctags

" Extra "
""""""""""""""""""""""""""""""""""
set belloff=all	   "try to get rid of annoying bells
set encoding=utf-8
packadd termdebug  "add the native vim gdb plugin
set shell=/usr/bin/fish
autocmd BufNewFile,BufRead *.s6502 set filetype=asm_ca65

" Plug-in: NerdCommenter "
""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=0			 "adds a space after the comment char
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

" Plug-in: Syntastic "
""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_asm_checkers = ['gcc','asm_ca65']

" Plug-in: Vim-Go "
""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1

" Plug-in: rust-lang "
""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1

" Plug-in: ALE "
""""""""""""""""""""""""""""""""""
let b:ale_linters = {"rust": ["analyzer"]}
let b:ale_fixers = {"rust": ["rustfmt"]}
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
