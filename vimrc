"turn off vi compatibility
set nocompatible

set ruler
set showcmd
"set number
set relativenumber
set smarttab
set smartindent
set smartcase
set autoindent
set hlsearch
set incsearch

"Set some spacing values
" by default, the indent is 2 spaces. 
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

"load indent file for the current filetype
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
