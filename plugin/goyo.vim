"""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""

nn <Leader><CR> :Goyo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width = 100

"""""""""""""""""""""""""""""""""""""""""""""""""
" Callbacks
"""""""""""""""""""""""""""""""""""""""""""""""""

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set wrap
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  if has('gui_running')
    set showtabline=0
  endif
  set nowrap
  set showmode
  set showcmd
  set scrolloff=1
  Limelight!
endfunction

augroup goyo
  au!
  au! User GoyoEnter nested call <SID>goyo_enter()
  au! User GoyoLeave nested call <SID>goyo_leave()
augroup END
