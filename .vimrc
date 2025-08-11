" Don't be vim compatible
set nocompatible

"Add path for searching
set path+=**

" Set relative line numbering
set relativenumber

" Set the program used for grep
set grepprg=grep\ --vimgrep

" Turn on syntax highlighting
syntax enable

" For plugins to load correctly
filetype plugin indent on

" No text wrapping
set nowrap

" Show line numbers
set number

" Show file stats
set ruler

" Disable bell
set noerrorbells

" Encoding
set encoding=utf-8

" Enable confirmation
set confirm

" Whitespace
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set linespace=0

" Allow hidden buffers
set hidden

" Enable wildmenu
set wildmenu

" Disable scrolling to go to start of line
set nostartofline

" Rendering
set ttyfast

" Status bar
set laststatus=2
set statusline=
set statusline+=%1*\[%n]                " buffer number
set statusline+=%2*\ %<%F\              " file path
set statusline+=%3*\ %=                 " empty middle space
set statusline+=%4*\ %l/%L\ (%03p%%)\   " line number / total
set statusline+=%5*\ %03c\              " column number
set statusline+=%6*\ \ %m%r%w\ \        " column number

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Colorscheme
colorscheme gruvbox
set t_Co=256
set background=dark

" Enable mouse
set mouse=a

" Disable swap/backup
set noswapfile
set nobackup
set nowritebackup

" Auto formatting
set autoindent
set smarttab
set smartindent

" Enable cursorline
set cursorline

" Set updatetime for plugins
set updatetime=750

" Settings for NetRW
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_winsize=25

" ***************
"  Key Bindings *
" ***************

" clear search
nnoremap <nowait><silent><C-x> :noh<cr>

" open netrw
nnoremap <silent><C-e> :Lexplore<cr>

" search under cursor
nnoremap <C-g> :vimgrep /\<<C-r><C-w>\>/j **/*.c <bar> :cw<cr>

" split window horizontal
nnoremap <silent><C-z> <C-w>v<cr>

" split window vertical
nnoremap <silent><C-a> <C-w>s<cr>

" find file
nnoremap <C-f> :find 

" find tag
nnoremap <C-o> :tag *  

" split window navigation
nnoremap <silent><C-h> <C-w>h
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-l> <C-w>l

" quit
nnoremap <silent><C-q> :q<cr>

" save
nnoremap <silent><C-s> :w<cr>

" close buffer
nnoremap <silent><C-b> :bd<cr>

" navigate back in the tag stack
nnoremap <nowait><silent>gd <C-]>
nnoremap <nowait><silent>gu <C-T>

" open tag in new window
nnoremap <nowait><silent>gp <C-w><C-]>

" go to other bracket
nnoremap <nowait><silent>gb %

" invert window split direction
nnoremap <nowait><silent><C--> :wincmd H<cr>
nnoremap <nowait><silent><C-=> :wincmd J<cr>

" nagivate tag search results
nnoremap <nowait><silent><C-n> :cnext<cr>
nnoremap <nowait><silent><C-p> :cprev<cr>
nnoremap <nowait><silent><C-c> :cclose<cr>

" navigate buffers
nnoremap <nowait><silent><C-,> :bprev<cr>
nnoremap <nowait><silent><C-.> :bnext<cr>

" Building
nnoremap <nowait><silent><F1>  :botright terminal make -j 8<cr>
inoremap <nowait><silent><F1>  :botright terminal make -j 8<cr>
nnoremap <nowait><silent><F12> :botright terminal make -j 8 clean<cr>
inoremap <nowait><silent><F12> :botright terminal make -j 8 clean<cr>
