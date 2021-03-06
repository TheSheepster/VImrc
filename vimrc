"__     _____                    _
"\ \   / __ _|_ __ ___  _ __ ___| |
" \ \ / / | || '_ ` _ \| '__/ __| |
"  \ V /  | || | | | | | | | (__|_|
"   \_/  |___|_| |_| |_|_|  \___(_)

syntax on

set noet ci sts=0 sw=2 ts=2
set backspace=2	  "make backspace work like most other programs

set noerrorbells
set noswapfile
set number
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set ruler

set laststatus=2

set backspace=2	  "make backspace work like most other programs
set showtabline=2 "show tabline
set encoding=UTF-8

if has('gui_running')
  set guioptions-=T
  set guioptions-=e
  set guioptions-=r
  set guioptions-=L
  colorscheme elflord
  set lines=60 columns=108 linespace=0
  if has('gui_win32')
    set guifont=UbuntuMono_NF:h12:cANSI
  else
    set guifont=UbuntuMono\ NF\ 12
  endif
endif

"this for the plug plugin manager
call plug#begin("~/.vim/plugged")
	Plug 'morhetz/gruvbox'
	Plug 'mengelbrecht/lightline-bufferline'
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
	Plug 'preservim/nerdtree'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'neoclide/coc.nvim'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'enomsg/vim-haskellConcealPlus'
	Plug 'vimwiki/vimwiki'
call plug#end()

"Buffer Bar config Start
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
"End config

set bg=dark
colorscheme gruvbox
