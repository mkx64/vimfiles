" We don't want to be in compliance mode with Vi
  set nocompatible
  filetype off

" Enable Vundle
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#begin()
  Plugin 'gmarik/Vundle.vim'

" My bundles
  Plugin 'kien/ctrlp.vim'
  Plugin 'vim-scripts/matchit.zip'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic'
  Plugin 'bling/vim-airline'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'sjl/gundo.vim'
  Plugin 'Raimondi/delimitMate'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'majutsushi/tagbar'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'vim-scripts/taglist.vim'
  Plugin 'Shougo/neocomplete'
  Plugin 'Shougo/neosnippet.vim'
call vundle#end()
filetype plugin indent on

set tags=./tags
set wildmode=list:longest " make TAB behave like in a shell
set autoread " reload file when changes happen in other editors
set mouse=a
set bs=2 " make backspace behave like normal again

let $VIMHOME = $HOME."/.vim"

" make yank copy to the global system clipboard
  set clipboard=unnamed

" Neocomplete Setup
  let g:neocomplete#enable_at_startup = 1

" Set encoding
  set encoding=utf-8

" Use Unix as the standard file type
  set ff=unix

" Make history go insane, but safe my sanity
  set history=700
  set undolevels=700

" Make search case insensitive
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
    set nobackup
    set nowritebackup
    set noswapfile

" Bind nohl
  noremap <Leader>h :nohl<CR>

" Enable hidden buffers, so we can switch buffers without saving them.
  set hidden

" Fix for ViM Airline Plugin
  set laststatus=2

" Make backspace behave like normal again
  set bs=2 "

" Enable syntax highlighting
  syntax enable

source $VIMHOME/conf/airline.vim
source $VIMHOME/conf/ctrlp.vim
source $VIMHOME/conf/syntastic.vim
source $VIMHOME/conf/ultisnips.vim
source $VIMHOME/conf/neocomplete.vim
source $VIMHOME/indentation.vim
source $VIMHOME/colors.vim
source $VIMHOME/keymap.vim
" vim:tabstop=2:expandtab
