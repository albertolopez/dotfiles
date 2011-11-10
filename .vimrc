filetype on
filetype plugin indent on
filetype plugin on

set nocompatible
set clipboard=unnamed

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set autochdir
set mouse=a


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <CR> :noh<CR><CR>

set nowrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:¬

set t_Co=256
colorscheme wombat256
set guifont=Monospace\ 9
set number
set noswapfile

"set lines=50 columns=185
set lines=999 columns=999

set guioptions+=b

set wildmode=longest:full
set wildmenu

:set wildignore+=*.csv,*.xls,*.xlsx,*.pdf,*.doc,*.docx,*.sql,*.jpg,*.JPG,*.jpeg,*.gif,*.png,*.flv,*.mp3,data/*,images/*,_junk/*

" no blink at end of file
set t_vb=

" tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

"Bubble single lines
nmap <C-UP> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkPz[V`]
vmap <C-Down> xp`[V`]

nnoremap <silent> <F10> :YRShow<CR> 
set clipboard+=unnamed

" Taglist
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 1
nnoremap <F5> :TlistToggle<CR>

" NERDTree
let NERDTreeShowBookmarks=0
let NERDTreeQuitOnOpen = 1
"autocmd VimEnter * NERDTree 
"autocmd BufEnter * NERDTreeMirror
:map <F2> :NERDTreeToggle<CR>
set guitablabel=%t
"autocmd BufEnter * lcd %:p:h
"cmap ob NERDTreeFromBookmark 

:imap ii <Esc>
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

"copy to system clipboard
map ,y "+y
"copy to system clipboard
map ,p "+gp

autocmd BufWriteCmd *.html,*.css,*.php :call Refresh_firefox()

 function! Refresh_firefox()
 if &modified
     write
     silent !echo  'vimYo = content.window.pageYOffset;
                  \ vimXo = content.window.pageXOffset;
                  \ BrowserReload();
                  \ content.window.scrollTo(vimXo,vimYo);
                  \ repl.quit();'  |
                  \ nc -w 1 localhost 4242 2>&1 > /dev/null
   endif
 endfunction

" zen coding
let g:user_zen_leader_key = '<c-k>'

syntax on

"write to a file using sudo
cmap w!! %!sudo tee > /dev/null %