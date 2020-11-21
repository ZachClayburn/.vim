call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-git'
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'dracula/vim'
Plug 'cespare/vim-toml'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
call plug#end()

set mouse=a

map <Space> <leader>
" Source config files
for f in split(glob('~/.vim/config/*.vim'), '\n')
    exec 'source' f
endfor

