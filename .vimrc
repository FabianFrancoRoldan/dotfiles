set nocompatible " Required
set number
syntax on
set ruler
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself .
Plugin 'gmarik/Vundle.vim'


" Plugins
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'fatih/vim-go'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'flazz/vim-colorschemes'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/syntastic'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'kien/ctrlp.vim'


" Enable vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set t_Co=256
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" NerdTree Tab Maps 
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" Required, plugins available after.
call vundle#end()
filetype plugin indent on
