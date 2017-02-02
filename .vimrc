set nocompatible              " be iMproved, required
filetype off                  " required

set number
set tabstop=4
set shiftwidth=2
set expandtab
set showcmd

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
if has("python")
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'rdnetto/YCM-Generator'
if has("lua")
    Plugin 'jeaye/color_coded'
endif
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai

let g:ycm_disable_for_files_larger_than_kb = 0
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set guifont=Source\ Code\ Pro

if has('win32')
    let g:ycm_global_ycm_extra_conf = 'C:\Users\segilles\.ycm_extra_conf.py'
else
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
endif

set cursorline
