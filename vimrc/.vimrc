:syntax on                                               " syntax highlighing
filetype plugin indent on
filetype plugin on
filetype on                                             " try to detect filetypes
autocmd filetype python set expandtab                                           " enter spaces when tab is pressed
autocmd filetype python set tabstop=4                                           " use 4 spaces to represent tab
autocmd filetype python set softtabstop=4
autocmd filetype python set shiftwidth=4                                        " number of spaces to use for auto indent
set showcmd
set hls
autocmd fileType python set omnifunc=pythoncomplete#Complete
colorscheme darkspectrum
set nocompatible
set encoding=utf-8
set t_Co=256
set ls=2
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:#
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

"disable autoindent while pasting text by pressing F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" moving between split panes
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

"force yourself to stop using the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"avoid skipping of long lines when pressing down
nnoremap j gj
nnoremap k gk

"PowerLine config
let g:Powerline_symbols = 'fancy'

""pydiction settings
let g:pydiction_location = '/home/abhishek/.vim/after/other_pydiction_files/complete-dict'
let g:pydiction_menu_height = 15

"Vundle plugins
set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"My Bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'Command-T'
