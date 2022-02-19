syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls=files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

let mapleader=","
" split window vertically
nnoremap <leader>v :wincmd v<CR>
" move focus left, down, up, right
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" resize easier
nnoremap <leader>< :wincmd <<bar> :wincmd <<CR>
nnoremap <leader>> :wincmd ><bar> :wincmd ><CR>

" open undotree
nnoremap <leader>u :UndotreeShow<CR>
" open file system
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" YCM
" the best part.
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_min_num_of_chars_for_completion = 0
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

