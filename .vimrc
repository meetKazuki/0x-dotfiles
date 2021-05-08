set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ----- Making Vim look good ---------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
"Plugin 'vim-scripts/Conque-GDB'

"------- Git ------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

" ----- altercation/vim-colors-solarized settings -----
"syntax on
"set background=dark
"let g:solarized_termcolors=256
colorscheme molokai

" ----- bling/vim-airline settings -----
set laststatus=2			" Always show statusbar
let g:airline_powerline_fonts = 1	" Fancy arrow symbols, requires a patched font
let g:airline_detect_paste=1		" Show PASTE if in paste mode
let g:airline#extensions#tabline#enabled = 1 " Show airline for tabs too
let g:airline_theme='powerlineish'

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=1000	      " keep 1000 lines of command line history
set number		          " line numbers
set ruler		            " show the cursor position all the time
set showcmd		          " display incomplete commands
set incsearch		        " do incremental searching
set linebreak		        " wrap lines on 'word' boundaries
set scrolloff=3		      " don't let the cursor touch the edge of the viewport
set splitright		      " Vertical splits use right half of screen
set timeoutlen=100	    " Lower ^[ timeout
set fillchars=fold:\ ,	" get rid of obnoxious '-' characters in folds

hi clear SignColumn

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal-as-GUI settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('mouse')		" In many terminal emulators the mouse works just fine, thus enable it.
	set mouse=a
endif

if &t_Co > 2 || has("gui_running")
	syntax on		    " Switch syntax highlighting on, when the terminal has colors
	set hlsearch		" Also switch on highlighting the last used search pattern.
endif
