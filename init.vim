" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'junegunn/vim-easy-align'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'scrooloose/nerdtree'
Plug 'wlangstroth/vim-racket'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

call plug#end()


"Indent settings. 
filetype plugin indent on
set smartindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" remap keybindings"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-c> <ESC>
map <TAB> <C-W>
au VimEnter * noremap K i<CR><Esc>

" Basic settings"
set scrolloff=999
set relativenumber
set number

"colorscheme
syntax enable
colorscheme Tomorrow-Night

" NERDTree"
map <silent> <C-n> :NERDTreeFocus<CR>
