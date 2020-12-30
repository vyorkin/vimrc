"""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

" Coc will install the missing extensions after coc.nvim service started
let g:coc_global_extensions = [
  \ 'coc-marketplace',
  \ 'coc-git',
  \ 'coc-gitignore',
  \ 'coc-sql',
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-svg',
  \ 'coc-flow',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-vimtex',
  \ 'coc-protobuf',
  \ 'coc-rust-analyzer',
  \ 'coc-perl',
  \ 'coc-lua',
  \ 'coc-julia',
  \ 'coc-go',
  \ 'coc-elixir',
  \ 'coc-pyright',
  \ 'coc-docker',
  \ 'coc-cmake',
  \ 'coc-emoji',
  \ 'coc-markdownlint',
  \ 'coc-sh',
  \ 'coc-vimlsp',
  \ 'coc-toml',
  \ 'coc-yaml',
  \ 'coc-xml',
  \ 'coc-highlight'
  \ ]

" Setup prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent> <CR> <C-r>=<SID>coc_confirm()<CR>
function! s:coc_confirm() abort
  if pumvisible()
    return coc#_select_confirm()
  else
    return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  endif
endfunction

" Use `[g` and `]g` to navigate diagnostics.
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer
nmap <leader>ac <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line
nmap <leader>af <Plug>(coc-fix-current)

" Map function and class text objects.
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-i> <Plug>(coc-range-select)
xmap <silent> <C-i> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList

" Do default action for next item
nnoremap <silent><nowait> <leader>j :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <leader>k :<C-u>CocPrev<CR>
" Show top-level list of commands
nnoremap <silent> <leader>L :<C-u>CocFzfList<CR>
" Show all diagnostics
nnoremap <silent> <leader>a :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <leader>b :<C-u>CocFzfList diagnostics --current-buf<CR>
" Show commands
nnoremap <silent> <leader>c :<C-u>CocFzfList commands<CR>
" Show location list
nnoremap <silent> <leader>l :<C-u>CocFzfList location<CR>
" Find symbol of current document
nnoremap <silent> <leader>o :<C-u>CocFzfList outline<CR>
" Search workspace symbols
nnoremap <silent> <leader>e :<C-u>CocFzfList symbols<CR>
" Resume latest coc list
nnoremap <silent> <leader>p :<C-u>CocFzfListResume<CR>

" Show coc explorer
nnoremap <leader><tab> :CocCommand explorer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""

augroup coc
  au!
  " Highlight the symbol and its references when holding the cursor
  au CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetype(s)
  au FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  au User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup END
