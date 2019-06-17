filetype on
filetype plugin on

" editor configuration

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set nowrap

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
"highlight Visual     ctermbg=8
"highlight Visual     None
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

:ino <Space> <Space>
:ino <Enter> <Enter>
