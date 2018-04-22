set backspace=2 " Backspace in insert mode
set number
set tabstop=4 " Tab is 4 spaces wide
set nobackup
set nowritebackup
set mouse=a
set noswapfile " Shit get's annoying
set history=64
set ruler
set laststatus=2 " Always display status line
set autoindent
set showtabline=2
" YouCompleteMe
let g:dotvim = '~/.vim'
let g:ycm_global_ycm_extra_conf = g:dotvim.'/ycm.py'
" YCM CPP
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" VIMTEX
let g:vimtex_view_general_viewer = 'qpdfview'
let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_compiler_latexmk = {
\ 'backend' : 'jobs',
\ 'background' : 1,
\ 'build_dir' : '',
\ 'callback' : 1,
\ 'continuous' : 1,
\ 'executable' : 'latexmk',
\ 'options' : [
\   '-pdf',
\   '-verbose',
\   '-file-line-error',
\   '-synctex=1',
\   '-interaction=nonstopmode',
\ ],
\}

syntax on " Always do syntax hightlighting

nnoremap <F9> :!%:p " Execute current file

"ino " ""<left>
"ino ' ''<left>
"ino ( ()<left>
"ino [ []<left>
"ino { {}<left>
"ino {<CR> {<CR>}<ESC>O
"ino {;<CR> {<CR>};<ESC>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
autocmd VimEnter * call vimtex#init()

" autocmd VimEnter * NERDTree

