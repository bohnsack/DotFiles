set nocompatible     " use vim (not vi) defaults
set hlsearch         " turn on search highlight (highlights all matches)
set background=dark  " our xterms are -fg White -bg Black
syn enable           " syntax highlighting please
set tabstop=4        " move 4 spaces when I tab
set shiftwidth=4     " A tab is 4 spaces
set expandtab        " convert tabs to spaced
set shiftround       " always indent/outdent to the nearest tabstop
set list
set lcs=tab:�·   "show tabs
set lcs+=trail:· "show trailing spaces

"set autoindent       
"set textwidth=76

set showcmd    " Show (partial) command in status line.
set showmatch  " Show matching brackets.
set ruler      " Show the line and column numbers of the cursor
set ignorecase " Do case insensitive matching
set incsearch  " Incremental search 

set laststatus=2 " show status line?  Yes, always! Even for only one buffer.
set wildmenu     " turn on wildmatch show all possible matches with file name
set nobackup     " backups are for wimps  ;-)


" Paste Mode On/Off 
map <F12> :call Paste_on_off()<CR>
set pastetoggle=<F12>

let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
        if g:paste_mode == 0
                set paste
                let g:paste_mode = 1
        else
                set nopaste
                let g:paste_mode = 0
        endif
        return
endfunc

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
imap <S-CR>    <CR><CR>end<Esc>-cc
