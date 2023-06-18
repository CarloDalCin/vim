set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14

set nocompatible
set encoding=utf-8
filetype on
filetype plugin indent on
filetype indent on
syntax enable
set nowrap

" cursor
" use a line cursor within insert mode and a block cursor everywhere else.
" reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" disable all blinking:
set guicursor+=a:blinkon0

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
"Plug 'valloric/youcompleteme'    "uncomment if you wan use it
Plug 'tpope/vim-commentary'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'lambdalisue/fern.vim'
Plug 'scrooloose/nerdtree'
"Plug 'joshdick/onedark.vim'                "just if i were a diferent theme
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ekalinin/dockerfile.vim'
call plug#end()


let g:ycm_always_populate_location_list = 1
let g:ycm_enable_diagnostic_signs = 0                  "line (on the left corner) that show the errors
let g:ycm_enable_diagnostic_highlighting = 0           "highlight that show the errors
let g:ycm_echo_current_diagnostic = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1     
let g:ycm_autoclose_preview_window_after_insertion = 1

" vim ariline
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


set mouse=a
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent autoindent smarttab expandtab
set ignorecase

" Highlight unwanted spaces
set list listchars=tab:»·,trail:·

" Toggle NerdTree by pressing "-"
"map - :NERDTreeToggle <CR>
map - :Fern . -drawer -toggle <CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Create a new tab using "tn"
"nnoremap tn : tabnew<CR>
" Move one tab right using "tk"
"nnoremap tk : tabnext<CR>
" Move one tab right using "tj"
"nnoremap tj : tabprev<CR>
" Only show current tab "to"
"nnoremap to : tabo<CR>

