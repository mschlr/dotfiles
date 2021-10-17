set path=$PWD/**
syntax on
filetype plugin indent on

set ttymouse=xterm2
set mouse=a
set colorcolumn=81
highlight ColorColumn ctermbg=8
set number

set lazyredraw
set scrolloff=8

set nobackup
set nowb
set noswapfile

set smarttab
set shiftwidth=2
set tabstop=2

set ai
set si
set wrap

set showmatch
set hlsearch

set fillchars+=vert:│

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=30
let g:netrw_browse_split=2

colorscheme industry

" additional highlighting
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake
" spellcheck-related
au BufNewFile,BufRead *.md setlocal spell spelllang=en
set complete+=kspell

