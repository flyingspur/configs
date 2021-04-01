call plug#begin('~/.nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'ajmwagar/vim-deus'
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'junegunn/gv.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'psliwka/vim-smoothie'
Plug 'Valloric/ListToggle'
Plug 'Yggdroot/indentLine'
Plug 'fatih/vim-go'
call plug#end()
