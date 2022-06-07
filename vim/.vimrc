"Specify a directory for plugins
"Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }

"Initialize plugin system
call plug#end()

"Set theme
colorscheme onehalfdark
set termguicolors
set cursorline
set t_Co=256

"Disable compatibility with vi which can cause unexpected issues.
set nocompatible

set incsearch

"Add line numbers
set number

"Show relative line numbers
set relativenumber

"Enable syntax highlighting
syntax on

"Indentation settings for using 4 spaces instead of tabs.
"Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

"Reduce the update time
set updatetime=10

"Reduce the delay when pressing keys
set ttimeoutlen=10

"Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

"Enable plugins and load plugin for detected filetype.
filetype plugin on

"Load an indent file for the detected filetype.
filetype indent on

"Hide the tilde character on EOF blank lines.
highlight EndOfBuffer ctermfg=bg ctermbg=NONE 

"Ignore capital letters during search
set ignorecase

"Override the ignorecase option if searching for capital letters.
"This will allow you to search specifically for capital letters.
set smartcase

"While searching through a file, incrementally highlight matching characters as you type.
set incsearch

"Show matching words during a search.
set showmatch

"Eable autocompletion menu after pressing TAB.
set wildmenu

"Make wildmenu behave similar to Bash completion.
set wildmode=list:longest

"There are certain files that we would never want to edit with Vim.
"Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Prevents backup files before overwriting a file
set nobackup

"This allows you to undo changes to a file even after saving it
set undodir=~/.vim/undodir

"Do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10

"Add extra left column to display any linting, git, or error symbols
set signcolumn=yes

"Add soft vertical visiual limit
set colorcolumn=80

"Give more space to display messages
set cmdheight=2


"Cycle through the buffer list
nnoremap <TAB> :bn<ESC>
nnoremap <S-TAB> :bp<ESC>

"Make semicolon behave like the colon
nnoremap ; :

"File templates
augroup templates
    autocmd BufNewFile *.php 0r ~/.vim/templates/php/basic.php
augroup END
