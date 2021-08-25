" Vim configurations, put your own configurations under ~/.vimrc.local

" Environment {{{

" }}}

" vim-plug {{{
call plug#begin()
Plug 'tpope/vim-sensible'

set nocompatible              " be iMproved, required
filetype off                  " required

" features
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'henrik/vim-indexed-search'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree' ", { 'on': 'NERDTreeToggle' }
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'Chiel92/vim-autoformat'
Plug 'svermeulen/vim-easyclip'
Plug 'ruanyl/vim-sort-imports'
Plug 'vim-airline/vim-airline-themes'
" Plug 'Quramy/tsuquyomi'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'liuchengxu/vista.vim'

Plug 'samoshkin/vim-mergetool'
Plug 'junegunn/goyo.vim'
" Plug 'SirVer/ultisnips'

" Plug 'Valloric/YouCompleteMe'
" Plug 'troydm/zoomwintab.vim'
" Plug 'valloric/matchtagalways'
" Plug 'prettier/vim-prettier'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'amix/vim-zenroom2'

" Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'
Plug 'neoclide/npm.nvim', {'do' : 'npm install'}

" automatic closing of quotes, parenthesis, brackets, etc.
" Plug 'Raimondi/delimitMate'

" Plug 'Shougo/neomru.vim'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimshell.vim'
" Plug 'akhaku/vim-java-unused-imports'
" Plug 'andyzhau/html-highlight'
" Plug 'cskeeters/javadoc.vim'
" Plug 'edkolev/promptline.vim'
" Plug 'juneedahamed/svnj.vim'
" Plug 'kshenoy/vim-signature'
" Plug 'lukaszkorecki/CoffeeTags'
Plug 'majutsushi/tagbar'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'pthrasher/conqueterm-vim'
" Plug 'sudo.vim'
" Plug 'tpope/vim-classpath'

" colorthemes
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/vim-easy-align'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
" Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/eleline.vim'
Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'felixhummel/setcolors.vim'

" language bundles
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'chase/vim-ansible-yaml'
Plug 'chrisbra/csv.vim'
Plug 'coachshea/jade-vim'
Plug 'digitaltoad/vim-pug'
Plug 'elubow/cql-vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'hynek/vim-python-pep8-indent'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'motus/pig.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'solarnz/thrift.vim'
Plug 'syngan/vim-vimlint'
Plug 'tfnico/vim-gradle'
" Plug 'tpope/vim-markdown'
Plug 'ynkdir/vim-vimlparser'
" Plug 'hail2u/vim-css3-syntax'
Plug 'elixir-editors/vim-elixir'

Plug 'leafgarland/typescript-vim'
" yats.vim is faster than typescript-vim
" Plug 'HerringtonDarkholme/yats.vim'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
call plug#end()
filetype plugin indent on    " required

" }}}

" Basics - syntax, indent, search, etc. {{{

" syntax
syntax on

" turn off compatible
set nocompatible

" spell checking
" set spell spelllang=en_us

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

" Clipboard
" set clipboard=unnamedplus
" set clipboard=unnamed,unnamedplus
set clipboard^=unnamed,unnamedplus

" yank to clipboard
" if has("clipboard")
" set clipboard=unnamed " copy to the system clipboard

" if has("unnamedplus") " X11 support
" set clipboard+=unnamedplus
" endif
" endif

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

" always show signcolumns
set signcolumn=yes

" ctags
set tags=tags;~/workspace/tags

