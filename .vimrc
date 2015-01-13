""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Neal Trischitta 			 "
" ntrischi@stevens.edu 				 "	
"						 "
" Version: 0.3  Thu May  8 16:21:43 EDT 2014     "
"						 "
" 						 "	
""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""
" General "
"""""""""""
"Sets how many lines of histoy VIM will remember"
set history=800

"Set to auto read when a file is changed from the outside"
set autoread

"Fast saving single key command"
nmap <leader> w :w!<cr>

""""""""""
" ViM UI "
""""""""""
"Ignore compiled files"
set wildignore=*.o,*~,.*.pyc

"Always show current position"
set ruler

"When searching try to be smart about cases"
set smartcase

"Highlight search results"
set hlsearch

"Makes search act like search in modern browsers"
set incsearch

"No annoying sound on errors"
set noerrorbells
set novisualbell
set tm=500

"""""""""""""""""""
" Colors and Fonts"
"""""""""""""""""""
"Enable syntax hightlighting"
syntax enable

colorscheme default
set background=dark

"Set uft8 as standard encoding and en_US as the Standard Language
set encoding=utf8

"Use UNIX as the standard file type"
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""
" Text, Tabs and Indent related"
""""""""""""""""""""""""""""""""
"Tabing and Spacing"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set sw=4

"Linebreaks on 800 characters"
set lbr
set tw=800

set si "smart indent
set ai "Auto indent
set wrap "Wrap Lines

"Set Line Numbers"
set relativenumber
set number

"Disables Arrow Keys for Navigation"
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

""""""""""""""
" Status Line"
""""""""""""""
" Always show the status line"
set laststatus=2

" Opens a new tab with the current buffer's path"
" Super useful when editing files in the same directory"
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Shortcuts using <leader>"
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""
" Auto Saving "
"""""""""""""""
au FocusLost * silent! wa

""""""""""""""""""""""
" Timeout INSERT MODE"
""""""""""""""""""""""
au CursorHoldI * stopinsert 
set ut=4000

""""""""""""""""""""""
" Get Root Permission"
""""""""""""""""""""""
cmap w!! w !sudo tee > /dev/null %

"""""""""""""""""
" Toggle Paste"
"""""""""""""""""
map <F4> :set invpaste<CR>

"""""""""""""""""""
" Toggle Spelling "
"""""""""""""""""""
map <F5> :setlocal spell! spelllang=en_us<CR>
