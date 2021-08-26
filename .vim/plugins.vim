" Calling the plugins
" They must be installed first w/ :PlugInstall command in vim

call plug#begin('~/.vim/plugged')

" --- Start menu
Plug 'mhinz/vim-startify'

" --- Navigation tree
" Plug 'preservim/nerdtree'

" --- Commenting
Plug 'tpope/vim-commentary'

" --- Auto close things 
Plug 'tpope/vim-surround'

" --- Themes
" Plug 'arcticicestudio/nord-vim'
" Plug 'gruvbox-community/gruvbox'
" Plug 'sainnhe/gruvbox-material'
" Plug 'sainnhe/sonokai'
" Plug 'sainnhe/edge'
Plug 'rktjmp/lush.nvim'
Plug 'npxbr/gruvbox.nvim'
" Plug 'shaunsingh/nord.nvim'
" Plug 'folke/tokyonight.nvim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'rafamadriz/neon'  
" Plug 'joshdick/onedark.vim'  
" Plug 'sonph/onehalf', {'rtp': 'vim/'}

" --- Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Plug 'ctrlpvim/ctrlp.vim'

" --- Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" --- Git integration
Plug 'tpope/vim-fugitive'
" Git little icons to show modif/add/rm
" Plug 'mhinz/vim-signify'

" --- Latex
Plug 'lervag/vimtex'

" Delete buffers without touching current window
" Activate by :Bdelete
Plug 'famiu/bufdelete.nvim'

" --- Snippets
Plug 'sirver/ultisnips'

" --- Autocompletion
if has("nvim")
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Search LSP symbols
Plug 'liuchengxu/vista.vim'

" --- Syntax for a bunch of languages
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
endif
call plug#end()

" ----------------------------
" ----------------------------
" ----------------------------
" --- Plugins settings
" source ~/.vim/plugins/nerdtree.vim
source ~/.vim/plugins/startify.vim
source ~/.vim/plugins/vim-commentary.vim
source ~/.vim/plugins/telescope.vim
source ~/.vim/plugins/airline.vim
source ~/.vim/plugins/coc.vim
source ~/.vim/plugins/fugitive.vim
source ~/.vim/plugins/vista.vim
source ~/.vim/plugins/vimtex.vim
source ~/.vim/plugins/ultisnpis.vim

syntax on
colorscheme gruvbox
set termguicolors
