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

"Setting the status line
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


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
