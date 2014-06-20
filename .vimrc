set nocompatible               " be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

let g:neocomplete#force_overwrite_completefunc = 1

" originalrepos on github
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Shougo/neocomplete'

let g:rsenseHome = "/usr/local/Cellar/rsense/0.3/libexec"
let g:rsenseUseOmniFunc = 1

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

filetyp plugin indent on     " required!
filetype indent on
syntax on
set ru
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set ttymouse=xterm2

set backspace=indent,eol,start

autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent loadview
augroup vimrc
  autocmd! FileType perl setlocal shiftwidth=4 tabstop=2 softtabstop=2
  autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd! FileType css  setlocal shiftwidth=4 tabstop=2 softtabstop=2
  autocmd! FileType ruby setlocal shiftwidth=4 tabstop=2 softtabstop=2
augroup END
