" Barebones vimrc
" Outsourcting basic stuff to sensible.vim

set nocompatible
" Sensible.vim is supposed to do this. Syntastic says otherwise
set shell=/bin/bash

" good amount of time to type ,ev etc
set timeoutlen=2000

" Pathogen
execute pathogen#infect()

" Fuck Esc
inoremap jk <esc>
inoremap <esc> <nop> 

" Remap leader
let mapleader = ","
let g:mapleeader = ","

" My Leader commands
" clear search highlights with ,spc
nnoremap <leader><space> :noh<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggle paste mode
set pastetoggle=<F2>

" 8601 Timestamp
command -nargs=0 -bar Timestamp execute "normal! a\<c-R>=strftime(\"%FT%T%z\")\<cr>"

" Cmus
command Cmusplay   :!cmus-remote -p
command Cmuspause  :!cmus-remote -u
command Cmusnext   :!cmus-remote -n
command Cmusprev   :!cmus-remote -r

" Xmonad
command Xmonedit    :vsplit ~/.xmonad/xmonad.hs
command Xmoncompile :!xmonad --recompile

" insert rfc 8601 date
command Date :r!date

" Remap window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-j> <C-w>k
nnoremap <C-l> <C-w>l

" Remove bad habits with nop
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>     
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
let g:hardtime_default_on = 1

set wildignore=*.o,*~,*.pyc

set textwidth=80

" Hide abandoned buffer
set hid

set ignorecase
set smartcase

set hlsearch
set incsearch

set whichwrap+=<,>,h,l

set showmatch

" Fuck bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" 256 colors in gnome-terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

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

set clipboard =unnamedplus

set expandtab
set shiftwidth=4
set tabstop=4

set relativenumber

set spell spelllang=en_us

" Return to last edit position when opening file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Yaml indents
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown


" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

let g:slime_target = "tmux"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

colorscheme wombat256
