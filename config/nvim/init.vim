call plug#begin("~/.local/share/vim/plugged") 
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim' 
    Plug 'nvim-lua/popup.nvim' 
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-commentary'
    Plug 'itchyny/lightline.vim'
    Plug 'fatih/vim-go'
    Plug 'nekonako/xresources-nvim'
    Plug 'wakatime/vim-wakatime'
call plug#end()

inoremap jk <esc>
inoremap kj <esc>
snoremap jk <esc>
snoremap kj <esc>
vnoremap JK <esc>
vnoremap KJ <esc>
nnoremap <leader>t "+y
vnoremap <leader>t "+y
nnoremap <leader><leader> <C-^> 
vnoremap <silent>J :m '>+1<CR>gv=gv
vnoremap <silent>K :m '<-2<CR>gv=gv " }}} 
inoremap <expr><Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap {<CR>{<CR>}<ESC>O
