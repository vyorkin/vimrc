" Plugins will be downloaded under the specified directory
call plug#begin('~/.config/nvim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""

" Universal set of defaults
  Plug 'tpope/vim-sensible'
" Easily search for, substitute, and abbreviate multiple variants of a word
  Plug 'tpope/vim-abolish'
" Plugin to comment/uncomment stuff
  Plug 'tpope/vim-commentary'
" Helps to end certain structures automatically
  Plug 'tpope/vim-endwise'
" Enable repeating supported plugin maps with .
  Plug 'tpope/vim-repeat'
" Quoting/parenthesizing
  Plug 'tpope/vim-surround'
" Complementary pairs of mappings
  Plug 'tpope/vim-unimpaired'
" Netrw enhancer
  Plug 'tpope/vim-vinegar'
" Unix shell commands in Vim
  Plug 'tpope/vim-eunuch'
" Emacs (repline) mappings for insert and command line modes
  Plug 'tpope/vim-rsi'
" Heuristically set buffer options
  Plug 'tpope/vim-sleuth'
" Session management
  Plug 'tpope/vim-obsession'
" Software capslock (gC or <C-G>c)
  Plug 'tpope/vim-capslock'
" Granular project configuration
  Plug 'tpope/vim-projectionist'
" Use <C-a>/<C-x> to increment dates, times and more
  Plug 'tpope/vim-speeddating'
" Asynchronous build and test dispatcher
  Plug 'tpope/vim-dispatch'
" A Vim plugin for Vim plugins
  Plug 'tpope/vim-scriptease'
" Interface for tree-sitter.
" Provides basic functionality based on it (such as highlighting)
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"""""""""""""""""""""""""""""""""""""""""""""""""
" Text objects
"""""""""""""""""""""""""""""""""""""""""""""""""

" Allows to create your own text objects without pain
  Plug 'kana/vim-textobj-user'
" Provides additional text objects
  Plug 'wellle/targets.vim'
" Defines a new text object representing lines of code at
" the same indent level. Useful for python/vim scripts, etc
  Plug 'michaeljsmith/vim-indent-object'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Editing & Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""

" Structured Editing of Lisp S-expressions
  Plug 'vim-scripts/paredit.vim'
" Allows to visually select increasingly larger regions of
" text using the same key combination
  Plug 'terryma/vim-expand-region'
" Plugin for text filtering and alignment
  Plug 'godlygeek/tabular'
" Switch between single-line and multiline forms of code
  Plug 'AndrewRadev/splitjoin.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation & Search
"""""""""""""""""""""""""""""""""""""""""""""""""

" A command-line fuzzy finder
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
" Bundle of fzf-based commands and mappings
  Plug 'junegunn/fzf.vim'
" Use nvim/vim's builtin terminal in the floating/popup window
  Plug 'voldikss/vim-floaterm'
" Fzf support for vim-floaterm
  Plug 'voldikss/fzf-floaterm'
" shows keybindings in popup
  Plug 'liuchengxu/vim-which-key'
" Make Ranger running in a floating window to communicate with Neovim via RPC
  Plug 'kevinhwang91/rnvimr'
" Multiple cursors plugin for vim/neovim
  Plug 'mg979/vim-visual-multi'
" Plugin to toggle, display and navigate marks
  Plug 'kshenoy/vim-signature'
" Window local searching
  Plug 'mox-mox/vim-localsearch'
" An ack/ag/pt/rg powered code search and view tool
  Plug 'dyng/ctrlsf.vim'
" Intelligently reopen files at your last edit position
  Plug 'dietsche/vim-lastplace'
" File system explorer
  Plug 'scrooloose/nerdtree'
