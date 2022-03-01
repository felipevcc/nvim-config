" CONFIGS

" prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <C-D> :Prettier<CR>

" airline
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let NERDTreeQuitOnOpen=1
