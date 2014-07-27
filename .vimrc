" vim:fdm=marker

" Environment {{{

" }}}

" Vundle Plugins {{{

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
Plugin 'EasyMotion'
Plugin 'Gundo'
Plugin 'Syntastic'
Plugin 'Tagbar'
Plugin 'The-NERD-Commenter'
Plugin 'ZoomWin'
Plugin 'ack.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'fugitive.vim'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdtree'
Plugin 'surround.vim'

Plugin 'edkolev/promptline.vim'

" language bundles
Plugin 'indentpython'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tfnico/vim-gradle'
Plugin 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" Basics - syntax, indent, search, etc. {{{

" syntax
syntax on

" filetype
filetype on
filetype plugin on
filetype indent on

" leader key
let mapleader=','

" line number
set number
highlight CursorLineNR cterm=bold

" <c-p>, <c-n> complete range, exclude ctags
set complete-=t

" line limit
set colorcolumn=+1
set textwidth=80

" indent
set autoindent
set cindent
set expandtab
set shiftwidth=2
set tabstop=2

" search
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" ruler
set ruler

" disable swap file
set noswapfile

" allow to open new file when current is modified
set hidden

" undo
set undodir=~/.vimundo/
set undofile
set undolevels=50000

" fold
set foldlevel=1         "this is just what i use
set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

" make backspace work like most other apps
set backspace=2
set backspace=indent,eol,start

" show status bar when single tab
set laststatus=2

" show (partial) command in the last line of the screen.
set showcmd

" ctags
set tags=ctags;/;~/workspace/ctags

" ignore files
set wildignore+=*/tmp/*,*.so,*.swp

" highlight the current line use
set cursorline

" uncomment to highlight the current column use
" set cursorcolumn

" }}}

" UI {{{

" color theme, usually need to match the terminal theme
color solarized   " darkblue

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" }}}

" Key (re)mappings {{{

" file saving
imap <leader>w <ESC>:w<CR>
nmap <leader>w :w<CR>
vmap <leader>w <C-c>:w<CR>
nmap <leader>ww :w!<CR>

" quite
imap <silent> <leader>q <ESC>:q<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>a :qa<CR>

" window switch
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" split window
nmap <C-n> :vsplit<CR><C-w>l:e<SPACE>
nmap <C-t> :split<CR><C-w>j:e<SPACE>

" open current directory
imap <leader>d <ESC>:Ex<CR>
nmap <leader>d :Ex<CR>

" tabs and buffers
nnoremap <silent> -   :bprevious<CR>
nnoremap <silent> =   :bnext<CR>
" nnoremap <silent> bw  :bwipeout<CR>
" nnoremap <silent> b1  :bfirst<CR>
" nnoremap <silent> b2  :buffer 2<CR>
" nnoremap <silent> b3  :buffer 3<CR>
" nnoremap <silent> b4  :buffer 4<CR>
" nnoremap <silent> b5  :buffer 5<CR>
" nnoremap <silent> b6  :buffer 6<CR>
" nnoremap <silent> b7  :buffer 7<CR>
" nnoremap <silent> b8  :buffer 8<CR>
" nnoremap <silent> b9  :blast<CR>

nnoremap <silent> tl  :tabnext<CR>
nnoremap <silent> th  :tabprev<CR>
nnoremap <silent> t1  :tabfirst<CR>
nnoremap <silent> t2  :tabn 2<CR>
nnoremap <silent> t3  :tabn 3<CR>
nnoremap <silent> t4  :tabn 4<CR>
nnoremap <silent> t5  :tabn 5<CR>
nnoremap <silent> t6  :tabn 6<CR>
nnoremap <silent> t7  :tabn 7<CR>
nnoremap <silent> t8  :tabn 8<CR>
nnoremap <silent> t9  :tablast<CR>
nnoremap <silent> te  :tabedit<Space>
nnoremap <silent> tn  :tabnew<CR>
nnoremap <silent> tw  :tabclose<CR>

" }}}

" Language - Python {{{

autocmd Filetype python setl et ts=2 sw=2

" }}}

" Language - Trailing Whitespace {{{

autocmd FileType c,cpp,java,javascript,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e

" }}}

" Plugin - NERDTree {{{

nnoremap <leader>f :NERDTreeFind<cr>

" }}}

" Plugin - NERDCommenter {{{

let g:NERDShutUp                = 1
let g:NERDSpaceDelims           = 1
let g:NERDMapleader             = ',c'
let g:NERDAltComMap             = g:NERDMapleader.'A'  " Default: a
let g:NERDAppendComMap          = g:NERDMapleader.'a'  " Default: A

" }}}

" Plugin - Tagbar {{{

let g:tagbar_ctags_bin          = '/usr/bin/ctags'

nnoremap <silent> <leader>x :TagbarToggle<CR>

" }}}

" Plugin - Ctrlp {{{

let g:ctrlp_max_files           = 0
let g:ctrlp_custom_ignore       = {
  \ 'dir':  '\v[\/](.git|.hg|.svn|build|_codegen|tmp)$',
  \ 'file': '\v\.(exe|so|dll|class|jar|war)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching         = 1

nnoremap <leader>t :CtrlPTag<cr>

" }}}

" Plugin - Airline {{{

let g:airline_theme             = 'luna'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
let g:Powerline_symbols         = 'fancy'
let g:airline_theme             = 'solarized'

let g:airline#extensions#tabline#enabled = 1

" }}}
