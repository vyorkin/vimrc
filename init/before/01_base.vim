"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""

" Buffer can be put to the background without writing to disk
set hidden

" Use <Space> as leader key
let mapleader="\<Space>"

" Enable mouse (in all modes)
set mouse=a
" Allow backspace in insert mode
set backspace=indent,eol,start
" No sounds
set visualbell
" Don't redraw while in macros
set lazyredraw
" Use fast terminal connection
set ttyfast
" Automatic EOL detection
set ffs=unix,mac,dos
" Disable code folding (all folds are open by default)
set nofoldenable
" Use system clipboard for yanks
set clipboard+=unnamedplus
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" - Use short messages
" - Skip :intro
" - Truncate file msg to fit on the cmd line
" - Don't pass messages to |ins-completion-menu
set shortmess=catIO

" Always show the signcolumn, otherwise it
" would shift the text each time diagnostics appear/become resolved
set signcolumn=yes

" Better formatting
augroup formatting
  au!
  " Disable automatic commenting on newline
  au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Briefly jump to the matching bracket
set showmatch
" How long to show matching paren
set matchtime=1

"""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable 24-bit colors
set termguicolors

if has('gui_running')
  set guifont=JetBrains\ Mono\ 13
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

" Keep tabstop on 8, set softtabstop to 2

" Copy indent from current line when starting a new line
set autoindent
" Enable smart indent
set smartindent
" Use shiftwidth to insert blanks on <Tab> in front of a line, same for <BS>
set smarttab
" Number of spaces to use for each (auto)indent
set shiftwidth=2
" Number of spaces that a <Tab> counts for edit operations (treat 2 spaces like a real <Tab>)
set softtabstop=2
" Always insert spaces instead of tabs
set expandtab
" Round indent when shifting
set shiftround

""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase
" Override ignorecase if the search pattern contains upper case letters
set smartcase

" Highlight search matches
if &t_Co > 1   " if terminal supports colors
  set hlsearch " highlight search matches
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Auto read/write
"""""""""""""""""""""""""""""""""""""""""""""""""

augroup autoread
  au!
  " Trigger autoread when changing buffers
  au FocusGained,BufEnter * checktime
augroup END

" Always write modified files (don't need to set autowrite)
set autowriteall

"""""""""""""""""""""""""""""""""""""""""""""""""
" Windows, Splits
"""""""""""""""""""""""""""""""""""""""""""""""""

" Don't squeeze window too much
set winwidth=20
set winminwidth=20

" Open splits at the bottom and right
" which is non-retarted, unlinke vim defaults

" Put a new window on the right side
set splitbelow
" Put a new window below the current one (1/10 sec)
set splitright

" Get rid of the vertical separator for split windows
:set fillchars+=vert:\

"""""""""""""""""""""""""""""""""""""""""""""""""
" Local .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""

" Search for .vimrc in the current dir (per-project .vimrc files)
set exrc
" Don't allow autocmd, shell and write commands in .vimrc
set secure

"""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
"""""""""""""""""""""""""""""""""""""""""""""""""

" Min number of cols to use for the line numbers
set numberwidth=3
" Don't use relative numbers
set norelativenumber
" Turn off line numbers
set nonumber

"""""""""""""""""""""""""""""""""""""""""""""""""
" Hidden characters
"""""""""""""""""""""""""""""""""""""""""""""""""

" don't display hidden chars cuz its too distracting
set nolist
" strings to use in list mode (tabs, end of line, trailing spaces, etc)
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<,nbsp:+

"""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""

" Deepest fold in 3 levels
set foldnestmax=3
" Column on the left that indicates open and closed folds
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""
" Line wrapping & text formatting
"""""""""""""""""""""""""""""""""""""""""""""""""

" Don't wrap long lines
set nowrap
" Use 'breakat' to decide when to wrap long lines
set linebreak
" Allow wrap while moving with space,
" backspace, arrows (in normal & insert modes)
set whichwrap=b,s,<,>,[,]
" Maximum width of text (useful for formatting with gq)
set textwidth=80
" Format options that doesn't suck
set formatoptions=qlcrnj1

"""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""

" Display the size of the selected area in visual mode
set showcmd
" Show current mode (insert/visual/replace)
set showmode

"""""""""""""""""""""""""""""""""""""""""""""""""
" Temporary files
"""""""""""""""""""""""""""""""""""""""""""""""""

" Dir to store temp files: swaps, undo history
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

if has('persistent_undo')
  " Keep undo history across sessions by storing it in file
  " auto save/restore undo history on buffer write/read
  set undodir=~/.vim-tmp/undo/,~/.vim/undo/,~/.tmp,~/tmp,/var/tmp,/tmp
  set undofile
endif

" Turn off swap files & backups
set noswapfile
set nowritebackup
