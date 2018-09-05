" Improve searches
set ignorecase
set smartcase
set hlsearch
set incsearch

" Don't thrash my rpi's SSD
set nobackup
set nowb
set noswapfile

" Status bar - this is next to be updated...
set statusline=%<%f%m%r%y%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

" Colour, paren matching, tabs as spaces, etc
set lisp
set showmatch
set expandtab
set smarttab
set ai          " Auto indent
set si          " Smart indent
set wrap        " Wrap lines
syntax on
set background=dark
colorscheme torte
