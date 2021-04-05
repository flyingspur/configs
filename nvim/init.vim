syntax on
set encoding=utf-8 fileencoding=utf-8 langmenu=en_US.UTF-8
set cmdheight=2 scrolloff=8 signcolumn=yes
set nohlsearch
set splitbelow splitright
set nocompatible
set modelines=0
set autoread
set visualbell
set backspace=indent,eol,start
set nobackup noswapfile
set relativenumber number
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set showmode showcmd
set ttyfast lazyredraw
set showmatch
set incsearch ignorecase smartcase
set nowrap
set smartindent
set autochdir
set wildmenu wildmode=list:longest,full
set laststatus=2 statusline=%F
set cursorline
set termguicolors
set cc=80
set fillchars=fold:\ ,vert:\ ,eob:\ ,msgsep:‾
autocmd ColorScheme * hi ColorColumn ctermbg=0 guibg='#2a303b'
syntax on

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/signify.vim
source ~/.config/nvim/ale.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/startify.vim
source ~/.config/nvim/BufOnly.vim
source ~/.config/nvim/ack.vim

let mapleader = " "
let g:coc_disable_transparent_cursor = 1
let g:indentLine_color_gui='#424b59'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:netrw_banner = 0
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.9 } }
let g:airline_theme='deus'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme deus

inoremap jj <esc>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>rg :Rg
nnoremap <leader>e :CocCommand explorer<CR>
vnoremap <C-y> "+y<Esc>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

