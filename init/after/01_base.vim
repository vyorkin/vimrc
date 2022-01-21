"""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""

if &background=="dark"
  colorscheme gruvbox
else
  colorscheme Tomorrow
endif

hi Conceal guibg=NONE ctermbg=NONE
hi VertSplit gui=NONE guifg=NONE guibg=NONE cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
hi SignColumn guifg=NONE guibg=NONE cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
hi ColorColumn ctermbg=NONE guibg=NONE
hi FoldColumn ctermbg=NONE guibg=NODE

set fillchars=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""
" Views
"""""""""""""""""""""""""""""""""""""""""""""""""

" Save/restore everything except local buffer/window options
set viewoptions=cursor,folds,slash,unix
