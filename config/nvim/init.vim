call plug#begin("~/.local/share/vim/plugged") 
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim' 
	Plug 'nvim-lua/popup.nvim' 
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'wakatime/vim-wakatime'
	Plug 'vimwiki/vimwiki'
	Plug 'itchyny/lightline.vim'
	Plug 'mattn/emmet-vim'
	Plug 'hrsh7th/nvim-compe'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'nekonako/xresources-nvim'
call plug#end()

nnoremap k gk
vnoremap j gj
vnoremap k gk
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
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap {<CR> {<CR>}<ESC>O
