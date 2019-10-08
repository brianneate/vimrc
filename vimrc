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

" Fold method
set foldmethod=indent

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
noremap <leader>fw :Rg <C-r><C-w><CR>
vnoremap <leader>fs y :Rg <C-r>"<CR>

" Clear search
noremap // :noh<CR>

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
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif
noremap <leader>p :CtrlP<CR>
noremap <leader>o :CtrlPTag<CR>

" NERDTree
let g:NERDTreeWinSize=50
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>N :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Illuminate word highlighter
let g:Illuminate_delay = 0

" Auto complete
let g:mucomplete#enable_auto_at_startup = 1
set completeopt-=preview
set completeopt+=menuone
set completeopt+=noselect
