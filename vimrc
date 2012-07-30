"----------"
" Pathogen "
"----------"
set nocompatible "Pathogen does not work in compatibility mode
filetype off "Since some distributions turn this on during startup
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"------------------"
" General Settings "
"------------------"
set t_Co=256
set encoding=utf-8
set title
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set number
set smartindent
set scrolloff=3
set wildmenu
set showmode
set wildmode=list:longest
set history=1000
set textwidth=79
set visualbell
set cursorcolumn
set cursorline
set completeopt+=menuone
set completeopt-=preview
set sessionoptions-=blank
set shortmess=atI
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set viewdir=$HOME/.vim/views
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set listchars=tab:>-,trail:.,eol:$
set backspace=indent,eol,start
set showcmd
set modelines=0
runtime macros/matchit.vim
filetype plugin indent on
syntax on

"--------------"
" Color Themes "
"--------------"
let g:solarized_termcolors=256
set background=dark
colorscheme zenburn

"------------"
" Tabulation "
"------------"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"--------------"
" Autocommands "
"--------------"
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

"-------------------------"
" Status Line Preferences "
"-------------------------"
set laststatus=2
set statusline=%f%m%r%h%w\ \<%{&ff}\>\ %y\ '\%03.3b'\ 0x\%02.2B\ (%04l,%04v)\ %p%%\ %LL
