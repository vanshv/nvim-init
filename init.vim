set tabstop=4 softtabstop=4
set noerrorbells
set incsearch
set scrolloff=8
set relativenumber
set shiftwidth=4
set expandtab
set smartindent
set nu

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
call plug#end()

colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

nmap <C-f> :NERDTreeToggle<CR>

:inoremap jj <Esc>

lua require('lspconfig').clangd.setup{}

