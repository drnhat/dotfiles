set autoread
set autowrite
set autoindent
set si "smart indent
set wrap
set encoding=utf8
syntax on
set number
set relativenumber
set linebreak
set colorcolumn=0
set complete+=s


call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'nikitavoloboev/vim-monokai-night'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
colorscheme monokai-night
