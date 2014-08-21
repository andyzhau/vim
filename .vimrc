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

" builtin
Plugin 'ZoomWin'
Plugin 'ack.vim'

" features
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'andyzhau/eclim-vim'
Plugin 'bling/vim-airline'
Plugin 'edkolev/promptline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'fugitive.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'juneedahamed/svnj.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'pthrasher/conqueterm-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'

" language bundles
Plugin 'elzr/vim-json'
Plugin 'indentpython'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'syngan/vim-vimlint'
Plugin 'tfnico/vim-gradle'
Plugin 'ynkdir/vim-vimlparser'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" Basics - syntax, indent, search, etc. {{{

" syntax
syntax on

" turn off compatible
set nocompatible

" spell checking
set spell spelllang=en_us

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
set tags=tags;~/workspace/tags

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
nmap <silent> <leader>aa :qa!<CR>

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

" search
nmap <leader>/ :noh<CR>

" autocomplete
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <CR> ((pumvisible())?("\<Right>"):("\<CR>"))

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

" copy file path
:let @" = expand("%:p")

" }}}

" Language - Python {{{

autocmd Filetype python setl et ts=2 sw=2

" }}}

" Language - HTML {{{

autocmd FileType html setlocal foldmethod=indent

" }}}

" Language - Trailing Whitespace {{{

augroup prewrites
  autocmd!
  autocmd FileType c,cpp,java,javascript,php,python,groovy,vim autocmd BufWritePre * silent! :%s/\s\+$//e | silent! %s#\($\n\s*\)\+\%$##
augroup END

" }}}

" Language - Javascript, JSON {{{

autocmd BufNewFile,BufRead *.pdsc set filetype=json

" }}}

" Language - Java {{{

" }}}

" Language - Coffeescript {{{

nmap <leader>cp :CoffeeCompile<SPACE>vert<CR>

" }}}

" Plugin - NERDTree {{{

nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>ff :NERDTreeToggle<cr>
nnoremap <leader>ft :NERDTree<cr>

let NERDTreeIgnore = ['\.pyc$']

" }}}

" Plugin - NERDCommenter {{{

let g:NERDShutUp                = 1
let g:NERDSpaceDelims           = 1
let g:NERDMapleader             = ',c'

" }}}

" Plugin - Tagbar {{{

let g:tagbar_ctags_bin          = '/usr/bin/ctags'

nnoremap <silent> <leader>x :TagbarToggle<CR>

" }}}

" Plugin - Ctrlp {{{

let g:ctrlp_max_files           = 0
let g:ctrlp_custom_ignore       = {
  \ 'dir':  '\v[\/](.git|.hg|.svn|build|_codegen|tmp)$',
  \ 'file': '\v\.(exe|so|dll|class|jar|war|pyc|pyo|pyd)$',
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

" Plugin - Gundo {{{

nmap <leader>u :GundoToggle<CR>

" }}}

" Plugin - Signify {{{

let g:signify_disable_by_default = 1

highlight link SignifySignAdd    DiffAdd
highlight link SignifySignChange DiffChange
highlight link SignifySignDelete DiffDelete

highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" }}}

" Plugin - Tabular {{{

nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" }}}

" Plugin - EasyMotion {{{

" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase        = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" }}}

" Plugin - Syntastic {{{

let g:syntastic_debug                     = 0
let g:syntastic_enable_highlighting       = 0
let g:syntastic_error_symbol              = "✗"
let g:syntastic_warning_symbol            = "⚠"
let g:syntastic_style_error_symbol        = "✗"
let g:syntastic_style_warning_symbol      = "⚠"
let g:syntastic_check_on_open             = 0
let g:syntastic_echo_current_error        = 1
let g:syntastic_java_checkers             = ['checkstyle']
let g:syntastic_java_checkstyle_classpath = "~/.vim/libs/checkstyle/checkstyle-5.7-all.jar"
let g:syntastic_java_checkstyle_conf_file = "~/.vim/configs/sun_checks.xml"

" let g:syntastic_python_checkers           = ['pylint']
let g:syntastic_python_pylint_args        = '--indent-string="  "'

let g:syntastic_mode_map                  = { "mode": "passive",
                                            \ "active_filetypes": [],
                                            \ "passive_filetypes": [] }

" }}}

" Plugin - Svnj {{{

nmap <leader>b :SVNBlame<CR>

let g:svnj_warn_branch_log = 0
let g:svnj_window_max_size = 20

" }}}

" Plugin - Eclim {{{

set completeopt-=preview

let g:EclimCssIndentDisabled        = 1
let g:EclimFileTypeValidate         = 1
let g:EclimHtmlIndentDisabled       = 1
let g:EclimJavascriptIndentDisabled = 1
let g:EclimJavascriptLintEnabled    = 0
let g:EclimLoclistSignText          = "⚠"

" autocmd FileType java imap <buffer> <silent> <c-u> <c-x><c-u>

" autocmd FileType java imap <buffer> <silent> <c-i> <ESC>:JavaImport<CR>

" autocmd FileType java imap <buffer> <silent> <c-d> <ESC>:JavaDocComment<CR>

" autocmd FileType java vmap <buffer> <silent> <c-f> :JavaFormat<CR>

" autocmd FileType java imap <buffer> <silent> <c-o> <ESC>:JavaImportOrganize<CR>

" autocmd FileType java imap <buffer> <silent> <c-/>d <ESC>:JavaDelegate<CR>
" autocmd FileType java nmap <buffer> <silent> <c-/>d :JavaDelegate<CR>

" autocmd FileType java imap <buffer> <silent> <c-/>c <ESC>:JavaConstructor<CR>
" autocmd FileType java nmap <buffer> <silent> <c-/>c :JavaConstructor<CR>

" autocmd FileType java imap <buffer> <silent> <c-?> <ESC>:JavaCorrect<CR>
" autocmd FileType java nmap <buffer> <silent> <c-?> :JavaCorrect<CR>

" autocmd FileType java imap <buffer> <silent> <c-?>c <ESC>:JavaCallHierarchy!<CR>
" autocmd FileType java nmap <buffer> <silent> <c-?>c :JavaCallHierarchy!<CR>

" }}}

" Plugin - Ultisnips {{{

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger         = "<c-y>"
let g:UltiSnipsListSnippets          = "<c-l>"

let g:snips_author_email             = "andy@nodeswork.com"
let g:snips_author                   = "Yizhen Zhao"

" let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

let g:UltiSnipsEditSplit             = "vertical"

" }}}

" Plugin - Toggle mode {{{

function ToggleMode()
  execute "SyntasticToggleMode"
  call sy#toggle()
endfunction

nmap <silent> <leader>s :call ToggleMode()<CR>

" }}}

""" Plugin - YouCompleteMe {{{

let g:ycm_server_use_vim_stdout = 0
" let g:ycm_server_log_level      = 'debug'

""" }}}
