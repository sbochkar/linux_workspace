set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'w0rp/ale'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
set nu rnu

nmap <F8> :TagbarToggle<CR>
let g:ale_completion_enabled = 1

set hlsearch
set laststatus=2

set background=dark
colorscheme slate
set colorcolumn=100
"set tags=./tags,tags;$HOME
set tags^=./.git/tags

set pastetoggle=<F2>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

nnoremap <C-P>. :CtrlPTag<cr>
let g:ale_python_mypy_options = '--python-version 3.6 --python-executable python'
let g:ale_python_pylint_executable = 'pylint'

"let g:gutentags_trace = '1'
set noshowmode

let @c = "oimport code; code.interact(local=locals())"
let @d = "oimport pdb; pdb.set_trace()"
let g:pydocstring_formatter = 'google'
let g:goyo_width = 110
