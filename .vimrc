" Barebones vimrc

" Pathogen
execute pathogen#infect()

" Fuck Esc
inoremap jk <esc>
inoremap <esc> <nop> " Train em fingers

" Remove bad habits with nop
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>     
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>


" Filetype plugins
filetype plugin on
filetype indent on

set autoread

" Wildmenu
set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler

" Hide abandoned buffer
set hid

set ignorecase
set smartcase

set hlsearch
set incsearch 

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set showmatch

" Fuck bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

" 256 colors in gnome-terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Fuck gui crap
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

set encoding=utf8
set ffs=unix,dos,mac

" Fuck swaps
set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" autofills
set lbr
set tw=500
set ai " auto-indent
set si "smart indent
set wrap "wrap lines

" Return to last edit position when opening file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



" Always show status
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
