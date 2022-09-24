
set nocompatible " disable compatibility to old-time vim
set showmatch " show matching
set ignorecase " case insensitive
" set mouse=v	" middle click paste with
set hlsearch " highlight search
set incsearch " incremental search
set tabstop=4 " columns occupied by a tab
set softtabstop=4 " see multiple spaces as tabstops so <BS> does the right thing
set expandtab " converts tab to whitespace
set shiftwidth=4 " width for autoindents
set number " add line numbers
set wildmode=longest,list " get bash-like tab completions
set cc=120 " set a 120 column border for good coding practice
filetype plugin indent on " allow auto-indenting depending on file type
syntax on " syntax highlighting
set mouse=a " enable mouse click
set clipboard=unnamedplus " using system clipboard
filetype plugin on " idk
set cursorline " highlight current cursor line
set ttyfast " speed up scrolling in vim
" set spell " enable spell check (may need to download language package)
set noswapfile " disable creating swap file
set backupdir=~/.cache/vim " directory to store backupfiles
set smartindent " increases/reduces indent where appropriate from last line
set relativenumber

let NERDTreeQuitOnOpen=1
