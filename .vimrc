set background=dark¬
" Make Vim more useful¬
set nocompatible¬
"Colorscheme settings¬
autocmd BufEnter * colorscheme onedark·¬
autocmd BufEnter *.css colorscheme lucario¬
autocmd BufEnter *.scss colorscheme jellybeans·¬
set colorcolumn=80¬
syntax enable¬
set regexpengine=1¬
set smartindent¬
set tabstop=2¬
set shiftwidth=2¬
set expandtab¬
map <F7> :tabp<CR>¬
map <F8> :tabn<CR>¬
map <F6> :tabe<Space>¬
let g:netrw_liststyle=3¬
let g:netrw_browse_split=3¬
" Highlight current line¬
set cursorline¬
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_¬
set list¬
" Highlight searches¬
set hlsearch¬
" Ignore case of searches¬
set ignorecase¬
" Highlight dynamically as pattern is typed¬
set incsearch¬
¬
" Highlight current line¬
set cursorline¬
" Enable line numbers¬
set number¬
" Enable mouse in all modes¬
set mouse=a¬
" Don’t reset cursor to start of line when moving around.¬
set nostartofline¬
" Show the cursor position¬
set ruler¬
" Show the current mode¬
set showmode¬
" Show the filename in the window titlebar¬
set title¬
" Use relative line numbers¬
 if exists("&relativenumber")¬
   set relativenumber¬
     au BufReadPost * set relativenumber¬
     endif¬
¬
"Vundle Plugins¬
call plug#begin('~/.vim/plugged')¬
¬
" Syntax for SCSS¬
Plug 'JulesWang/css.vim'¬
Plug 'cakebaker/scss-syntax.vim'¬
¬
" Make sure you use single quotes¬
Plug 'junegunn/seoul256.vim'¬
Plug 'junegunn/vim-easy-align'¬
¬
" gruvbox¬
Plug 'morhetz/gruvbox'¬
¬
" On-demand loading¬
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }¬
