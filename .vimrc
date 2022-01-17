
filetype plugin indent on
syntax on

set number relativenumber

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

set encoding=utf-8


call plug#begin('~/.vim/plugged')

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'tag': '0.1.155',
"     \ 'do': 'bash install.sh',
"     \ }
" 
" " (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
" 
" Plug 'ionide/Ionide-vim', {
"   \ 'do':  'make fsautocomplete',
"   \}

" Plug 'fsharp/vim-fsharp', {
"    \ 'for': 'fsharp',
"    \ 'do':  'make fsautocomplete',
"    \}

Plug 'arcticicestudio/nord-vim'

call plug#end()

set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone,popup
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

colorscheme nord


