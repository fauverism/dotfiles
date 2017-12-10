set background=dark
syntax on 

"For onedark color scheme
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
  if (has("termguicolors"))
    set termguicolors
    endif
endif
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
colorscheme PaperColor

set nocompatible
set colorcolumn=80
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch

" Highlight current line
set cursorline
" Enable line numbers
set number
" Enable mouse in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Use relative line numbers
 if exists("&relativenumber")
   set relativenumber
     au BufReadPost * set relativenumber
     endif

map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F6> :tabe<Space>
let g:netrw_liststyle=3
let g:netrw_browse_split=3

"Vundle Plugins
call plug#begin('~/.vim/plugged')

"Vim Wiki
Plug 'vimwiki/vimwiki'

"Hybrid Colorscheme
Plug 'w0ng/vim-hybrid'

" Syntax for SCSS
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'

"HTML Help
Plug 'docunext/closetag.vim'
Plug 'gregsexton/matchtag'

"Indent guidelines
let g:indent_guides_auto_colors = 0

Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'kchmck/vim-coffee-script'

"Highlighting
Plug 'digitaltoad/vim-jade'

"polygot for syntax stuff
Plug 'sheerun/vim-polyglot'

" Add plugins to &runtimepath
call plug#end()
