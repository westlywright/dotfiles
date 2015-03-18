" ---------------------- USABILITY CONFIGURATION ----------------------
"  Basic and pretty much needed settings to provide a solid base for
"  source code editting

" don't make vim compatible with vi
set nocompatible

" turn on syntax highlighting
syntax on
" and show line numbers
set number


" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on
filetype indent on

" reload files changed outside vim
set autoread

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" enable matchit plugin which ships with vim and greatly enhances '%'
runtime macros/matchit.vim

" by default, in insert mode backspace won't delete over line breaks, or
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" dont't unload buffers when they are abandoned, instead stay in the
" background
set hidden

" set unix line endings
set fileformat=unix
" when reading files try unix line endings then dos, also use unix for new
" buffers
set fileformats=unix,dos

" save up to 100 marks, enable capital marks
set viminfo='100,f1

" screen will not be redrawn while running macros, registers or other
" non-typed comments
set lazyredraw

" Enable use of the mouse for all modes
set mouse=a

" ---------------------- PLUGIN CONFIGURATION ----------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
" -- Web Development
Plugin 'Shutnik/jshint2.vim'
Plugin 'mattn/emmet-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" start NERDTree on start-up and focus active window
autocmd VimEnter * NERDTree