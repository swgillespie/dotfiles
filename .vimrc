set nocompatible              " be iMproved, required
filetype off                  " required

set number
set tabstop=4
set shiftwidth=2
set expandtab
set showcmd
set encoding=utf-8
set relativenumber
set number

let mapleader=" "
syntax on

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jf :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <leader>jp :YcmCompleter GetParent<CR>

map <C-K> :pyf ~/Documents/workspace/cpp/cppos/scripts/clang-format.py<CR>
imap <C-K> <c-o> :pyf ~/Documents/workspace/cpp/cppos/scripts/clang-format.py<CR>


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if has("python") || has("python3")
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'rdnetto/YCM-Generator'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

try
    colorscheme molokai
catch /^Vim\%((\a\+)\)\=:E185/
    " not installed yet - will get installed by Vundle later
endtry

let g:ycm_disable_for_files_larger_than_kb = 0
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set guifont=Source\ Code\ Pro
set guioptions-=L

if has('win32')
    let g:ycm_global_ycm_extra_conf = 'C:\Users\segilles\.ycm_extra_conf.py'
else
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
endif

set cursorline

" Start up NerdTree on load"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

