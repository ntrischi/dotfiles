""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Neal Trischitta 			 "
" ntrischi@stevens.edu 				 "	
"						 "
" Version: 0.1 Sat 06 Jul 2013 10:55:59 AM EDT   "
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

"Smarttabs"
set smarttab

"Linebreaks on 800 characters"
set lbr
set tw=800

set si "smart indent
set ai "Auto indent
set wrap "Wrap Lines

"Set Line Numbers"
set relativenumber

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

" Format the status line"
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers"
"""""""""""""""""""""""""""""""""""""""""""
" Useful mappings for managing tabs"
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path"
" Super useful when editing files in the same directory"
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"""""""""""""""""
" Spell Checking"
"""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking"
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>"
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""
" Timeout INSERT MODE"
""""""""""""""""""""""
au CursorHoldI * stopinsert 
set ut=4000

"""""""""""""""""
" External Paste"
"""""""""""""""""
" Toggle paste mode on and off"
map <leader>pp :setlocal paste!<cr>

"""""""""""""""""""
" Helper Functions"
"""""""""""""""""""
" Returns true if paste mode is enabled"
function! HasPaste()
    if &paste
        return 'PASTE MODE '
        en
        return ''
endfunction


