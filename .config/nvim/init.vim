set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set number

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'lambdalisue/battery.vim'
Plug 'philRunninger/nerdtree-visual-selection'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox
set bg=dark

map <Left> <Esc>
map <Right> <Esc>
map <Up> <Esc>
map <Down> <Esc>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline_right_sep = ''
let g:airline_left_sep = ''
map <F3> :tabnew<CR>
map <F2> :NERDTreeToggle<CR>
map <F12> :qa!<CR>
inoremap <expr> <tab> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
autocmd VimEnter * NERDTree
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
