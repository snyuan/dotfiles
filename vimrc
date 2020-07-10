set nocompatible                " be iMproved " This must be first, because it changes other options as a side effect.
scriptencoding utf-8

" A bit faster than $SHELL (zsh).
set shell=/bin/sh

let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'


function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction

function! BuildTern(info)
  if a:info.status == 'installed' || a:info.force
    !npm install
  endif
endfunction

function! Installjshint(info)
  if a:info.status == 'installed' || a:info.force
    !npm install -g jshint
  endif
endfunction


filetype off                    " required!

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
filetype plugin indent on                " required
    "my Plug here:
    "
    " original repos on github
    "
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'yianwillis/vimcdoc'  "中文帮助文档

    Plug 'jiangmiao/auto-pairs'
    "Plug 'Valloric/ListToggle'
    " Plug 'SirVer/ultisnips'
    Plug 't9md/vim-quickhl'
    "..................................
    " vim-scripts repos
    Plug 'vim-scripts/YankRing.vim'
    Plug 'vim-scripts/vcscommand.vim'
    Plug 'vim-scripts/ShowPairs'
    Plug 'vim-scripts/SudoEdit.vim'
    Plug 'vim-scripts/EasyGrep'
    Plug 'vim-scripts/VOoM'
    Plug 'vim-scripts/VimIM'
    Plug 'vim-scripts/JavaScript-syntax'
    Plug 'vim-scripts/jQuery'
    Plug 'vim-scripts/Markdown'
    Plug 'vim-scripts/Markdown-syntax'
    Plug 'vim-scripts/snipmate-snippets'
    "..................................
    " non github repos
    " Plug 'git://git.wincent.com/command-t.git'
    "......................................
    "Plug 'wincent/command-t'
    " FZF is another fuzzy file search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'crusoexia/vim-monokai' " Monokai colorschema
    Plug 'nanotech/jellybeans.vim' " A colorful, dark color scheme,
    Plug 'othree/html5.vim'
    Plug 'groenewege/vim-less'
    Plug 'ap/vim-css-color'
    Plug 'kchmck/vim-coffee-script'
    Plug 'csexton/trailertrash.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'

    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-haml'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-pathogen'
    Plug 'tpope/vim-sleuth'
    Plug 'bitc/vim-bad-whitespace'
    Plug 'tomtom/tlib_vim'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'pangloss/vim-javascript'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'Raimondi/delimitMate'
    Plug 'tomtom/tcomment_vim'
    Plug 'jshint/jshint'
    " Plug 'Shutnik/jshint2.vim'
    " Plug 'mattn/gist-vim'
    " Plug 'mattn/webapi-vim'
    Plug 'elzr/vim-json'
    Plug 'digitaltoad/vim-jade'
    Plug 'moll/vim-node'
    Plug 'gioele/vim-autoswap'
    Plug 'gavinbeatty/dragvisuals.vim'
    Plug 'rking/ag.vim'
    Plug 'mileszs/ack.vim'
    Plug 'juneedahamed/svnj.vim'
    Plug 'majutsushi/tagbar'
    Plug 'ternjs/tern_for_vim', { 'do': function('BuildTern') }
    " Plug 'vim-scripts/dbext.vim'
    " Plug 'python_fold_compact'
    Plug 'lfv89/vim-interestingwords'
    Plug 'leafgarland/typescript-vim'  "Typescript IDE
    Plug 'Quramy/tsuquyomi'  "Typescript IDE
    " below must install :pip3 install pylint
    Plug 'dense-analysis/ale' " Asynchronous Lint Engine
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'nvie/vim-flake8'
    Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
    Plug 'scrooloose/syntastic', { 'do': function('Installjshint') }
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
    Plug 'davidhalter/jedi-vim'
    Plug 'ervandew/supertab'
    Plug 'tweekmonster/impsort.vim'
    Plug 'frazrepo/vim-rainbow'  " show bracket pair in color

" Initialize plugin system
call plug#end()


" Accessing the system clipboard share clipboard with system
set clipboard=unnamedplus
set guifont=Monaco:h9
set gfw=YaHei\ Consolas\ Hybrid:h9
set guifont=Consolas:h12
set guifont=YaHei\ Consolas\ Hybrid:h12
set guifont=Yahei\ Mono:h12"

