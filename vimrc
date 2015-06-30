set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" original repos on github
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'lepture/vim-jinja'
Plugin 'Chiel92/vim-autoformat'

" vim-scripts repos
Plugin 'mako.vim'

" non github repos


call vundle#end()            " required
filetype plugin indent on    " required


"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax    on     

"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set backup                      " keep a backup file
set browsedir=current           " which directory to use for the file browser
set complete+=k                 " scan the files given with the 'dictionary'
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
"set mouse=a                     " enable the use of the mouse
set nowrap                      " do not wrap lines
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set shiftwidth=2                " number of spaces to use for each step of
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new
set tabstop=2                   " number of spaces that a <Tab> counts for
set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
set cursorline                  " 设置下划线
set wrap                        " 自动换行
"-------------------------------------------------------------------------------
" Airline settings
"-------------------------------------------------------------------------------
set t_Co=256
set laststatus=2
let g:airline_theme='light'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	 let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

let g:airline#extensions#branch#format = 'CustomBranchName'
function! CustomBranchName(name)
  return '[' . a:name . ']'
endfunction


"-------------------------------------------------------------------------------
" User settings
"-------------------------------------------------------------------------------

"显示行号
set number
"不在command bar 显示buffer 列表
let g:bufferline_echo = 0
" Theme settings
colorscheme taw


"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must
"    exist!)
"    F5   -  open quickfix error window
"    F6   -  close quickfix error window
"    F7   -  display previous error
"    F8   -  display next error   
"-------------------------------------------------------------------------------
"
map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
map   <silent> <F9>        :PymodeLintAuto<CR>
map   <silent> ;        :cn<CR>
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>
imap  <silent> <F9>   <Esc>:PymodeLintAuto<CR>
noremap <F10> :Autoformat<CR>

"-------------------------------------------------------------------------------
" NerdTree
"-------------------------------------------------------------------------------

"如果VI没有编辑文件，自动打开NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let NERDTreeIgnore=['\.vim$', '\~$', '\.lo$', '\.in$', '\.pyc$', '\.o$']
let NERDTreeIgnore=['\~$', '\.lo$', '\.in$', '\.pyc$', '\.o$']
"打开一个文件后自动关闭NerdTree
"let NERDTreeQuitOnOpen=1
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" 如果NerdTree是最后一个窗口自动退出
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                    q
            endif
      endif
  endif
endfunction
"
map <C-n> :NERDTreeToggle<CR>
"
"fold 
noremap  <silent>  ze :1,$ foldopen!<CR>
noremap  <silent>  zE :1,$ foldclose!<CR>
"set fillchars=stl:^,stlnc:-,vert:\|,fold:_,diff:-
set fillchars=stlnc:-,vert:\|,diff:-
"set fillchars=stl:-,stlnc:-,vert:\|,diff:-
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  "return v:folddashes . sub
  return '+[+]:'. sub
endfunction


"-------------------------------------------------------------------------------
" python mode 配置
"-------------------------------------------------------------------------------

"关闭自动补齐，使用jedi-vim补齐
let g:pymode_rope = 0

" Documentation
" 禁止pymod doc提示，使用jedi-vim的pydoc
let g:pymode_doc = 0
"let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
" Auto check on save
let g:pymode_lint_write = 1
"忽略的pylint检查错误
" let g:pymode_lint_ignore = 'E265'
" Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
"
" " Don't autofold code
" let g:pymode_folding = 0
" 关闭一行最大长度警告
let g:pymode_options_max_line_length=500


"-------------------------------------------------------------------------------
" python jedi vim  配置
"-------------------------------------------------------------------------------
let g:jedi#auto_close_doc=1


"-------------------------------------------------------------------------------
" jinja config
"-------------------------------------------------------------------------------
au BufNewFile,BufRead *.mako,*.html,*.htm,*.shtml,*.stm set ft=jinja
