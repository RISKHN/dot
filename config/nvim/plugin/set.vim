set number relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline 
set noruler
set noshowcmd
set noshowmode
set cmdheight=1
set laststatus=2
set encoding=utf-8
set colorcolumn=80
"set nowrap
set scrolloff=20
set completeopt=menuone,noinsert,noselect
set noswapfile
set nobackup
set undodir=~/.local/share/vim/undodir
set undofile
set smartcase
set termguicolors
set signcolumn=yes
set incsearch

filetype plugin on

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 nosm
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2 nosi
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 nosi