"neovim"
set hidden
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set softtabstop=4
set shiftwidth=4        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=10       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

set cursorline
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"https://gist.github.com/ayosec/4076380
" When the cursor is hold on a word, that word is highlighted.
" " When the cursor is moving, the highlight is hidden
set updatetime=300
au! CursorMoved * set nohlsearch
au! CursorHold * set hlsearch | let @/='\<'.expand("<cword>").'\>'
set hlsearch            " Highlight search results.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"vim
set nu
set ts=4                            "tab stop 4
set autoindent
set smartindent                     "use smart indenting
set bs=2                            "allow backspace in insert mode
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
syntax enable                       "enable syntax highlighting
syntax on                           "enable syntax highlighting
set wmh=0                           "set min window height
set hls                             "use highlight search
set exrc                            "enable per-directory .vimrc files
set secure                          "disable unsafe commands in local .vimrc files
set laststatus=2
set encoding=utf-8
set wrap
set foldmethod=indent
set foldlevelstart=20

let python_highlight_all=1

set runtimepath^=~/.vim/bundle/ag.vim

set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo
set cursorcolumn
set mouse=a " remove '-' before '=' if want to disable mouse select
map <silent> fd :set mouse=a<CR>
map <silent> ff :set mouse-=a<CR>


set wildmode=longest,list
set wildmenu

colorscheme desert256
colorscheme wombat
colorscheme synic
colorscheme monokai
colorscheme jellybeans
set background=dark    " Setting dark mode
" autocmd ColorScheme janah highlight Normal ctermbg=235
" colorscheme janah

" pymode python-mode setting {{{
    " override go-to.definition key shortcut to ctrl-]
    let g:pymode_rope_goto_definition_bind = "<c-]>"

    " override run current python file key shortcut to ctrl-shift-e
    let g:pymode_run_bind = "<c-s-e>"

    " override view python doc key shortcut to ctrl-shift-d
    let g:pymode_doc_bind = "<c-s-d>"
    let g:pymode_lint_config = '$HOME/.pylint.rc'
    let g:pymode_options_max_line_length = 120

    let g:pymode_options = 0              " do not change relativenumber
    let g:pymode_indent = 0               " use vim-python-pep8-indent (upstream of pymode)
    let g:pymode_lint = 0                 " prefer syntastic; pymode has problems when PyLint was invoked already before VirtualEnvActivate..!?!
    let g:pymode_virtualenv = 0           " use virtualenv plugin (required for pylint?!)
    let g:pymode_doc = 0                  " use pydoc
    let g:pymode_rope_completion = 0      " use YouCompleteMe instead (python-jedi)
    let g:pymode_syntax_space_errors = 0  " using MyWhitespaceSetup
let g:pymode_trim_whitespaces = 0
    let g:pymode_debug = 0
    let g:pymode_rope = 0

    let g:pydoc_window_lines=0.5          " use 50% height
    let g:pydoc_perform_mappings=0
hi pythonSelf  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
" }}}

" impSort
" autocmd BufWritePre *.py ImpSort!  " sort improt of python automatically on save
nnoremap <leader>is :<c-u>ImpSort!<cr>

autocmd FileType python set colorcolumn=120
" below need to :  pip3 install yapf  ; yapf doesn't work now, so comment out
" autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
highlight OverLength ctermbg=yellow ctermbg=white guibg=#59F929
match OverLength /\%121v.\+/

let mapleader = ' '
let maplocalleader="\<space>"

