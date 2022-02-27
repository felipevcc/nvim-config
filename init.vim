" ====== Nvim Config ======

runtime general.vim
runtime plugins.vim
runtime maps.vim

" =========================

" THEMES

if (has("termguicolors"))
	set termguicolors
endif

" Uncomment the one you want to use:
" --------------------

" Theme 1 - GRUVBOX
"let g:gruvbox_contrast_dark = "hard
"colorscheme gruvbox 

" --------------------

" Theme 2 - VIM-ONE	
"set background=dark
"let g:one_allow_italics = 1
"colorscheme one

" --------------------

" Theme 3 - DRACULA
colorscheme dracula

" =========================

