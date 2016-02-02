" pathogen
execute pathogen#infect()

" http://nvie.com/posts/how-i-boosted-my-vim/
"set nocompatible " ?

" enable syntax highlighting
syntax on

" color scheme (slate or pablo)
colorscheme slate

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
set tabstop=4

" indentation
set shiftwidth=4

" never expand tabs
set noexpandtab

" auto indentation. dumber than cindent
set smartindent

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
"filetype plugin indent on
"set showcmd " show last command in bottom right

" cscope
if has('cscope')
	set cscopetag cscopeverbose

	if has('quickfix')
		set cscopequickfix=s-,c-,d-,i-,t-,e-
	endif

	cnoreabbrev csa cs add
	cnoreabbrev csf cs find
	cnoreabbrev csk cs kill
	cnoreabbrev csr cs reset
	cnoreabbrev css cs show
	cnoreabbrev csh cs help

	command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

" work specific
if filereadable(expand("$HOME/.vimrc.work"))
	source ~/.vimrc.work
endif

" cscope maps
" http://cscope.sourceforge.net/cscope_vim_tutorial.html
if filereadable(expand("$HOME/.cscope_maps.vim"))
	source ~/.cscope_maps.vim
endif