" jedi-vim (besides YCM with jedi library) {{{1
    let g:jedi#use_tabs_not_buffers = 0 " 0: jump to buffer, 1 : jump to tab
    let g:jedi#goto_command = "<leader>d"
    " let g:jedi#goto_assignments_command = "<leader>l"
    let g:jedi#goto_stubs_command = "<leader>s"
    let g:jedi#completions_command = "<leader>m"

  " let g:jedi#force_py_version = 3
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#goto_assignments_command = ''  " dynamically done for ft=python.
  let g:jedi#goto_definitions_command = ''  " dynamically done for ft=python.
  let g:jedi#rename_command = "<leader>r"
  let g:jedi#usages_command = "<leader>n"
  let g:jedi#completions_enabled = 1

  " Manually setup jedi's call signatures.
  let g:jedi#show_call_signatures = 1
  if &rtp =~ '\<jedi\>'
    augroup JediSetup
      au!
      au FileType python call jedi#configure_call_signatures()
    augroup END
  endif

    let g:jedi#auto_close_doc = 1
    if g:jedi#auto_close_doc
        " close preview if its still open after insert
        autocmd insertleave <buffer> if pumvisible() == 0|pclose|endif
    end
  " }}}1

"jshint"
let g:syntastic_javascript_checkers = ['']
" let g:syntastic_javascript_checkers = ['jshint']

" Syntastic {{{2
      set statusline+=%#warningmsg#
      set statusline+=%{SyntasticStatuslineFlag()}
      set statusline+=%*

      let g:syntastic_enable_signs=1
      let g:syntastic_check_on_open = 1
      let g:syntastic_check_on_wq=1  " Only for active filetypes.
      let g:syntastic_auto_loc_list=1
      let g:syntastic_always_populate_loc_list=1
      let g:syntastic_python_pylint_post_args="--max-line-length=120"
      " let g:syntastic_echo_current_error=0 " TEST: faster?!
      let g:syntastic_mode_map = {
            \ 'mode': 'passive',
            \ 'active_filetypes': ['ruby', 'php', 'lua', 'python', 'sh', 'zsh'],
            \ 'passive_filetypes': [] }
      let g:syntastic_error_symbol='✗'
      let g:syntastic_warning_symbol='⚠'
      let g:syntastic_aggregate_errors = 0
      let g:syntastic_python_checkers = ['python', 'frosted', 'flake8', 'pep8']

      " let g:syntastic_php_checkers = ['php']
      let g:syntastic_loc_list_height = 1 " handled via qf autocommand: AdjustWindowHeight

      " See 'syntastic_quiet_messages' and 'syntastic_<filetype>_<checker>_quiet_messages'
      " let g:syntastic_quiet_messages = {
      "       \ "level": "warnings",
      "       \ "type":  "style",
      "       \ "regex": '\m\[C03\d\d\]',
      "       \ "file":  ['\m^/usr/include/', '\m\c\.h$'] }
      let g:syntastic_quiet_messages = { "level": [], "type": ["style"] }

      fun! SyntasticToggleQuiet(k, v, scope)
        let varname = a:scope."syntastic_quiet_messages"
        if !exists(varname) | exec 'let '.varname.' = { "level": [], "type": ["style"] }' | endif
        exec 'let idx = index('.varname.'[a:k], a:v)'
        if idx == -1
          exec 'call add('.varname.'[a:k], a:v)'
          echom 'Syntastic: '.a:k.':'.a:v.' disabled (filtered).'
        else
          exec 'call remove('.varname.'[a:k], idx)'
          echom 'Syntastic: '.a:k.':'.a:v.' enabled (not filtered).'
        endif
      endfun
      command! SyntasticToggleWarnings call SyntasticToggleQuiet('level', 'warnings', "g:")
      command! SyntasticToggleStyle    call SyntasticToggleQuiet('type', 'style', "g:")
      command! SyntasticToggleWarningsBuffer call SyntasticToggleQuiet('level', 'warnings', "b:")
      command! SyntasticToggleStyleBuffer    call SyntasticToggleQuiet('type', 'style', "b:")

      fun! MySyntasticCheckAll()
        let save = g:syntastic_quiet_messages
        let g:syntastic_quiet_messages = { "level": [], 'type': [] }
        SyntasticCheck
        let g:syntastic_quiet_messages = save
      endfun
      command! MySyntasticCheckAll call MySyntasticCheckAll()

      " Source: https://github.com/scrooloose/syntastic/issues/1361#issuecomment-82312541
      function! SyntasticDisableToggle()
          if !exists('s:syntastic_disabled')
              let s:syntastic_disabled = 0
          endif
          if !s:syntastic_disabled
              let s:modemap_save = deepcopy(g:syntastic_mode_map)
              let g:syntastic_mode_map['active_filetypes'] = []
              let g:syntastic_mode_map['mode'] = 'passive'
              let s:syntastic_disabled = 1
              SyntasticReset
              echom "Syntastic disabled."
          else
              let g:syntastic_mode_map = deepcopy(s:modemap_save)
              let s:syntastic_disabled = 0
              echom "Syntastic enabled."
          endif
      endfunction
      command! SyntasticDisableToggle call SyntasticDisableToggle()
