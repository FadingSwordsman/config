set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tComment'
Plugin 'davidhalter/jedi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()

set suffixesadd=.rb
set suffixesadd=.rhtml
set suffixesadd=.rake

set includeexpr+=substitute(v:fname,'s$','','g')

set nocompatible
set hlsearch
syn enable
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set autoindent
set nowrap

set showcmd
set showmatch
set ruler
set ignorecase
set incsearch
set number

set laststatus=2
set wildmenu
set foldmethod=syntax

" let g:ycm_min_num_of_chars_for_completion = 5
" let g:ycm_auto_trigger = 0

syntax on

set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']
let g:jedi#popup_on_dot = 0

set background=dark
colorscheme solarized

if @% =~ '.*\.js\.\?.*'
  set syntax=javascript
elseif @% =~ '.*\.mustache'
  set syntax=html
endif

if has("autocmd")
  au bufreadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
