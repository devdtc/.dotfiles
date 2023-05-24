
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
"     \ 'do': 'bash install.sh',
"     \ }

Plug 'ionide/Ionide-vim', {
      \ 'do':  'make fsautocomplete',
      \}

" " (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
" 

" Plug 'fsharp/vim-fsharp', {
"    \ 'for': 'fsharp',
"    \ 'do':  'make fsautocomplete',
"    \}

Plug 'chrisbra/vim-commentary'

Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:fsharp#backend = "disable"

let b:commentary_startofline = 0
autocmd FileType fsharp set commentstring=//\ %s

set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone,popup
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au FocusGained,BufEnter * :checktime

colorscheme nord