" }}}

highlight clear SignColumn

autocmd BufNewFile,BufRead *.mobile.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.mobile.erb set filetype=eruby
autocmd BufNewFile,BufRead .pryrc set filetype=ruby
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Gemfile.lock set filetype=ruby
autocmd BufNewFile,BufRead *.aspx set filetype=javascript
autocmd BufNewFile,BufRead *.ascx set filetype=javascript
autocmd BufNewFile,BufRead *.asmx set filetype=aspnet
autocmd BufNewFile,BufRead *.py set foldmethod=indent
" :au BufAdd,BufNewFile * nested tab sball   " To open each buffer in its own tabpage"

" NERDTree {{{
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']
" Nerdtree auto close and open Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" autocmd vimenter * NERDTree
" NERDTree git symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" }}}

" window
noremap wc <C-W>c " close current window split
"This maps ctrl+h and ctrl+l to moving between :vsplit windows
map <silent> <bs> <C-W>h
map <silent> <C-J> <C-W>j
map <silent> <C-K> <C-W>k
map <silent> <C-H> <C-W>h
map <silent> <C-L> <C-W>l
map <silent> <S-H> <C-W>H
map <silent> <S-L> <C-W>L
map <silent> <C-M> <C-W>_
map <silent> <C-=> <C-W>=
map <silent> <+> <C-W><S-=>
map <silent> <C-N> :silent noh<CR>
" map <silent> <C-T> :NERDTree <CR>
map <silent> gb :Gblame<CR>
map <silent> gc :Gcommit<CR>
map <silent> gC :Gcommit -a<CR>
map <silent> gl :gitv<CR>
map <silent> gs :Gstatus<CR>
" search the word in current register
nnoremap <silent> <leader>g  /<C-R>"<CR>

map <silent> <leader>sv :source ~/.vimrc<cr>
map <silent> <leader>ev :e ~/.vimrc<cr>
map <leader>p :!mkdir -p %:p:h<cr>
map <leader>ni :set noautoindent<cr>

"Expression mappings.
cabbr <expr> %% expand('%:p:h')

map <F1> :EraseBadWhitespace <CR>
map <F2> :TagbarToggle<CR>
map <F3> :G blame<CR>
map <F4> :G log<CR>
map <F5> :G status -uno<CR>
map <F6> :G diff <CR>
"Find javascript"
" map <F6> /Index: <CR> zz
" search file of current workd under cursor
noremap <F7> :FZF -q <C-R>=expand("<cword>")<CR><CR>
map <F8> :NERDTreeToggle<CR>
" below list buffers and switch to input buffer
nnoremap <F9> :buffers<CR>:buffer<Space>
map <F10> :Ack <C-R><C-W> <C-R>=@% <CR><CR>
map <F12> :Ack <C-R><C-W><CR>

"No arrow keys. :(
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" buffers
set switchbuf=usetab
noremap bn :bn<CR>
noremap bp :bp<CR>
noremap bd :bd<CR>


" FZF {{{
    nnoremap <leader><leader> :FZF<cr>
    nnoremap <silent> <leader>f :FZF<cr>
    nnoremap <silent> <leader>F :FZF ~<cr>
    nnoremap <leader>ff :Files<cr>
    nnoremap <leader>fl :Lines<cr>
    nnoremap <leader>fs :BLines<cr>
    nnoremap <leader>fb :Buffers<cr>
    nnoremap <leader>ft :Tags<cr>
    nnoremap <leader>fh :History<cr>
" }}}

"=============================== NERDComment ==================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
"=========================== end of NERDComment ================================




" ============================  ack.vim ======================
" 使用 leader + a search
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif

" 高亮搜索关键词
let g:ackhighlight = 1
" ====================== end of  ack.vim ======================


