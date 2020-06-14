
let g:python_host_prog='/usr/bin/python'


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


set nocompatible                " be iMproved
filetype off                    " required!

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"my Plug here:
"
" original repos on github
"
Plug 'jiangmiao/auto-pairs'
"Plug 'klen/python-mode'
"Plug 'Valloric/ListToggle'
Plug 'SirVer/ultisnips'
Plug 't9md/vim-quickhl'
" Plug 'Lokaltog/vim-powerline'
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
Plug 'othree/html5.vim'
Plug 'groenewege/vim-less'
Plug 'vim-scripts/Markdown'
Plug 'vim-scripts/Markdown-syntax'
Plug 'vim-scripts/snipmate-snippets'
Plug 'vim-scripts/ctrlp.vim'
"..................................
" non github repos
" Plug 'git://git.wincent.com/command-t.git'
"......................................
Plug 'Yggdroot/LeaderF'
Plug 'sjl/gundo.vim'
Plug 'ap/vim-css-color'
Plug 'nanotech/jellybeans.vim'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script'
Plug 'csexton/trailertrash.vim'
Plug 'scrooloose/nerdtree'
Plug 'juvenn/mustache.vim'
Plug 'yaymukund/vim-rabl'
Plug 'int3/vim-extradite'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-fugitive'
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
Plug 'scrooloose/syntastic', { 'do': function('Installjshint') }
Plug 'mattn/emmet-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'jshint/jshint'
Plug 'Shutnik/jshint2.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-jade'
Plug 'moll/vim-node'
Plug 'gioele/vim-autoswap'
Plug 'gavinbeatty/dragvisuals.vim'
Plug 'rking/ag.vim'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'juneedahamed/svnj.vim'
Plug 'majutsushi/tagbar'
Plug 'ternjs/tern_for_vim', { 'do': function('BuildTern') }
Plug 'vim-scripts/dbext.vim'
" Plug 'python_fold_compact'
" Plug 'vasconcelloslf/vim-interestingwords'
Plug 'vasconcelloslf/vim-interestingwords'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'severin-lemaignan/vim-minimap'
" Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'

" Initialize plugin system
call plug#end()

filetype plugin indent on                " required

set runtimepath^=~/.vim/bundle/ctrlp.vim
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

set hlsearch            " Highlight search results.
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
set hlsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim
set nu
set ts=2                            "tab stop 2
set autoindent
set smartindent                     "use smart indenting
set bs=2                            "allow backspace in insert mode
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

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ag.vim

set backupdir=~/.vim/backup
set dir=~/.vim/swap
set undodir=~/.vim/undo
set cursorcolumn
set mouse=a " rmove '-' if want to disable mous select
map <silent> fd :set mouse=a<CR>
map <silent> ff :set mouse-=a<CR>


set wildmode=longest,list
set wildmenu

" colorscheme synic
colorscheme desert256
"colorscheme wombat

" python-mode setting
" override go-to.definition key shortcut to ctrl-]
"let g:pymode_rope_goto_definition_bind = "<c-]>"

" override run current python file key shortcut to ctrl-shift-e
"let g:pymode_run_bind = "<c-s-e>"

" override view python doc key shortcut to ctrl-shift-d
"let g:pymode_doc_bind = "<c-s-d>"
"let g:pymode_lint_config = '$HOME/.pylint.rc'
"let g:pymode_options_max_line_length = 100
autocmd FileType python set colorcolumn=100
highlight OverLength ctermbg=red ctermbg=white guibg=#592929
match OverLength /\%121v.\+/

"from Jared"
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = '' " Stop messing with the path
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|coverage\|vendor/bundle\|result\|build\|img\|pyc'

let mapleader = ' '
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_fugitive_prefix = ' '
" let g:airline_readonly_symbol = ''
" let g:airline_linecolumn_prefix = ''
" let g:airline_theme='jellybeans'
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

" vim-minimap
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='Visual'

" jedi-vim
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

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

" Nerdtree auto close and open Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" autocmd vimenter * NERDTree

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
map <silent> <C-T> :NERDTree <CR>
map <silent> gb :Gblame<CR>
map <silent> gc :Gcommit<CR>
map <silent> gC :Gcommit -a<CR>
map <silent> gl :gitv<CR>
map <silent> gs :Gstatus<CR>
" search the word in current register
nnoremap <silent> <leader>g  /<C-R>"<CR>

map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
map <leader>p :!mkdir -p %:p:h<cr>
map <leader>ni :set noautoindent<cr>

"Expression mappings.
cabbr <expr> %% expand('%:p:h')

map <F1> :EraseBadWhitespace <CR>
map <F2> :TagbarToggle<CR>
map <F3> :SVNBlame<CR>
map <F4> :SVNLog<CR>
map <F5> :SVNDiff<CR>

" send current word to CtrlP
map <F6> <C-P><C-\>w

"Find javascript"
" map <F6> /Index: <CR> zz
map <F7> :%y+ <CR>
map <F8> :NERDTreeToggle<CR>
set switchbuf=usetab
map <F9> :sbnext<CR>
map <S-F9> :sbprevious<CR>
map <F11> :Ag <C-R><C-W> <C-R>=@% <CR><CR>
map <F12> :Ag <C-R><C-W><CR>

"No arrow keys. :(
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"ctrl p stuff from Jared"
nmap <leader><leader> :CtrlP<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>fa :CtrlP app/assets<cr>
nmap <leader>fc :CtrlP app/controllers<cr>
nmap <leader>fm :CtrlP app/models<cr>
nmap <leader>ft :CtrlPTag<cr>
nmap <leader>fv :CtrlP app/views<cr>

nmap <leader>o :tabnew#<CR>

" Insert a path of the file instead of opening it with CtrlP plugin
function! CtrlPOpenFunc(action, line)
   if a:action =~ '^h$'
      " Get the filename
      let filename = fnameescape(fnamemodify(a:line, ':p'))

      " Close CtrlP
      call ctrlp#exit()
      call ctrlp#mrufiles#add(filename)

      " insert the contents of filename into the buffer
      put =filename
   else
      " Use CtrlP's default file opening function
      call call('ctrlp#acceptfile', [a:action, a:line])

   endif
endfunction

let g:ctrlp_open_func = {
         \ 'files': 'CtrlPOpenFunc',
         \ 'mru files': 'CtrlPOpenFunc'
         \ }
" in order to insert the file path by pressing Ctrl-x in the Ctrlp window.




"tidy stuff from DK"
nmap =t :%! tidy -config ~/.tidyrc<CR>

"Comment Code"
" map <C-K>c <c-_><c-_>

"jshint"
let g:syntastic_javascript_checkers = ['']
" let g:syntastic_javascript_checkers = ['jshint']

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_pylint_post_args="--max-line-length=120"
execute pathogen#infect()

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

"YCM
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


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
    map <silent> <leader>ss :source ~/.vimrc<cr>
    "Fast editing of .vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
    "When .vimrc is edited, reload it
    autocmd! bufwritepost .vimrc source ~/.vimrc
elseif MySys() == 'windows'
    " Set helplang
    set helplang=cn
    "Fast reloading of the _vimrc
    map <silent> <leader>ss :source ~/_vimrc<cr>
    "Fast editing of _vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/_vimrc")<cr>
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
