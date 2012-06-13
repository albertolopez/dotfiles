call pathogen#infect()
filetype on
filetype plugin indent on
filetype plugin on

set nocompatible
set clipboard=unnamedplus

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
"set noexpandtab
set expandtab

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
set mouse=a


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <CR> :noh<CR><CR>

set nowrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:¬

set term=xterm
set t_Co=256
colorscheme wombat256
set guifont=Monospace\ 9
set number
set noswapfile

"set lines=50 columns=185
"set lines=999 columns=999

set guioptions+=b

"let mapleader = "<"

:set wildignore+=*.csv,*.xls,*.xlsx,*.pdf,*.doc,*.docx,*.sql,*.jpg,*.JPG,*.jpeg,*.gif,*.png,*.flv,*.mp3,data/*,images/*,_junk/*,tmp/*,lib/smarty/templates_c/*,private/*

" no blink at end of file
set t_vb=

" tab navigation like firefox
":nmap <S-tab> :tabprevious<CR>
":nmap <tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>

" buffer navigation
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv


"Bubble single lines
nmap <C-UP> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkPz[V`]
vmap <C-Down> xp`[V`]

nnoremap <silent> <F10> :YRShow<CR> 
"set clipboard+=unnamed

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
let NERDTreeShowBookmarks=0
let NERDTreeQuitOnOpen = 1
"autocmd VimEnter * NERDTree 
"autocmd BufEnter * NERDTreeMirror
:map <F7> :NERDTreeToggle<CR>
set guitablabel=%t
"autocmd BufEnter * lcd %:p:h
"cmap ob NERDTreeFromBookmark 

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

"copy to system clipboard
map ,y "+y
"copy to system clipboard
map ,p "+gp

autocmd BufWriteCmd *.html,*.css,*.php,*.xml,*.tpl :call Refresh_firefox()

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

" change cursor color in insert mode
silent !echo -ne "]12;\#dd4010\x7"

let &t_SI="]12;\#89b6e2\x7"
let &t_EI="]12;\#dd4010\x7"

au VimLeave * silent !echo -ne "]12;\#dd4010\x7"

let g:yankring_history_dir = '~/.vim'

" Source .vimrc after saving .vimrc
autocmd bufwritepost .vimrc source $MYVIMRC

" Fast saving
nmap <leader>s :w!<cr>

"let g:ctrlp_use_caching = 1
"let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_cache_dir = '~/.ctrlp'
"let g:ctrlp_dotfiles = 1
"let g:ctrlp_mruf_exclude = '/.hg/.*\|/data/.*'
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/data/*,*/.jpg/*,*/.jpeg/*,*/.png/*,*/.gif/*  " Linux/MacOSX
"let g:ctrlp_map = '<leader>t'
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_match_window_reversed = 1
"let g:ctrlp_split_window = 0
"let g:ctrlp_prompt_mappings = {
"\ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
"\ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
"\ 'PrtHistory(-1)':       ['<c-n>'],
"\ 'PrtHistory(1)':        ['<c-p>'],
"\ 'ToggleFocus()':        ['<c-tab>'],
"\ }

"set tab labels to show at most 12 characters
set guitablabel=%-0.12t%M

""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
noremap <leader>y :CommandTFlush<CR>

nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" => PDV
""""""""""""""""""""""""""""""
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>

map <C-C> <plug>NERDCommenterToggle

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disable arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

let g:DisableAutoPHPFolding=1

let g:easytags_autorecurse = 1
let g:easytags_auto_update = 0
"--------------------
" Function: Open tag under cursor in new tab
" Source:   http://stackoverflow.com/questions/563616/vimctags-tips-and-tricks
"--------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nmap <C-A> :pop<CR>

let g:syntastic_auto_jump=1

nmap <leader>f :Ack! 

nmap <leader>gst :Gstatus<CR>
nmap <leader>gsr :Git svn rebase<CR>
nmap <leader>gsd :Git svn dcommit<CR>


" PDV
"inoremap <C-M> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-M> :call PhpDocSingle()<CR>
"vnoremap <C-M> :call PhpDocRange()<CR> 

let g:SuperTabDefaultCompletionType = "context"

nnoremap <F9> :GundoToggle<CR>

nmap <leader>q :tabnew ~/postgre.sql<CR>

" minibuxexpl
let g:miniBufExplMapCTabSwitchBufs = 1


nmap <leader>d :bw<CR>
let g:miniBufExplCheckDupeBufs = 0
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplShowBufNumbers = 0

let g:tagbar_singleclick = 1

let g:debuggerMiniBufExpl = 1