" airline-setting {{{
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"加强版状态栏
let g:airline_theme='badwolf'
"使用powerline打过补丁的字体 on my ubuntu: Powerline fonts installed to /home/andy/.local/share/fonts
let g:airline_powerline_fonts = 1
"关闭状态显示空白符号计数,这个对我用处不大
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '!'
" 开启tagbar
let g:airline#extensions#tagbar#enabled = 1


let g:airline#extensions#tabline#enabled=1 "顶部tab显示
let g:airline#extensions#tabline#show_tab_nr = 1 "开启显示tab number
let g:airline#extensions#tabline#tab_nr_type = 2 " tab number 类型
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#buffer_nr_show = 1 "开启显示buffer number
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#show_tab_count = 1    " dont show tab numbers on the right
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
let g:airline#extensions#tabline#overflow_marker = '>>>'

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9]
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
<
" below is another method for above mapping, but is not as good as above
" nmap <leader>1 :bfirst<CR>
" nmap <leader>2 :bfirst<CR>:bn<CR>
" nmap <leader>3 :bfirst<CR>:2bn<CR>
" nmap <leader>4 :bfirst<CR>:3bn<CR>

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
" show full file path in status bar
" let  g:airline_section_c='%F'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_alt_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" }}}


" vim-startify {{{
noremap <leader>ss :Startify<CR>
" session
nnoremap <leader>ls :SSave<CR>
nnoremap <leader>lc :SClose<CR>
nnoremap <leader>ll :SLoad<CR>
nnoremap <leader>ld :SDelete<CR>

" 'Most Recent Files' number
let g:startify_files_number           = 9

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" When opening a file or bookmark, don't change to its directory. Always keep project directory as working directory
let g:startify_change_to_dir = 0

" Simplify the startify list to just recent files and sessions

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" Read ~/.NERDTreeBookmarks file and takes its second column
function! s:nerdtreeBookmarks()
    let bookmarks = systemlist("cut -d' ' -f 2 ~/.NERDTreeBookmarks")
    let bookmarks = bookmarks[0:-2] " Slices an empty last line
    return map(bookmarks, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files  '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
  \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
  \ { 'type': function('s:nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']}
  \ ]

let s:header = [
      \ '   __         _    _        _    _      _         _',
      \ '  / /    ___ | |_ ( ) ___  | |_ | |__  (_) _ __  | | __',
      \ ' / /    / _ \| __||/ / __| | __|| |_ \ | || |_ \ | |/ /',
      \ '/ /___ |  __/| |_    \__ \ | |_ | | | || || | | ||   <',
      \ '\____/  \___| \__|   |___/  \__||_| |_||_||_| |_||_|\_\',
      \ ]

let s:footer = [
      \ '+-------------------------------------------+',
      \ '|            ThinkVim ^_^                   |',
      \ '|    Talk is cheap Show me the code         |',
      \ '|                                           |',
      \ '+-------------------------------------------+',
      \ ]

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
" }}}

"tidy stuff from DK"
nmap =t :%! tidy -config ~/.tidyrc<CR>

"Comment Code"
" map <C-K>c <c-_><c-_>

"font size for macvim"
if has("gui_running")
  if has("gui_macvim")
    set guifont=Menlo\ Regular:h16
  endif
endif

"gist"
let g:gist_clip_command = 'pbcopy'
let g:gist_post_private = 1

"drag visual"
" vmap <expr> ˙ DVB_Drag('left')
" vmap <expr> ¬ DVB_Drag('right')
" vmap <expr> ∆ DVB_Drag('down')
" vmap <expr> ˚ DVB_Drag('up')
"
" vmap <expr> <C-H> DVB_Drag('left')
" vmap <expr> <C-L> DVB_Drag('right')
" vmap <expr> <C-J> DVB_Drag('down')
" vmap <expr> <C-K> DVB_Drag('up')

"vim tricks"
nnoremap <Leader>e :e<CR>
nnoremap <Leader>w :wa<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <C-c> :qa<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>

