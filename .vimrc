execute pathogen#infect('bundle/{}', '~/workdir/vim/bundle/{}')
set encoding=utf-8


syntax on
filetype plugin indent on 

set nocp
set noswapfile 
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
"set cursorline
set hlsearch
set ignorecase
"set number

execute "set <M-p>=\ep"
nnoremap <M-p> :set invpaste paste?<CR> 
set pastetoggle=<M-p>
set showmode

map <F2> :retab <CR> :wq! <CR> 
map <F6> :make <bar> !./app <CR> 
map <F7> :make clean <CR> 
nmap <C-s> :w<CR>

let g:NTon = 0
function! NTToggle()
    if g:NTon
        let g:NTon = 0
        execute ":NERDTreeClose"
    else
        let g:NTon = 1
        execute ":NERDTreeFind"
    endif
endfunction

execute "set <M-1>=\e1"
map <M-1> :call NTToggle()<CR> 

execute "set <M-a>=\ea"
map <M-a> :A <CR>

execute "set <M-9>=\e9"
nmap <M-9> :NERDTreeToggle<CR> 
map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_max_height = 25
let g:ctrlp_root_markets = '.common'

nmap <C-s> :w<CR>
nmap <C-b> :CtrlPBuffer<CR>

execute "set <M-m>=\em"
nmap <M-m> :CtrlPMRUFiles<CR>

execute "set <M-t>=\et"
nmap <M-t> :CtrlPRoot<CR>


" Rgrep
execute "set <M-f>=\ef"
nmap <M-f> :Rgrep<CR>

nmap <C-j> :cprev <CR>
nmap <C-k> :cnext <CR>

" A
execute "set <M-1>=\e1"
map <M-a> :A<CR>


map <F8>  :set filetype=cpp <CR>

let g:LOPEN = 0
function! LOPENToggle()
    if g:LOPEN
        let g:LOPEN = 0
        execute ":lclose"
    else
        let g:LOPEN = 1
        execute ":lopen"
    endif
endfunction

execute "set <M-o>=\eo"
nmap <M-o> :tselect <CR>

execute "set <M-2>=\e2"
nmap <M-2> :TagbarToggle<CR>

command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
    else
        copen 10
        let g:qfix_win = bufnr("$")
    endif
endfunction


nmap <silent> <C-i> :QFix <CR>
au FileType qf call AdjustWindowHeight(3,20)
function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"),a:maxheight]), a:minheight]) . "wincmd _" 
endfunction