" ignore files
set wildignore+=*/tmp/*,*.so,*.swp

" highlight the current line use
set cursorline

" if !has('nvim')
" set viminfo+=~/.vim/viminfo
" endif

" uncomment to highlight the current column use
" set cursorcolumn

" sessions
let g:session_dir = '~/.vim/sessions'
exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '/<C-R>=expand("%:.:s?/.*??.")<CR>.vim<C-D>'
exec 'nnoremap <Leader>sr :so ' . g:session_dir. '/<C-R>=expand("%:.:s?/.*??.")<CR>.vim<C-D>'

function BeforeQuit()
  if bufwinnr("coc-explorer") > 0
    execute 'CocCommand explorer'
    execute 'sleep 200m'
  endif
endfunction

function BeforeEnter()
  execute 'CocCommand explorer --no-toggle'
  execute 'sleep 1000m'
  " let l:answer = nr2char(getchar())
  execute 'wincmd ='
  if bufexists(1)
    for l in range(1, bufnr('$'))
      " echo bufwinnr(l)
      " if bufwinnr(l) == -1
        " exec 'sbuffer ' . l
      " endif
    endfor
  endif
endfunction

" Save session on quitting Vim
autocmd VimLeave * call BeforeQuit()
autocmd VimLeave * exec 'mks! ' . g:session_dir . '/' . expand("%:.:s?/.*??.") . '.vim'

" Restore session on starting Vim
" autocmd VimEnter * exec 'sleep 100m'
" autocmd VimEnter * exec ':so ' . g:session_dir. '/' . expand("%:.:s?/.*??.") . '.vim'
" autocmd VimEnter * call BeforeEnter()

" }}}

" UI {{{

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" let ayucolor="mirage"
" color ayu

let g:dracula_italic = 0
color dracula

" color theme, usually need to match the terminal theme
" set background=dark
" color solarized
" color Monokai
" color darkblue

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=194 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Preview location
" set splitbelow

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
" nmap <silent> <leader>a :qa<CR>
nmap <silent> <leader>aa :qa!<CR>

" window switch
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
" nmap <C-j> <C-w>j
" nmap <C-k> <C-w>k

" split window
nmap <C-n> :vsplit<CR><C-w>l
nmap <C-t> :split<CR><C-w>j

" Quick close other window
nmap <silent> <leader>kq <C-w>k:q<CR>
nmap <silent> <leader>lq <C-w>l:q<CR>
nmap <silent> <leader>hq <C-w>h:q<CR>

" open current directory
imap <leader>d <ESC>:Ex<CR>
nmap <leader>d :Ex<CR>

" open current directory
imap <leader>e <ESC>:e<CR>
nmap <leader>e :e<CR>

" search
nmap <leader>/ :noh<CR>

" autocomplete
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <CR> ((pumvisible())?("\<Right>"):("\<CR>"))

" tabs and buffers
nnoremap <silent> <leader>bh   :bprevious<CR>
nnoremap <silent> <leader>bl   :bnext<CR>
nnoremap <silent> <leader>bw  :bwipeout<CR>
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

" settings

set pastetoggle=<leader>sp

nmap <leader>sn :set number! number?<cr>

" line ending
imap <leader>; <ESC><s-A>;
nmap <leader>; <s-A>;<ESC>

" }}}

" Language TypeScript {{{

autocmd BufNewFile,BufRead *.ts set filetype=typescript

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = '--lib es2017'

let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_disable_default_mappings = 1
let g:tsuquyomi_completion_detail = 1

" autocmd FileType typescript setlocal completeopt+=menu,preview
" autocmd FileType typescript nnoremap <buffer> <c-]> :TsuDefinition<CR>
" autocmd FileType typescript nnoremap <buffer> <c-[> :TsuSplitDefinition<CR>
" autocmd FileType typescript nnoremap <buffer> <c-f> :TsuQuickFix<CR>

" }}}

" Language Scala {{{

au BufRead,BufNewFile *.sbt set filetype=scala

autocmd FileType python let b:coc_root_patterns = ['.git']

" }}}

" Language Vim {{{

autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal nospell

" }}}

" Language - Python {{{

autocmd Filetype python setlocal et ts=2 sw=2
autocmd FileType python setlocal foldmethod=indent

" }}}

" Language - HTML/XML {{{

autocmd FileType html,xml setlocal foldmethod=indent
autocmd FileType xml setlocal nospell

autocmd Filetype html setlocal textwidth=120

autocmd BufWrite *.html :Autoformat

" }}}

" Language - Trailing Whitespace {{{

augroup prewrites
	autocmd!
	autocmd FileType c,coffee,typescript,cpp,java,javascript,php,python,groovy,vim autocmd BufWritePre * silent! :%s/\s\+$//e | silent! %s#\($\n\s*\)\+\%$##
augroup END

" }}}

" Language - Javascript, JSON {{{

autocmd BufNewFile,BufRead *.pdsc set filetype=json
autocmd BufNewFile,BufRead *.avsc set filetype=json
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/Uber/*.js setlocal ts=4 sw=4
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/gocode/*.js setlocal ts=4 sw=4
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/Uber/*.json setlocal ts=4 sw=4
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/gocode/*.json setlocal ts=4 sw=4
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/Uber/*.thrift setlocal ts=4 sw=4
autocmd BufRead,BufNewFile,BufEnter /Users/yizhen/gocode/*.thrift setlocal ts=4 sw=4

" }}}

" Language - Java {{{

" autocmd Filetype java setlocal omnifunc=eclim#php#complete#CodeComplete
autocmd Filetype java setlocal textwidth=120

" }}}

" Language - Markdown {{{

autocmd Filetype markdown setlocal textwidth=160

" }}}

" Language - Pug {{{

autocmd Filetype pug setlocal textwidth=120

" }}}

" Language - Coffeescript {{{

" nmap <leader>cp :CoffeeCompile<SPACE>vert<CR>
" autocmd FileType coffee setlocal foldmethod=indent

" }}}

" Language - Typecript {{{

autocmd FileType typescript nmap <leader>ch :e<SPACE><C-R>=expand('%:r')<CR>.html<CR>
autocmd FileType typescript nmap <leader>cs :e<SPACE><C-R>=expand('%:r')<CR>.scss<CR>
autocmd FileType typescript nmap <leader>ct :e<SPACE><C-R>=expand('%:r')<CR>.ts<CR>

" }}}

" Language - Pig {{{

autocmd Filetype pig setlocal textwidth=0

" }}}

" Language - zip {{{

au BufRead,BufNewFile *.apk,*.war,*.ear,*.sar,*.rar set filetype=tar

" }}}

" Language - CoffeeScript {{{

" vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
" map <leader>c :CoffeeCompile<CR>
" }}}

" Language - go {{{

let g:go_def_mapping_enabled = 0

" autocmd FileType go nnoremap <c-i> :GoImport <c-r><c-w><CR>

" }}}

" Plugin - NERDTree {{{

" nnoremap <leader>f :NERDTreeFind<cr>
" nnoremap <leader>ff :NERDTreeToggle<cr>
" nnoremap <leader>ft :NERDTree<cr>

" let NERDTreeIgnore = ['\.pyc$', 'deps[[dir]]', '_build[[dir]]', 'node_modules[[dir]]', '^.git[[dir]]', 'public\/[[dir]]', 'bower_components[[dir]]']

" let NERDTreeWinSize = 46
" }}}

" Plugin - NERDCommenter {{{

let g:NERDShutUp                = 1
let g:NERDSpaceDelims           = 1
let g:NERDMapleader             = ',c'

" }}}

" Plugin - COC {{{

" <CR> to confirm completion, use:
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"



" To make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, use:

" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
" \: "\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" -----------
" Map <tab> for trigger completion, completion confirm, snippet expand and jump
" like VSCode.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" ------------

" Remap for do codeAction of selected region
" function! s:cocActionsOpenFromSelected(type) abort
  " execute 'CocCommand actions.open ' . a:type
" endfunction
" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" vmap <leader>s <Plug>(coc-codeaction-selected)
" nmap <leader>s <Plug>(coc-codeaction-selected)
" nmap <leader>aw :CocAction('runCommand', 'cSpell.addWordToUserDictionary')
" nmap <leader>ai :CocAction('runCommand', 'cSpell.addIgnoreWordToUser')

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)

autocmd FileType typescript,elixir,html,css,scala nmap <buffer> <c-]> <Plug>(coc-definition)
autocmd FileType typescript,elixir,html,css,scala nmap <buffer> <c-]>k :split<CR><Plug>(coc-definition)
autocmd FileType typescript,elixir,html,css,scala nmap <buffer> <c-]>l :vsplit<CR><Plug>(coc-definition)

nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@

function! s:GrepFromSelected(type)
	let saved_unnamed_register = @@
	if a:type ==# 'v'
		normal! `<v`>y
	elseif a:type ==# 'char'
		normal! `[v`]y
	else
		return
	endif
	let word = substitute(@@, '\n$', '', 'g')
	let word = escape(word, '| ')
	let @@ = saved_unnamed_register
	execute 'CocList grep '.word.' -W'
endfunction`]`

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

nmap <leader>cr :CocListResume<CR>

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep -W'<CR>

" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>

set cot+=preview

nmap a7 :%s%\('.*a7/\\|'.*projects/@ark7/\)%'@ark7/%g<CR>

nnoremap <leader>j :call coc#float#scroll(1)<CR>
nnoremap <leader>k :call coc#float#scroll(0)<CR>
" }}}

" Plugin - COC - Scala {{{

autocmd FileType scala let b:coc_root_patterns = ['.git', '.sbt']

" }}}

" Plugin - COC - Yank {{{

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" }}}

" Plugin - COC - explorer {{{

nmap <leader>f :CocCommand explorer --no-toggle<CR>

" }}}

" Plugin - COC - SmartF {{{

" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end
" }}}

" Plugin - COC - Prettier {{{

vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)
"
" }}}

" Plugin - COC - Git {{{

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
" nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>

" }}}

" Plugin - Tagbar {{{

let g:tagbar_ctags_bin          = '/usr/local/bin/ctags'

let g:tagbar_autofocus = 1

nnoremap <silent> <leader>x :TagbarToggle<CR>
nnoremap <silent> <leader>tj :TagbarOpen j<CR>

let g:tagbar_type_coffee = {
			\ 'ctagstype' : 'coffee',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 'm:methods',
			\ 'f:functions',
			\ 'v:variables',
			\ 'f:fields',
			\ ]
			\ }

let g:tagbar_type_elixir = {
			\ 'ctagstype' : 'elixir',
			\ 'kinds' : [
			\ 'p:protocols',
			\ 'm:modules',
			\ 'e:exceptions',
			\ 'y:types',
			\ 'd:delegates',
			\ 'f:functions',
			\ 'c:callbacks',
			\ 'a:macros',
			\ 't:tests',
			\ 'i:implementations',
			\ 'o:operators',
			\ 'r:records'
			\ ],
			\ 'sro' : '.',
			\ 'kind2scope' : {
			\ 'p' : 'protocol',
			\ 'm' : 'module'
			\ },
			\ 'scope2kind' : {
			\ 'protocol' : 'p',
			\ 'module' : 'm'
			\ },
			\ 'sort' : 0
			\ }

let g:tagbar_type_typescript = {
			\ 'ctagstype': 'typescript',
			\ 'kinds': [
			\ 'c:class',
			\ 'n:namespace',
			\ 'f:function',
			\ 'G:generator',
			\ 'v:variable',
			\ 'm:method',
			\ 'p:property',
			\ 'i:interface',
			\ 'g:enum',
			\ 't:type',
			\ 'a:alias',
			\ ],
			\'sro': '.',
			\ 'kind2scope' : {
			\ 'c' : 'class',
			\ 'n' : 'namespace',
			\ 'i' : 'interface',
			\ 'f' : 'function',
			\ 'G' : 'generator',
			\ 'm' : 'method',
			\ 'p' : 'property',
			\},
			\ }

" let g:tagbar_type_typescript = {
" \ 'ctagsbin' : 'tstags',
" \ 'ctagsargs' : '-f-',
" \ 'kinds': [
" \ 'e:enums:0:1',
" \ 'f:function:0:1',
" \ 't:typealias:0:1',
" \ 'M:Module:0:1',
" \ 'I:import:0:1',
" \ 'i:interface:0:1',
" \ 'C:class:0:1',
" \ 'm:method:0:1',
" \ 'p:property:0:1',
" \ 'v:variable:0:1',
" \ 'c:const:0:1',
" \ ],
" \ 'sort' : 0
" \ }
" }}}

" Plugin - Ctrlp {{{

let g:ctrlp_max_files           = 0
let g:ctrlp_custom_ignore       = {
			\ 'dir': '\v[\/](.git|.hg|.svn|build|_codegen|tmp|_build|deps|node_modules|bower_components|public|doc|dist|coverage|integTest|target)$',
			\ 'file': '\v\.(exe|so|dll|class|jar|war|pyc|pyo|pyd)$',
			\ 'link': 'some_bad_symbolic_links',
			\ }
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching         = 1
let g:ctrlp_switch_buffer       = 'et'

nnoremap <leader>t :CtrlPTag<cr>

" }}}

" Plugin - Airline {{{

let g:airline_theme             = 'luna'
let g:airline_powerline_fonts   = 1
let g:Powerline_symbols         = 'fancy'
let g:airline_theme             = 'solarized'

let g:airline#extensions#branch#enabled          = 1
let g:airline#extensions#syntastic#enabled       = 1
let g:airline#extensions#tabline#enabled         = 1
let g:airline#extensions#tabline#fnamemod        = ':s?/.*/?/../?.'
let g:airline#extensions#tabline#fnamecollapse   = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" }}}

