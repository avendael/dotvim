"----------"
" Pathogen "
"----------"
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"------------------"
" General Settings "
"------------------"
set t_Co=256
set nocompatible
set title
set hidden
set smartcase
set incsearch
set number
set smartindent
set scrolloff=3
set wildmenu
set wildmode=list:longest
set history=1000
set textwidth=80
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
runtime macros/matchit.vim
syntax on
filetype on
filetype indent on
filetype plugin on
colorscheme zenburn

"------------"
" Tabulation "
"------------"
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

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
