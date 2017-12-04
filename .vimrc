syntax enable
set background=dark
set t_Co=256
syntax on
colorscheme PaperColor 
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set colorcolumn=80
set regexpengine=1
set laststatus=2
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F6> :tabe<space>
set wildmenu
set showmatch
set esckeys
set backspace=indent,eol,start
set gdefault
set encoding=utf-8 nobomb

let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END

set exrc

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

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
"Better paste
set clipboard=unnamed
set clipboard=unnamedplus

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
    au BufReadPost * set relativenumber
    endif

let g:netrw_liststyle=3
let g:netrw_browse_split=3

"Vundle Plugins
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'pangloss/vim-javascript'

Plug 'flowtype/vim-flow'

"via bookmarks
Plug 'MattesGroeger/vim-bookmarks'

"Vim Wiki
Plug 'vimwiki/vimwiki'

"Hybrid Colorscheme
Plug 'w0ng/vim-hybrid'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax for SCSS
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'

"HTML Help
Plug 'docunext/closetag.vim'
Plug 'gregsexton/matchtag'

"Indent guidelines
let g:indent_guides_auto_colors = 1

Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'kchmck/vim-coffee-script'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"Highlighting
Plug 'digitaltoad/vim-jade'

"polygot for syntax stuff
Plug 'sheerun/vim-polyglot'

" Add plugins to &runtimepath
call plug#end()

set history=700
set paste
set noai

