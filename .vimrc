set nocompatible

filetype plugin indent on
syntax on

set textwidth=79
set tabstop=4
set expandtab
set autoindent 
set shiftwidth=4  "this is the level of autoindent, adjust to taste
set ruler
set number
set backspace=indent,eol,start
set autoindent
set shiftround

" Enable folding
set foldmethod=indent
set foldlevel=99

" Map space to fold
nnoremap <space> za

"set rtp+=/home17/jlaw108/python-private/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

colorscheme molokai
highlight Comment cterm=bold
execute pathogen#infect()

"""""""""""""""""""""""""
" NerdTree Settings
"
""""""""""""""""""""""""

" Maps Ctrl-n to open NerdTree
map <C-n> :NERDTreeToggle<CR>
" Opens NerdTree automatically if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set encoding=utf8
" Closes NerdTree if it's the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Maps Ctrl-r to use QuickRun
nnoremap <C-r> :QuickRun<CR>

" Split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""""""""""
"  Settings for Syntastic  "
""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_quiet_messages = {"type": "style"}


" Pencil Setting
let g:pencil#wrapModeDefault = 'soft'

augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text,txt call pencil#init()
augroup END


" Limelight settings
nnoremap Lime<CR> :Limelight<CR> 
let g:limelight_default_coefficient = 0.7


" Tagbar
map <C-m> :TagbarToggle<CR>