" Plugin - Eleline {{{
set laststatus=2
" }}}

" Plugin - Gundo {{{

let g:gundo_prefer_python3 = 1
nmap <leader>u :GundoToggle<CR>

" }}}

" Plugin - MatchTagAlways {{{

highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

" }}}

" Plugin - Signify {{{

" let g:signify_disable_by_default = 1

highlight link SignifySignAdd    DiffAdd
highlight link SignifySignChange DiffChange
highlight link SignifySignDelete DiffDelete

highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" }}}

" Plugin - Tabular {{{

nmap <Leader>t= :Tabularize /^[^=]*<CR>
vmap <Leader>t= :Tabularize /^[^=]*<CR>
nmap <Leader>t: :Tabularize /: \zs<CR>
vmap <Leader>t: :Tabularize /: \zs<CR>
nmap <Leader>tf :Tabularize /from<CR>
vmap <Leader>tf :Tabularize /from<CR>

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

" Plugin - fugitive {{{

nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Gpush --follow-tags<CR>
nmap <silent> <Leader>gaa :Git add --all<CR>
" }}}

" Plugin - EasyMotion {{{

" Gif config
nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase        = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" }}}

" Plugin - ale {{{
"
let g:ale_proto_protoc_gen_lint_options = '-I /Users/yz/workspace/ark7-events/src/proto -I /Users/yz/workspace/data-proc/projects/protos/src/main/protobuf'

