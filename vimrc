" Improve searches
set ignorecase
set smartcase
set hlsearch
set incsearch

" Don't thrash my rpi's SSD
set nobackup
set nowb
set noswapfile

" Status bar
set statusline=%f       " File name
set statusline+=\ 
set statusline+=%m      " Modified flag
set statusline+=%y      " type of file in buffer
set statusline+=%=      " Separation between left and right sides
set statusline+=%l:%c%V " Cursor position
set statusline+=\ 
set statusline+=%p%%     " Percentage through file from current line
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
