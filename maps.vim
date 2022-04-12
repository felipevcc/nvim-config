" Keymaps

let mapleader = " "

map <C-n> :NERDTreeToggle<CR>

" Undo
nnoremap <Leader>z :ea<CR>

" Redo
nnoremap <Leader>y :lat<CR>

" abrir terminal
map <F2> :belowright terminal<CR>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>kp :let @"=expand("%")<CR>

" saltar al final de la linea
inoremap <C-e> <C-o>$

" buffers
" map <Leader>ob :Buffers<cr>

" right terminal
set splitright
function! OpenTerminal()
    execute "normal \<C-1>"
    execute "normal \<C-1>"
    execute "normal \<C-1>"
    execute "normal \<C-1>"

    let bufNum = bufnr("%")
    let bufType = getbufvar(bufNum, "&buftype", "not found")

    if bufType == "terminal"
	" close existing terminal
	execute "q"
    else
	" open terminal
	execute "vsp term://zsh"

	" turn off numbers
	execute "set nonu"
	execute "set nornu"

	" toggle insert on enter/exit
	silent au BufLeave <buffer> stopinsert!
	silent au BufWinEnter,WinEnter <buffer> startinsert!

	" set maps inside terminal buffer
	execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
	execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
	execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

	startinsert!
    endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

" down terminal
set splitbelow
function! OpenTerminal2()
	execute "normal \<C-1>"
	execute "normal \<C-1>"
	execute "normal \<C-1>"
	execute "normal \<C-1>"
	
	let bufNum = bufnr("%")
    let bufType = getbufvar(bufNum, "&buftype", "not found")

    if bufType == "terminal"
	" close existing terminal
	execute "q"
    else
	" open terminal
	execute "sp term://zsh"
	execute "resize 20"

	" turn off numbers
	execute "set nonu"
	execute "set nornu"

	" toggle insert on enter/exit
	silent au BufLeave <buffer> stopinsert!
	silent au BufWinEnter,WinEnter <buffer> startinsert!

	" set maps inside terminal buffer
	execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
	execute "tnoremap <buffer> <C-b> <C-\\><C-n>:q<CR>"
	execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"


	startinsert!
    endif
endfunction
nnoremap <C-b> :call OpenTerminal2()<CR>