let g:ale_lint_delay = 200
" let g:ale_lint_on_text_changed = 'normal'
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
			\   'javascript': [],
			\   'typescript': [],
			\   'elixir': [],
			\   'html': [],
			\   'css': [],
			\   'scss': [],
			\   'rubya': [],
			\   'ruby': [],
      \   'scala': [],
			\}

let g:ale_elixir_elixir_ls_config = {
			\   'elixirLS': {
			\     'dialyzerEnabled': v:false,
			\   },
			\}

" }}}

" Plugin - Syntastic {{{

let g:syntastic_debug                     = 0
let g:syntastic_enable_highlighting       = 0
let g:syntastic_error_symbol              = "✗"
let g:syntastic_warning_symbol            = "⚠"
let g:syntastic_style_error_symbol        = "✗"
let g:syntastic_style_warning_symbol      = "⚠"
let g:syntastic_check_on_open             = 1
let g:syntastic_echo_current_error        = 1
let g:syntastic_check_on_wq               = 0

let g:syntastic_java_checkers             = [ ]
" " let g:syntastic_java_checkstyle_classpath = "~/.vim/libs/checkstyle/checkstyle-5.7-all.jar"
" " let g:syntastic_java_checkstyle_conf_file = "~/.vim/configs/sun_checks.xml"

