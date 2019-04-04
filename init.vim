" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'junegunn/vim-easy-align'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'iCyMind/NeoSolarized'
Plug 'scrooloose/nerdtree'
Plug 'wlangstroth/vim-racket'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
"Plug 'vim-syntastic/syntastic' " Syntastic is slow. Neomake better?
Plug 'neomake/neomake'
Plug 'mustache/vim-mustache-handlebars'
"Plug 'leafgarland/typescript-vim'"

Plug 'lervag/vimtex'

"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }"
"Plug 'donRaphaco/neotex', { 'for': 'tex' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" ES2015 code snippets
"Plug 'epilande/vim-es2015-snippets'

" React code snippets
"Plug 'epilande/vim-react-snippets'

" Ultisnips
"Plug 'SirVer/ultisnips'
call plug#end()

let mapleader = ","

"Indent settings. 
filetype plugin indent on
set smartindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" HTML should have smaller indent
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" remap keybindings"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-c> <ESC>
"map <TAB> <C-W>
au VimEnter * noremap K i<CR><Esc>

" Basic settings"
"set scrolloff=999"
"set relativenumber"
set number

"colorscheme
syntax enable
"colorscheme Tomorrow-Night
"colorscheme base16-default-dark
"colorscheme NeoSolarized
"set background=dark
"let g:neosolarized_contrast = "high"
"let g:neosolarized_vertSplitBgTrans = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_monokai'

" NERDTree"
map <silent> <C-n> :NERDTreeFocus<CR>

let g:polyglot_disabled = ['latex']
let g:vimtex_compiler_progname = 'nvr'


" Pasting
set clipboard=unnamed


" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_args = ['-f', 'compact', '--fix']
au User NeomakeFinished checktime
"let b:neomake_javascript_eslint_exe = GetNpmBin('eslint')
call neomake#configure#automake('rw', 500)


" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
