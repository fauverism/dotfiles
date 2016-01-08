

1   " Use the Solarized Dark theme
  1 set background=dark
  2 colorscheme solarized
  3 let g:solarized_termtrans=1
  4 " Make Vim more useful
  5 set nocompatible
  6 " Use the OS clipboard by default (on versions compiled with `+clipboard`)
  7 set clipboard=unnamed
  8
  9 syntax on
 10 set smartindent
 11 set tabstop=2
 12 set shiftwidth=2
 13 set expandtab
 14 set ruler
 15 map <F7> :tabp<CR>
 16 map <F8> :tabn<CR>
 17 map <F6> :tabe<Space>
 18 let g:netrw_liststyle=3
 19 let g:netrw_browse_split=3
 20
 21 "Indent guidelines
 22 let g:indent_guides_auto_colors = 0
 23 autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
 24 autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
 25
 26 " Highlight current line
 27 set cursorline
 28 " Enable line numbers
 29 set number
 30 " Enable mouse in all modes
 31 set mouse=a
 32 " Don’t reset cursor to start of line when moving around.
 33 set nostartofline
 34 " Show the cursor position
 35 set ruler
 36 " Show the current mode
 37 set showmode
 38 " Show the filename in the window titlebar
 39 set title
 40 " Use relative line numbers
 41  if exists("&relativenumber")
 42    set relativenumber
 43      au BufReadPost * set relativenumber
 44      endif
 45 " Start scrolling three lines before the horizontal window border
 46 set scrolloff=3
 47
 48 "Vundle Plugins
 49 call plug#begin('~/.vim/plugged')
 50
 51 " Make sure you use single quotes
 52 Plug 'junegunn/seoul256.vim'
 53 Plug 'junegunn/vim-easy-align'
 54
 55 " On-demand loading
 56 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 57 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
 58
 59 " Using git URL
 60 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
 61
 62 " Using a non-master branch
 63 Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
 64
".vimrc" 89L, 2213C                                                                                 1,1           Top
