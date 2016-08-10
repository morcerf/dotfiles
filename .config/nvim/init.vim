"""""""""" VUNDLE
" initialize, set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""" Vim plugins via Vundle
Plugin 'VundleVim/Vundle.vim' " required
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
""" Vim themes via Vundle
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'whatyouhide/vim-gotham'
Plugin 'zenorocha/dracula-theme', { 'rtp': 'vim/' }
Plugin 'sickill/vim-monokai'
Plugin 'joshdick/onedark.vim'
Plugin 'jdkanani/vim-material-theme'
" end initialization
call vundle#end()             " required
filetype plugin indent on     " required
"filetype plugin on " use this instead to ignore plugin indent changes


"""""""""" PLUGIN SETTINGS
""" NERDTree
" Auto open NERDTree only if vim is open without arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Remap NERDTreeToggle to CTRL+\
map <C-\> :NERDTreeToggle<CR>
""" Syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
""" CtrlP
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current dir, instead of project root
let g:ctrlp_working_path_mode = 0
" Ignore files in .gitignore
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Use Ag for faster search
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
""" Fzf
" Respects .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


"""""""""" VIM SETTINGS
" Default utf8 and 256 colors 
set encoding=utf-8  " Set utf8
set t_Co=256        " Set 256 color

" Default syntax
syntax on
set background=dark
colors monokai

" General
set number          " Show line numbers
set ruler           " Show row and column ruler information
set cursorline      " Show horizontal line on current line
set wildmenu        " Show visual autocomplete for command menu
set lazyredraw      " Redraw screen only when need to
set updatetime=1000 " Lengths use by some plugins before triggering update
set undolevels=500  " Number of undo levels

" Indentations 
set smarttab        " Enable smart-tabs
set expandtab       " Use spaces instead of tabs
set autoindent      " Auto-indent new lines
set smartindent     " Enable smart-indent
set tabstop=4       " Number of virtual spaces per tab
set softtabstop=4   " Number of spaces per Tab
set shiftwidth=4    " Number of auto-indent spaces

" Wraps and line breaks
set wrap            " Wrap lines
set linebreak       " Break lines at word (requires Wrap lines)
set showbreak=\ \   " Wrap-broken line prefix

" Folding
set foldenable        " Enable folding
set foldmethod=indent " Fold based on indentation level
set foldlevelstart=1  " Start with fold level 3 on new buffer

" Margin guide - 80 characters
set colorcolumn=80  " Put a line-length marker
hi ColorColumn ctermbg=237 guibg=#3c3d37

" Tab line settings
hi TabLineFill ctermbg=DarkGray ctermfg=DarkGray
hi TabLine ctermbg=DarkGray ctermfg=15 cterm=None
hi TabLineSel ctermbg=Black ctermfg=15 cterm=None
hi Title ctermfg=15 ctermbg=None cterm=None

" Status line settings
set laststatus=2    " Always on
set statusline=[%n]\ %f
set statusline+=%=
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=\ 
set statusline+=%l:%c

" Command line settings
set showcmd         " Show command in bottom bar
set cmdheight=2     " Command line height

" Backspace options
set backspace=indent,eol,start  " Backspace behaviour
set whichwrap+=<,>,h,l

" Highlight matching brackets
set showmatch       " Highlight matching brace
set mat=5           " How many tenths of a second to blink matching brackets

" Visual bell
set errorbells      " Beep or flash screen or errors
set visualbell      " Use visual bell (no beeping)

" Search options
set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set gdefault        " Always substitute all matches in a line
set incsearch       " Searches for strings incrementally

" Turn backup off
set nobackup
set nowb
set noswapfile
   