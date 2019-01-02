set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
set nofoldenable
set hlsearch

" Indentation
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Theme
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

" GVIM remove gui stuff
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=e

" Enable terminal mouse mode
set mouse=a

" Disable background color erase (fix term background redraw)
set t_ut=

" Open file in browser with highlighting
command! OpenHtml TOhtml | w! /tmp/vim_temp.html | execute "silent !xdg-open /tmp/vim_temp.html &" | q!

" Bash Alias Support
let $BASH_ENV = "~/.bashrc"

" Don't hide " chars in json files
set conceallevel=0

" System clipboard
vnoremap <C-c> "+y
noremap <C-v> "+p

" Grep shortcuts
noremap <leader>gw :grep --exclude tags --exclude-dir build -r <C-r><C-w> *<CR><CR> :copen<CR>

" Clear search
noremap // :noh<CR>

" Terminal mouse scroll
function! ExitNormalMode()
    unmap <buffer> <silent> <RightMouse>
    call feedkeys("a")
endfunction

function! EnterNormalMode()
    if &buftype == 'terminal' && mode('') == 't'
        call feedkeys("\<c-w>N")
        call feedkeys("\<c-y>")
        map <buffer> <silent> <RightMouse> :call ExitNormalMode()<CR>
    endif
endfunction
tmap <silent> <ScrollWheelUp> <c-w>:call EnterNormalMode()<CR>

" Tabs
noremap <C-t> :tabnew<CR>
noremap <C-x> :tabn<CR>
noremap <C-z> :tabp<CR>
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
au TabLeave * let g:lasttab = tabpagenr()
noremap <leader>0 :exe "tabn ".g:lasttab<cr>

" CTRLP
let g:ctrlp_working_path_mode = 'rc'
noremap <leader>p :CtrlP<CR>
noremap <leader>o :CtrlPTag<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
