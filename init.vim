call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-smooth-scroll'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
call plug#end()

" Don't be vim compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Show line numbers
set number

" Show file stats
set ruler

" Disable bell
set noerrorbells
set visualbell

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

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> 

" Colorscheme
colorscheme slate
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

" Key Mappings
nmap <F8> :TagbarToggle <CR>
nmap <F1> :NERDTree <CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Enable Powerline Fonts
let g:airline_powerline_fonts = 1
