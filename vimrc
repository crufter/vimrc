" vundle {{
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

    " languages
    Plugin 'fatih/vim-go'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'eagletmt/neco-ghc'

  call vundle#end()
" }}

syntax on
filetype plugin indent on
set number
let mapleader = ','
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ruler

au BufNewFile * :exe ': !mkdir -p ' . escape(fnamemodify(bufname('%'),':p:h'),'#% \\')
vnoremap < <gv
vnoremap > >gv


" Haskset
set omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}
"let $PATH = $PATH . ':' . expand('~/Library/Haskell/bin')
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_debug = 1

" Color scheme
colorscheme cake16

" Filetype specific cruft
autocmd FileType proto setlocal noexpandtab 
