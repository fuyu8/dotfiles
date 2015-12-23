"----- Window -----"
set number
set ruler
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set scrolloff=5
set laststatus=2
set showmode
set showcmd

"----- Insert -----"
syntax on
set showmatch
set wildmenu
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set clipboard+=unnamed
set clipboard=unnamed

"----- Search -----"
set hlsearch
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

"----- Indent -----"
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround

"----- Files -----"
set noswapfile

"----- NeoBundle -----"
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

"Plugins"
call neobundle#end()
filetype plugin indent on

