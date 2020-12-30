"""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

" Disables display of the 'Bookmarks' label and 'Press ? for help' text
let NERDTreeMinimalUI = 1
" Sets the window size when the NERDTree is opened
let NERDTreeWinSize = 24
" Sets the maximum window size when the NERDTree is zoomed
let NERDTreeWinSizeMax = 36
" Use a compact menu that fits on a single line for adding, copying, deleting, etc
let NERDTreeMinimalMenu = 1
" Show hidden files by default
let NERDTreeShowHidden = 1

"""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""

nn <leader>q :NERDTreeToggle<CR>
nn <leader>r :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""

augroup nerdtree
  " If previous buffer was NERDTree, go back to it
  " au BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif
  " Exit Vim if NERDTree is the only window left.
  au BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif
augroup END