" Extra syntax and highlight for nerdtree files
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax checking
"""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax checking plugin for Vim created by Martin Grenfell.
" It runs files through external syntax checkers and displays any resulting errors to the user
  Plug 'scrooloose/syntastic'
" Additional Syntastic syntax checkers and features
  Plug 'myint/syntastic-extras'
" Syntastic plugin for solhint: linting utility for Solidity code
  Plug 'sohkai/syntastic-local-solhint'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Tags
"""""""""""""""""""""""""""""""""""""""""""""""""

" Displays tags in a window, ordered by scope
  Plug 'majutsushi/tagbar'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""

" Lean & mean status/tabline for vim
  Plug 'vim-airline/vim-airline'
" A collection of themes for vim-airline
  Plug 'vim-airline/vim-airline-themes'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Undo/redo
"""""""""""""""""""""""""""""""""""""""""""""""""

" Visualizes undo history and makes it easier to
" browse and switch between different undo branches
  Plug 'mbbill/undotree'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Git
"""""""""""""""""""""""""""""""""""""""""""""""""

" Git wrapper for Vim
  Plug 'tpope/vim-fugitive'
" GitHub extension for fugitive.vim
  Plug 'tpope/vim-rhubarb'
" An extension to fugitive.vim for gitlab support
  Plug 'shumphrey/fugitive-gitlab.vim'
" Add Bitbucket URL support to fugitive.vim's :Gbrowse command
  Plug 'tommcdo/vim-fubitive'
" Vim Git runtime files:
" syntax, indent, and filetype plugin files for git,
" gitcommit, gitconfig, gitrebase, and gitsendemail
  Plug 'tpope/vim-git'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""

" Seamless navigation between tmux panes and vim splits
  Plug 'christoomey/vim-tmux-navigator'

"""""""""""""""""""""""""""""""""""""""""""""""""
" CoC
"""""""""""""""""""""""""""""""""""""""""""""""""

" Intellisense engine for Vim8 & Neovim,
" full language server protocol support as VSCode
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Use FZF instead of coc.nvim built-in fuzzy finder
  Plug 'antoinemadec/coc-fzf'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Languages
"""""""""""""""""""""""""""""""""""""""""""""""""

" Ruby

" Vim's runtime files for ruby support.
" Includes syntax highlighting, indentation, omnicompletion,
" and various useful tools and mappings
  Plug 'vim-ruby/vim-ruby'
" Massive (in a good way) Vim plugin for editing Ruby on Rails applications
  Plug 'tpope/vim-rails'
" Leverages projectionist.vim to use parts of
" vim-rails functionality on other (non-Rails) Ruby projects
  Plug 'tpope/vim-rake'
" Provides a :Rbenv command that wraps !rbenv with tab complete
  Plug 'tpope/vim-rbenv'
" Lightweight support for Ruby's Bundler
  Plug 'tpope/vim-bundler'
" Heroku CLI wrapper
  Plug 'tpope/vim-heroku'
" Vim Cucumber runtime files.
" Provides syntax highlighting, indenting, and some editing commands
  Plug 'tpope/vim-cucumber'
" Better rspec syntax highlighting for Vim
  Plug 'keith/rspec.vim'
" Vim runtime files for Haml, Sass, and SCSS
  Plug 'tpope/vim-haml'
" Slim templates syntax highlighting for VIM
  Plug 'slim-template/vim-slim'
" A custom text object for selecting ruby blocks.
  Plug 'nelstrom/vim-textobj-rubyblock'

" Clojure

" Clojure REPL support
  Plug 'tpope/vim-fireplace'
" Sets the 'path' for JVM languages to match the
" class path of your current Java project
  Plug 'tpope/vim-classpath'
" Meikel Brandmeyer's excellent Clojure runtime files, extracted from the VimClojure project for use with alternate Clojure REPL plugins.
" Provides syntax highlighting, indentation, basic insert mode completion for
" special forms and public vars in clojure.core
  Plug 'guns/vim-clojure-static'
" Extended builtin syntax highlighting to referred and
" aliased vars in Clojure buffers
  Plug 'guns/vim-clojure-highlight'
" Yet another rainbow parentheses plugin
  Plug 'vim-scripts/vim-niji'
" Static support for Leiningen and Boot
  Plug 'tpope/vim-salve'

" Cxx

" Provides C/C++/Cuda/ObjC semantic highlighting using the language server protocol
  Plug 'jackguo380/vim-lsp-cxx-highlight'

" Haskell

" Syntax Highlighting and Indentation for Haskell and Cabal
  Plug 'neovimhaskell/haskell-vim'

" Idris
"
  Plug 'idris-hackers/idris-vim'

" PureScript

" Syntax highlighting and indentation for PureScript
  Plug 'purescript-contrib/purescript-vim'

" Nix

" Support for writing Nix expressions:
" - Syntax highlighting
" - Filetype detection for .nix files
" - Automatic indentation
" - NixEdit command: navigate nixpkgs by attribute name
  Plug 'LnL7/vim-nix'

" Nginx

" Improved nginx vim plugin (incl. syntax highlighting)
  Plug 'chr4/nginx.vim'

" SSL

" Highlight insecure SSL configuration in Vim
" (works for all OpenSSL/ LibreSSL cipher strings, independent of the filetype)
  Plug 'chr4/sslsecure.vim'

" Octave

" Provides syntax highlighting for the GNU Octave programming language
  Plug 'vim-scripts/octave.vim--'

" Dart
  Plug 'dart-lang/dart-vim-plugin'

" Solidity
  Plug 'TovarishFin/vim-solidity'

" Vyper
  Plug 'jacqueswww/vim-vyper'

" Docker
  Plug 'honza/dockerfile.vim'
  Plug 'kevinhui/vim-docker-tools'

" Dhall
  Plug 'vmchale/dhall-vim'

" Ansible
  Plug 'pearofducks/ansible-vim'


"""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""

" Clear and make transparent vim's background color in terminal
  Plug 'miyakogi/seiya.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Writing
"""""""""""""""""""""""""""""""""""""""""""""""""

" Distraction-free, hyperfocus, zen-mode
  Plug 'folke/zen-mode.nvim'
  Plug 'folke/twilight.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Themes
"""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'MichaelMalick/vim-colors-bluedrake'
Plug 'wimstefan/Lightning'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'morhetz/gruvbox'
Plug 'ninja/sky'
Plug 'geoffharcourt/one-dark.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'zanglg/nova.vim'
Plug 'ajmwagar/vim-dues'
Plug 'rafi/awesome-vim-colorschemes'

" List ends here.
" Plugins become visible to Vim after this call
call plug#end()
