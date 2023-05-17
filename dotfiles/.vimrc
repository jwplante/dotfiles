"-------------------------------------------
" jwplante's Minimal Vimrc for getting
" stuff done.
" (jplante@wpi.edu)
"------------------------------------------ 

" Plugins
call plug#begin()

Plug 'tpope/vim-surround'
" Surround Plugin

Plug 'tpope/vim-fugitive'
" Git Plugin

Plug 'scrooloose/nerdtree'
" NERDTREE Plug for interactive file manager.

Plug 'puremourning/vimspector'
" General debugger C/Python/Go/etc.

Plug 'bignimbus/pop-punk.vim'
" Current Color theme

Plug 'itchyny/lightline.vim'
" Lightline Bottom Bar

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" LSP Support

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Autocomplete
call plug#end()

filetype plugin indent on   

set exrc
set secure

" Basic default formatting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8

" Custom formatting for JS and CSS
autocmd Filetype javascript,css setlocal tabstop=2
autocmd Filetype javascript,css setlocal softtabstop=2
autocmd Filetype javascript,css setlocal shiftwidth=2 

" Set relative line numbers
set relativenumber

set listchars=tab:!-

" 'jj' acts as ESC
ino jj <Esc>

" Automatic Parenthesis Completion
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

" Ctrl-d to switch to shell and back
noremap <C-d> :sh<cr>

" H - Tab left, L - tab right
noremap H gT
noremap L gt

" Color Scheme
set background=dark
colorscheme pop-punk

" Set the lines up to 100 characters.
set colorcolumn=100

" Enable automatic spellchecking
set spell spelllang=en_us

set laststatus=2
