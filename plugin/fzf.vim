let $FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

nn <silent> <C-q> :Files<CR>
nn <silent> <C-e> :Commits<CR>
nn <silent> <C-b> :Buffers<CR>
nn <silent> <C-s> :BLines<CR>
nn <silent> <leader>f :Rg<CR>
nn <leader>T :Colors<CR>

" [Buffers] jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" Default layout
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['up:60%', 'ctrl-/']

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