" " let g:syntastic_python_checkers           = ['pylint']
" let g:syntastic_python_pylint_args        = '--indent-string="  "'

let g:syntastic_mode_map                  = { "mode": "active",
			\ "active_filetypes": [],
			\ "passive_filetypes": [ "typescript" ] }

" let g:syntastic_typescript_checkers = [ 'tsuquyomi' ]
let g:syntastic_typescript_checkers = [ ]
let g:syntastic_javascript_checkers = [ ]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:syntastic_html_tidy_ignore_errors = ["is not recognized", "discarding unexpected"]
let g:syntastic_html_checkers           = []
let g:syntastic_vim_checkers            = []

" }}}

" Plugin - Goyo {{{

let g:goyo_width = 82
nnoremap <silent> <leader>z :Goyo<cr>

function! s:goyo_enter()
endfunction

function! s:goyo_leave()
endfunction

" }}}

" Plugin - tsuquyomi {{{

let g:tsuquyomi_shortest_import_path = 1
let g:tsuquyomi_single_quote_import = 1
let g:tsuquyomi_case_sensitive_imports = 1

autocmd FileType typescript nnoremap <leader>i :TsuImport<CR>
" autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

" }}}

" Plugin - Svnj {{{

nmap <leader>b :SVNBlame<CR>

