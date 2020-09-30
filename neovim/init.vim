set autoread
set autowrite
set autoindent
set si "smart indent
set wrap
set encoding=utf8
syntax on
set number
" set relativenumber (Để hiện thị số theo kiểu liên hệ)
set linebreak
set colorcolumn=0
set complete+=s
" set keymap=vietnamese-telex
filetype indent plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'nikitavoloboev/vim-monokai-night'
" Plug 'SidOfc/mkdx'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
" Use release branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

map <C-n> :NERDTreeToggle<CR>
colorscheme monokai-night

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

au BufRead,BufNewFile *.txt set filetype=markdown

