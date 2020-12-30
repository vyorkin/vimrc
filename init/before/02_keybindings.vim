"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""

" I hate holding <Shift> every time I need to enter a cmd
nn ; :
nn : ;

" Enter visual mode with <Leader><Leader>
nn <leader><leader> V

" Set text wrapping toggles
nn <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Start an external command with a single bang
nn ! :!

"""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""

" Make 0 go to the first character
" rather than the beginning of the line
nn 0 ^
nn ^ 0

" Go to last edit location
nn ,. '.

" Jump to line and column by typing '<mark_char>
nn ' `
nn ` '

" Remove search highlight markers by typing //
nn <silent> // :nohlsearch<CR>

" Open/close quickfix window faster
nn <silent> ,qc :cclose<CR>
nn <silent> ,qo :copen<CR>

" Move back and forth through previous and next buffers with ,z and ,x
nn <silent> ,z :bp<CR>
nn <silent> ,x :bn<CR>

" Easily move between next and previous errors
nn <silent> <leader>J :lnext<CR>
nn <silent> <leader>K :lprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Arrows
"""""""""""""""""""""""""""""""""""""""""""""""""

" Disable arrows in normal mode
nn <up> <nop>
nn <down> <nop>
nn <left> <nop>
nn <right> <nop>

" Disable arrows in insert mode
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Splits
"""""""""""""""""""""""""""""""""""""""""""""""""

" Move between splits faster
nn <silent> <C-l> <C-w>l
nn <silent> <C-k> <C-w>k
nn <silent> <C-j> <C-w>j
nn <silent> <C-h> <C-w>h

" Create window splits easier
nn <silent> <leader>v <C-w>v<CR>
nn <silent> <leader>s <C-w>s<CR>

" Alternative way to create window splits
nn <silent> <leader>\| <C-w>v
nn <silent> <leader>_ <C-w>s

" Resize splits easier
nn <silent> <C-M-j> :resize -2<CR>
nn <silent> <C-M-k> :resize +2<CR>
nn <silent> <C-M-h> :vertical resize -2<CR>
nn <silent> <C-M-l> :vertical resize +2<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Yanking
"""""""""""""""""""""""""""""""""""""""""""""""""

vn <leader>y "+y
vn <leader>d "+d
nn <leader>p "+p
nn <leader>P "+P
vn <leader>p "+p
vn <leader>P "+P

"""""""""""""""""""""""""""""""""""""""""""""""""
" Surround
"""""""""""""""""""""""""""""""""""""""""""""""""

" Surround a word with #
nm ,# ysiw#
" #{ruby interpolation}
vn ,# c#{<C-R>"}<ESC>

" Surround a word with "quotes"
nm ," ysiw"
vn ," c"<C-R>""<ESC>

" Surround a word with 'single quotes'
nm ,' ysiw'
vn ,' c'<C-R>"'<ESC>

" Surround a word with (parens)
" The difference is in whether a space is put in
nm ,( ysiw(
nm ,) ysiw)
vn ,( c( <C-R>" )<ESC>
vn ,) c(<C-R>")<ESC>

" Surround a word with [brackets]
nm ,] ysiw]
nm ,[ ysiw[
vn ,[ c[ <C-R>" ]<ESC>
vn ,] c[<C-R>"]<ESC>

" Surround a word with {braces}
nm ,} ysiw}
nm ,{ ysiw{
vn ,} c{ <C-R>" }<ESC>
vn ,{ c{<C-R>"}<ESC>
