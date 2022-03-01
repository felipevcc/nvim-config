" plugins

call plug#begin('~/.vim/bundle')

" tree
Plug 'scrooloose/nerdtree'
Plug 'kaicataldo/material.vim'

" themes 
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim',{'name':'dracula'}

" icons
Plug 'ryanoasis/vim-devicons'

" Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'

" syntax
Plug 'sheerun/vim-polyglot'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'

" status bar
Plug 'vim-airline/vim-airline'
"Plug 'maximbaz/lightline-ale'


" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'

" langs
" Plug 'vim-python/python-syntax'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

call plug#end()
