set backspace=2 " Backspace in insert mode
set tabstop=4 " Tab is 4 spaces wide
set nobackup
set nowritebackup
set noswapfile " Shit get's annoying
set history=64
set ruler
set laststatus=2 " Always display status line
set autoindent

syntax on " Always do syntax hightlighting

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
