"""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

" Coc will install the missing extensions after coc.nvim service started
"
" Disabled extensions:
" * coc-json - Slow syntax highlighting for large files
"
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
  \ 'coc-svg',
  \ 'coc-flow',
  \ 'coc-flutter',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-stylelint',
  \ 'coc-explorer',
  \ 'coc-cairo',
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
  \ 'coc-sh',
  \ 'coc-vimlsp',
  \ 'coc-toml',
  \ 'coc-yaml',
  \ 'coc-xml',
  \ 'coc-highlight'
  \ ]
" \ 'coc-markdownlint',
" \ 'coc-solidity',

" Setup prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics.
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)<CR>

" Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)<CR>
nmap <leader>f <Plug>(coc-format-selected)<CR>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Remap keys for applying codeAction to the current buffer
nmap <leader>ac <Plug>(coc-codeaction)<CR>
" Apply AutoFix to problem on the current line
nmap <leader>af <Plug>(coc-fix-current)<CR>
" Run the Code Lens action on the current line.
nmap <leader>al  <Plug>(coc-codelens-action)<CR>

" Remap keys for apply refactor code actions.
nmap <silent> <leader>are <Plug>(coc-codeaction-refactor)<CR>
xmap <silent> <leader>ar  <Plug>(coc-codeaction-refactor-selected)<CR>
nmap <silent> <leader>ar  <Plug>(coc-codeaction-refactor-selected)<CR>

" You have to remap <cr> to make it confirms completion.
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

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

" Use CTRL-i for selections ranges.
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
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger snippet expand
imap <C-s> <Plug>(coc-snippets-expand)

" Select text for visual placeholder of snippet
vmap <C-s> <Plug>(coc-snippets-select)

" Jump to next placeholder, it's default of coc.nvi
let g:coc_snippet_next = '<M-j>'

" Jump to previous placeholder, it's default of coc.nvi
let g:coc_snippet_prev = '<M-k>'

" Both expand and jump (make expand higher priority)
imap <M-j> <Plug>(coc-snippets-expand-jump)

" Convert visual selected code to snippet
xmap <leader>x <Plug>(coc-convert-snippet)

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
  " Enable support for SCSS files
  au FileType scss setl iskeyword+=@-@
augroup END
