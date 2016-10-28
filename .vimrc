" http://nvie.com/posts/how-i-boosted-my-vim/
set nocompatible " ?

" enable syntax highlighting
syntax on

" color scheme (slate or pablo)
"colorscheme slate

" show line numbers
set number

" show column number
set ruler

" highlight matching parens
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" dark background colors
set background=dark

" don't wrap lines
set nowrap

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" clear highlights when ,/ pressed
nmap <silent> ,/ :nohlsearch<CR>

" number of spaces to show for tab, only affects display
set tabstop=2

" indentation
set shiftwidth=2

" never expand tabs
set expandtab

" auto indentation. dumber than cindent
" unset for python.
"set smartindent

" always show file path
set showtabline=2

" mouse scrolling
"set mouse=a

"set statusline+=%f
"set laststatus=2

" speed
set nobackup
set noswapfile
set viminfo="NONE"
"set noloadplugins

set shortmess+="I"

"set cursorline " highlight current line
"set foldenable " enable code folding
"filetype indent on " load filetype specific indent files
filetype plugin on
syntax on
filetype plugin indent on
"set showcmd " show last command in bottom right

" tab colors
hi TabLine term=bold cterm=bold ctermbg=8 ctermfg=0
hi TabLineSel term=bold cterm=bold ctermbg=7 ctermfg=0
hi TabLineFill term=bold cterm=bold ctermbg=8 ctermfg=0
