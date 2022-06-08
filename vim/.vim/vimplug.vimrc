"Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'

"Neovim plugins
if has('nvim')
    Plug 'neovim/nvim-lspconfig'
endif

"Initialize plugin system
call plug#end()

if has('nvim')
    lua require('init')
endif
