"-------------------------------------------
" jwplante's Minimal Vimrc for getting
" stuff done.
" (jplante@wpi.edu)
"------------------------------------------ 

" Vundle 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
" NERDTREE Plugin for interactive file manager.

Plugin 'scrooloose/syntastic'
" Automatic syntax checking

Plugin 'puremourning/vimspector'
" General debugger C/Python/Go/etc.

Plugin 'NLKNguyen/papercolor-theme'
" Paper Color Theme

Plugin 'bling/vim-airline'
" Airline Plugin

Plugin 'rip-rip/clang_complete'
" Clang C\C++ Autocomplete

Plugin 'pangloss/vim-javascript'
" JavaScript Syntax Highlighting

Plugin 'MaxMEllon/vim-jsx-pretty'
" React Syntax Highlighting

Plugin 'leafgarland/typescript-vim'
" TypeScript Syntax Highlighting

Plugin 'fatih/vim-go'
" Go Support

call vundle#end()            
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
colorscheme PaperColor

" Set the lines up to 80 characters.
set colorcolumn=80

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "g++"

" Python 3 Support Syntastic
let g:syntastic_python_python_exec = '/usr/bin/python3'

" SemiStandardJS Linter
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'

" Extended fonts
let g:airline_powerline_fonts = 1

" Disable preview window in clang_complete
set completeopt-=preview

" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-8/lib/libclang.so.1'

" Enable automatic spellchecking
" set spell spelllang=en_us
