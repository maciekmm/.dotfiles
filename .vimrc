set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf8

" YouCompleteMe
let g:dotvim = '~/.vim'
let g:ycm_global_ycm_extra_conf = g:dotvim.'/ycm_extra.py'

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex' " LaTeX support
Plugin 'morhetz/gruvbox' " Color scheme
Plugin 'fatih/vim-go'
Plugin 'ctrlp.vim' " CTRL-P
call vundle#end()            " required
filetype plugin indent on    " required

autocmd VimEnter * call vimtex#init()

set autowrite " Save file if :make called


set backspace=2 " Backspace in insert mode
set laststatus=2 " Always display status line
set number " Line numbers

set nobackup " Don't create swp files
set nowritebackup " ^^
set cursorline " Highlight current line
set noswapfile " Shit get's annoying
set history=64
set ruler
set showtabline=2

set shiftwidth=4
set tabstop=4 " Tab is 4 spaces wide
set autoindent
set smarttab
set foldmethod=syntax

set mouse=a
set guioptions+=a " Mouse support

syntax on " Always do syntax hightlighting
nnoremap <C-Insert> "+y
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-T> :term<CR>

set t_Co=256
set background=dark
colorscheme gruvbox

" Disable arrow keys
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Select active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

let mapleader = ","

map <leader>n :cnext<CR>
map <leader>m :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
let g:go_fmt_command = "goimports"

"Open NERDTree for folders
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Look in open tabs
let g:ctrlp_cmd = 'CtrlPMixed'

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''
