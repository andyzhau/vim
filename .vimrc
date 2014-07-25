""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" features
Bundle 'Lokaltog/powerline-fonts'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/ZoomWin'

" language bundles
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'tfnico/vim-gradle'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""
" Customized settings
""""""""""""""""""""""""""""""

syntax on

set number
set incsearch
set showcmd
set ruler
set hlsearch
set showmatch
let mapleader=','
set expandtab
set autoindent
set cindent
set shiftwidth=2
set textwidth=80
set tabstop=2
set colorcolumn=+1
set smartcase
set ic
set undolevels=50000
set laststatus=2

" tell it to use an undo file
set undofile

" set a directory to store the undo history
set undodir=/home/yourname/.vimundo/
set cpt-=t

" make backspace work like most other apps
set backspace=2
set backspace=indent,eol,start

set noswapfile

filetype on
filetype plugin on
filetype indent on

highlight ExtraWhitespace ctermbg=red guibg=red
au filetype * match ExtraWhitespace /\s\+$/
au filetype * match Search /\%<81v.\%>77v/
au filetype * match ErrorMsg /\%>80v.\+/

" Highlight trailing whitespace
hi TrailingSpace ctermbg=1
au filetype * match TrailingSpace "\s\+\n"

au BufRead,BufNewFile *.coffiew set filetype=coffee

" Color for Identifier
" color darkblue
color blueprint

imap <leader>w <ESC>:w<CR>
nmap <leader>w :w<CR>
imap <silent> <leader>q <ESC>:q<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>a :qa<CR>

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" Fast to open a new window
nmap <C-n> :vsplit<cr><C-w>l:e<space>
" nmap <C-t> :split<cr><C-w>j:e<space>

" Fast to open a new window
nmap <C-n> :vsplit<cr><C-w>l:e<space>
" nmap <C-t> :split<cr><C-w>j:e<space>

" Fast to open related files
" imap <leader>h <ESC>:e<SPACE>%:r.h<CR>
" nmap <leader>h :e<SPACE>%:r.h<CR>

" imap <leader>j <ESC>:e<SPACE>%:r.cc<CR>
" nmap <leader>j :e<SPACE>%:r.cc<CR>

imap <leader>b <ESC>:e<SPACE>%:h/BUILD<CR>
nmap <leader>b :e<SPACE>%:h/BUILD<CR>

imap <leader>d <ESC>:Ex<CR>
nmap <leader>d :Ex<CR>

imap <leader>f <ESC>:Ex<CR>:e<space><C-r>%
nmap <leader>f :Ex<CR>:e<space><C-r>%

" imap <leader>x <ESC>:TagbarToggle<CR>
" nmap <leader>x :TagbarToggle<CR>

imap <leader>cp <ESC>:CoffeeCompile<CR>
nmap <leader>cp :CoffeeCompile<CR>

:inoremap \fp <C-E>=getcwd()<C-E>

nnoremap <leader>n :NERDTreeFind<cr>

" Plugin - NERD Commenter
let g:NERDShutUp = 1
let g:NERDSpaceDelims = 1
let g:NERDMapleader = ',c'
let g:NERDAltComMap = g:NERDMapleader.'A'      " Default: a
let g:NERDAppendComMap = g:NERDMapleader.'a'   " Default: A
" let g:NERDComLineNestMap = g:NERDMapleader.'N'  Default: n
" These mappings do not work

set tags=ctags;/
set tags+=~/workspace/ctags

" TListCtags
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Inc_Winwidth = 0
let s:tlist_def_scala_settings = 'scala;t:trait;c:class;T:type;' . 'm:method;C:constant;l:local;p:package;o:object'

let g:tagbar_ctags_bin = '/usr/bin/ctags'

" Git
imap <leader>gaa <ESC>:GitAdd .<CR>
nmap <leader>gaa :GitAdd .<CR>


" Open reviewboard on blameinformation.
function! GitReview()
  echom system("python ~/workspace/tools/gitview.py " . expand("<cword>"))
endfunction
nmap <leader>gr :call GitReview()<cr>

set wildignore+=*/tmp/*,*.so,*.swp

" Plugin - CtrlP
" set unlimited files
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](.git|.hg|.svn|build|_codegen)$',
  \ 'file': '\v\.(exe|so|dll|class|jar|war)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching = 1

nnoremap <leader>. :CtrlPTag<cr>

nnoremap <silent> <Leader>b :TagbarToggle<CR>


""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme             = 'luna'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
let g:Powerline_symbols         = 'fancy'
