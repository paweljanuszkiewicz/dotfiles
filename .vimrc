" *****************************************************************
" **************************** GENERAL **************************** 
" *****************************************************************
syntax enable

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible
set encoding=utf-8

" delete via backspace in insert mode
set backspace=indent,eol,start

" set true color for tmux and terminal
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


" *****************************************************************
" **************************** PLUGINS **************************** 
" *****************************************************************
call plug#begin('~/.vim/plugged')
  " Plugins go here
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-vinegar'
  Plug 'sainnhe/edge'
  Plug 'mhartington/oceanic-next'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = '1'

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1

colorscheme OceanicNext

let g:airline_theme = 'edge'

let g:netrw_altv = 1


" *****************************************************************
" **************************** KEYMAPS **************************** 
" *****************************************************************

nnoremap <SPACE> <Nop>

let mapleader = " "

nnoremap <silent> <Leader>p :GFiles<CR>