let g:svnj_warn_branch_log = 0
let g:svnj_window_max_size = 20

" }}}

" Plugin - Ultisnips {{{

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsListSnippets          = "<c-l>"

let g:UltiSnipsExpandTrigger        = "<tab>"
let g:UltiSnipsJumpForwardTrigger   = "<tab>"
let g:UltiSnipsJumpBackwardTrigger  = "<s-tab>"

" Put these configs into ~/.vimrc.local
" let g:snips_author_email             = "andy@nodeswork.com"
" let g:snips_author                   = "Yizhen Zhao"

" let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

let g:UltiSnipsEditSplit             = "vertical"

" }}}

" Plugin - Toggle mode {{{

" function ToggleMode()
" execute "SyntasticToggleMode"
" call sy#toggle()
" endfunction

" nmap <silent> <leader>s :call ToggleMode()<CR>

" }}}

" Plugin - YouCompleteMe {{{

let g:ycm_server_use_vim_stdout    = 0
let g:ycm_server_log_level         = 'debug'
let g:ycm_server_keep_logfiles     = 1
let g:ycm_enable_diagnostic_signs  = 1
let g:ycm_show_diagnostics_ui      = 0

if !exists("g:ycm_semantic_triggers")
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" set completeopt-=preview
" set completeopt-=menu

let g:ycm_filetype_specific_completion_to_disable = { 'javascript': 1 }

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" }}}

" Plugin - JavaImp {{{

" Run from commandline:
" find "$HOME/workspace" | grep build |  grep -e ".classpath$"  | xargs cat | tr ':' '\n' | sort | uniq | tr '\n' ':' > ~/vim/JavaImp/jars"

let cmd = "cat " . $HOME . "/vim/JavaImp/jars"
let g:JavaImpPaths = system(cmd)
let g:JavaImpPaths .= ":" . $HOME . "/vim/JavaImp/jmplst/jdk.jmplst"