" some key to delete not cut
nnoremap <Leader>dd "_d
vnoremap <Leader>dd "_d
nnoremap <Leader>x "_x
vnoremap <Leader>x "_x
" nnoremap <Leader>p "_p
" vnoremap <Leader>p "_p
" replace the word under cursor with yanked content
nnoremap <Leader>p viw"0p
vnoremap <Leader>p viw"0p


"relative number
set number
set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
autocmd BufLeave,FocusLost * :set norelativenumber
autocmd BufEnter,FocusGained * :set relativenumber

"DelimitMate
imap <C-c> <CR><Esc>O

 " YouCompleteMe Ycm ycm {{{

 let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
    let g:ycm_add_preview_to_completeopt=0
    let g:ycm_confirm_extra_conf=0
    set completeopt-=preview
    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

    " This needs to be the Python that YCM was built against.  (set in ~/.zshrc.local).
    if filereadable($PYTHON_YCM)
      let g:ycm_path_to_python_interpreter = $PYTHON_YCM
      " let g:ycm_path_to_python_interpreter = 'python-in-terminal'
    endif

    " Python don't use YCM, it use Jedi-vim
    let g:ycm_filetype_blacklist = {
        \ 'python' : 1,
        \ 'ycmblacklisted': 1
        \}
    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_extra_conf_globlist = ['~/src/awesome/.ycm_extra_conf.py']
    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

    " Jump mappings, overridden in Python mode with jedi-vim.
    nnoremap <leader>j :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>gj :YcmCompleter GoToDeclaration<CR>
    fun! MySetupPythonMappings()
        nnoremap <buffer> <leader>j  :call jedi#goto_definitions()<CR>
        nnoremap <buffer> <leader>gj :call jedi#goto_assignments()<CR>
    endfun
    augroup vimrc_jump_maps
      au!
      au FileType python call MySetupPythonMappings()
    augroup END

    " Deactivated: causes huge RAM usage (YCM issue 595)
    " let g:ycm_collect_identifiers_from_tags_files = 1

    " EXPERIMENTAL: auto-popups and experimenting with SuperTab
    " NOTE: this skips the following map setup (also for C-n):
    "       ' pumvisible() ? "\<C-p>" : "\' . key .'"'
    let g:ycm_key_list_select_completion = []
    let g:ycm_key_list_previous_completion = []

    let g:ycm_semantic_triggers =  {
        \   'c' : ['->', '.'],
        \   'objc' : ['->', '.'],
        \   'ocaml' : ['.', '#'],
        \   'cpp,objcpp' : ['->', '.', '::'],
        \   'perl' : ['->'],
        \   'php' : ['->', '::'],
        \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
        \   'ruby' : ['.', '::'],
        \   'lua' : ['.', ':'],
        \   'erlang' : [':'],
        \ }
  " }}}

" vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=DarkBlue   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=DarkGreen ctermbg=0

" vim-fugitive {{{

" }}}


" vim-gitgutter {{{
function! GitStatus()
      let [a,m,r] = GitGutterGetHunkSummary()
      return printf('+%d ~%d -%d', a, m, r)
    endfunction
    set statusline+=%{GitStatus()}
" }}}

" Platform
function! MySys()
  if has("win32")
    return "windows"
  elseif has("mac")
    return "mac"
  else
    return "linux"
  endif
endfunction

function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

"Fast edit vimrc
if MySys() == 'linux'
    "Fast reloading of the .vimrc
    map <silent> <leader>sv :source ~/.vimrc<cr>
    "Fast editing of .vimrc
    map <silent> <leader>ev :call SwitchToBuf("~/.vimrc")<cr>
    "When .vimrc is edited, reload it
    autocmd! bufwritepost .vimrc source ~/.vimrc
elseif MySys() == 'windows'
    " Set helplang
    set helplang=cn
    "Fast reloading of the _vimrc
    map <silent> <leader>sv :source ~/_vimrc<cr>
    "Fast editing of _vimrc
    map <silent> <leader>ev :call SwitchToBuf("~/_vimrc")<cr>
    "When _vimrc is edited, reload it
    autocmd! bufwritepost _vimrc source ~/_vimrc
endif

" For windows version
if MySys() == 'windows'
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif
" For Mac version
if MySys() == 'mac'
  set clipboard=unnamed
endif
