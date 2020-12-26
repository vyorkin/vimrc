let g:chalk_char = " "       " The character used as padding
                             " when aligning markers

let g:chalk_align = 0
let g:chalk_edit = 0

" Files for which to add a space between the marker and the current text
" au BufRead,BufNewFile *.vim let b:chalk_space_before = 1

" Create fold at visual selection
vmap zf <Plug>Chalk<esc>
" Create fold at operator movement
nmap zf <Plug>Chalk<esc>
" Create fold for specified number of lines
nmap zF <Plug>ChalkRange<esc>

" Create single (opening) fold marker at current level or specified count
nmap Zf <Plug>SingleChalk
" Create single (opening) fold marker at next levelor specified count
nmap ZF <Plug>SingleChalkUp


" Increment current fold level
nmap =z <Plug>ChalkUp
" Decrement current fold level
nmap -z <Plug>ChalkDown
" Increment levels in selection
vmap =z <Plug>ChalkUp
" Decrement levels in selection
vmap -z <Plug>ChalkDown