let g:JavaImpPathSep = ':'
let g:JavaImpDataDir = $HOME . "/vim/JavaImp"
let g:JavaImpTopImports = [
			\ 'android\..*',
			\ 'java\..*',
			\ 'javax\..*',
			\ 'org\..*',
			\ 'voldemort\..*',
			\ 'com\.google\..*',
			\ 'com\..*',
			\ ]
let g:JavaImpStaticImportsFirst = 1
let g:JavaImpSortPkgSep = 1

" let g:JavaImpDocViewer = "lynx"
let g:JavaImpDocViewer = "w3m"
let g:JavaImpDocPaths =
			\ $HOME . "/vim/JavaImp/docs/api:" .
			\ $HOME . "/Library/Android/sdk/docs/reference"

" }}}

" Plugin - javadoc.vim {{{

let g:javadoc_path =
			\ $HOME . "/vim/JavaImp/docs/api:" .
			\ $HOME . "/Library/Android/sdk/docs/reference"

" }}}

" Plugin - Unite {{{

nnoremap <leader>t :Unite buffer file_rec<CR>

" }}}

" Plugin - Easyclip {{{

" use gm for 'add mark' instead of m
nnoremap gm m

let g:EasyClipShareYanks = 1
" let g:EasyClipAutoFormat = 1

" let g:EasyClipUseSubstituteDefaults = 1

" let g:EasyClipUsePasteToggleDefaults = 0

" nmap <c-f> <plug>EasyClipSwapPasteForward
" nmap <c-d> <plug>EasyClipSwapPasteBackwards

" }}}

" Plugin = VimAutoformat {{{

let g:formatdef_htmlbeautify = '"html-beautify --indent-size=2 --wrap-attributes=force-aligned --wrap-line-length=121"'
let g:formatters_html = ['htmlbeautify']

" let g:formatdef_prettier = '"prettier --parser=typescript --single-quote --trailing-comma=all"'
" let g:formatters_typescript = ['prettier']

" let g:autoformat_verbosemode=1
" let verbose=1

nnoremap <leader>py :Autoformat<CR>

" }}}

" Plugin - NeoComplete {{{
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" }}}

" Plugin - MultipleCursors {{{

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-e>'
let g:multi_cursor_prev_key='<C-.>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" }}}

" Plugin - ack {{{

nnoremap <leader>sc :Ack<SPACE><C-R><C-W><SPACE><C-R>=expand('%:.:s?/.*?/?.')<CR><CR>

" }}}

" Plugin - gitgutter {{{

set updatetime=100
let g:gitgutter_max_signs = 500
let g:gitgutter_async = 1

" }}}

" Plugin - fugitive {{{

nmap <leader>gs :Gstatus<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gaa :Git add --all<CR>

" }}}

" Plugin - prettier {{{

" nmap <Leader>py <Plug>(Prettier)
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#exec_cmd_async = 1

" }}}

" Plugin - mergetool {{{

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" }}}

" Plugin - vim-sort-imports {{{
"
let g:import_sort_auto = 1

autocmd FileType typescript nnoremap <buffer> <leader>si :SortImport<CR>

" }}}

" Plugin - SetColors {{{

" nnoremap <C-Y> :call NextColor(1)<CR>
" nnoremap <C-B> :call NextColor(-1)<CR>
" }}}

" Tail - source .vimrc.local {{{

if filereadable(glob("~/.vimrc.local"))
	source ~/.vimrc.local
endif

" }}}

" Below - {{{
hi Search cterm=NONE ctermfg=grey ctermbg=blue
" }}}


" Test {{{
augroup vimrc_autocmd
	autocmd!
	"toggle quickfix window
	autocmd BufReadPost quickfix map <buffer> <leader>qq :cclose<cr>|map <buffer> <c-p> <up>|map <buffer> <c-n> <down>

	autocmd FileType unite call s:unite_settings()
	" obliterate unite buffers (marks especially).
	autocmd BufLeave \[unite\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif

	" Jump to the last position when reopening a file
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

	" ...etc...
augroup END
" }}}
