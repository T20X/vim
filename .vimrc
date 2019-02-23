execute pathogen#infect('bundle/{}', '~/workdir/vim/bundle/{}')

syntax on
filetype plugin indent on 

set noswapfile 
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set cursorline
set hlsearch
set ignorecase

execute "set <M-p>=\ep"
nnoremap <M-p> :set invpaste paste?<CR> 
set pastetoggle=<M-p>
set showmode

map <F2> :retab <CR> :wq! <CR> 
map <F6> :make <CR> 
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
execute "set <M-9>=\e9"
nmap <M-9> :NERDTreeToggle<CR> 
map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_max_height = 25
let g:ctrlp_root_markets = '.common'

nmap <C-b> :CtrlPBuffer<CR>
execute "set <M-m>=\em"
nmap <M-m> :CtrlPMRUFiles<CR>

" Rgrep
execute "set <M-f>=\ef"
nmap <M-f> :Rgrep<CR>

" A
execute "set <M-1>=\e1"
map <M-a> :A<CR>
