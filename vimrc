"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"

set background=dark
"set term=xterm-256color
"colorscheme default

filetype on
filetype plugin on

autocmd Filetype * setlocal textwidth=0 wrapmargin=0

" editor configuration

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set nowrap

set textwidth=0 wrapmargin=0
set formatoptions-=tc

set splitright

set hidden " switch buffer without saving current buffer
if has("folding")
    set nofoldenable
endif
set ruler

set ignorecase
set autoindent

"set visualbell
set noerrorbells

set timeoutlen=1000 ttimeoutlen=0 " don't wait after visual-block edit
set lazyredraw

set magic

set showmatch
set mat=2

set incsearch

set autoread
"set clipboard=unnamed

" file detection

au BufRead .gitconfig,gitconfig setf make
au BufRead *bash_path,*bash_vars setf sh
au BufRead *.usr setf fortran
au BufRead SIZE setf fortran

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType fortran set tabstop=3 shiftwidth=3 softtabstop=3
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" key remaps

nnoremap Y y$
nnoremap S :w<CR>
nnoremap Z! :w !sudo tee % >/dev/null<CR>
nnoremap \ :silent make\|redraw!\|cc<CR><CR>
nnoremap gb :ls<CR>:b<Space>
nnoremap <tab> :b#<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

let mapleader = " "

nnoremap <leader>n :set number!<CR>
nnoremap <leader>h :set hlsearch!<CR>
nnoremap <leader>i :set incsearch!<CR>
nnoremap <leader>t :so $VIMRUNTIME/syntax/hitest.vim<CR>
nnoremap <leader>v :so $MYVIMRC<CR>
nnoremap <leader>s :set list!<CR>
nnoremap <leader>p :set invpaste paste?<CR>
nnoremap <up> 
nnoremap <down> 
nmap <CR> zt

" et cetra

set nobackup
set nowb
set noswapfile

" colors

syntax on

highlight Comment    cterm=italic
highlight Comment    ctermfg=8
highlight LineNr     ctermfg=Black
highlight PreProc    None
highlight Type       None
highlight Statement  None
highlight Identifier None
highlight Constant   None
highlight Special    None
highlight NonText    ctermfg=8
highlight Visual     ctermbg=Yellow
highlight SpecialKey ctermfg=8
highlight MatchParen ctermbg=8
highlight Search     ctermbg=DarkGrey
highlight WildMenu   ctermbg=8
highlight Title      None
highlight Underlined None
highlight Directory  None
"highlight VisualNOS  None
highlight Todo None
highlight VertSplit None
highlight VertSplit ctermfg=Black

":ino <Space> <Space>
":ino <Enter> <Enter>

func Eatchar(pat)
      let c = nr2char(getchar(0))
      return (c =~ a:pat) ? '' : c
endfunc

func Fortab()
    iab <silent> if if () <Left><Left><C-R>=Eatchar('\s')<CR>
    iab <silent> ift if () then<CR>endif<Up><Left><C-R>=Eatchar('\s')<CR>
    iab <silent> ife if () then<CR>else<CR>endif<Up><Up><Left><C-R>=Eatchar('\s')<CR>
    iab <silent> do do<CR>enddo<Up>
    iab <silent> dow do while ()<CR>enddo<Up><Right><Right><Right><Right><Right><C-R>=Eatchar('\s')<CR>
    iab <silent> c- c-----------------------------------------------------------------------<C-R>=Eatchar('\s')<CR>
    iab <silent> sub subroutine <CR>return<CR>end<CR><esc>ic-----------------------------------------------------------------------<Up><Up><Up><C-R>=Eatchar('\s')<CR>
    iab <silent> inc include ''<Left><C-R>=Eatchar('\s')<CR>
    iab <silent> w6 write (6,*) ''<Left><C-R>=Eatchar('\s')<CR>
    iab <silent> iow6 if (nio.eq.0) write (6,*) ''<Left><C-R>=Eatchar('\s')<CR>
    iab <silent> idw6 if (nid.eq.0) write (6,*) ''<Left><C-R>=Eatchar('\s')<CR>

    iab <silent> int integer
    iab <silent> int8 integer*8
    iab <silent> rl real
    iab <silent> rl8 real*8
    iab <silent> c1 character*1
    iab <silent> c3 character*3
    iab <silent> c127 character*127
    iab <silent> c128 character*128
    iab <silent> c132 character*132
    iab <silent> cmn common // <Left><Left><C-R>=Eatchar('\s')<CR>
    iab <silent> e0 call exitt0<C-R>=Eatchar('\s')<CR>
    iab <silent> ei call exitti('$',1)<Left><Left><Left><Left><C-R>=Eatchar('\s')<CR>

    iab <silent> wp0 write (6,*) 'wp 0'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp1 write (6,*) 'wp 1'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp2 write (6,*) 'wp 2'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp3 write (6,*) 'wp 3'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp4 write (6,*) 'wp 4'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp5 write (6,*) 'wp 5'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp6 write (6,*) 'wp 6'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp7 write (6,*) 'wp 7'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp8 write (6,*) 'wp 8'<C-R>=Eatchar('\s')<CR>
    iab <silent> wp9 write (6,*) 'wp 9'<C-R>=Eatchar('\s')<CR>
endfunc

func Texab()
    iab <silent> al \begin{align}<CR><CR>\end{align}<Up>  <C-R>=Eatchar('\s')<CR>
"   iab <silent> \s \section{}<Left><C-R>=Eatchar('\s')<CR>

"   iab <silent> \\ss \\subsection{}<Left><C-R>=Eatchar('\s')<CR>
"   iab <silent> \sss \subsubsection{}<Left><C-R>=Eatchar('\s')<CR>

"   iab <silent> \s* \section*{}<Left><C-R>=Eatchar('\s')<CR>
"   iab <silent> \ss* \subsection*{}<Left><C-R>=Eatchar('\s')<CR>
"   iab <silent> \sss* \subsubsection*{}<Left><C-R>=Eatchar('\s')<CR>
endfunc

autocmd FileType fortran call Fortab()
autocmd FileType tex call Texab()
