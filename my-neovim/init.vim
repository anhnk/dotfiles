""" Vim-Plug
call plug#begin()

Plug 'lifepillar/vim-solarized8'
Plug 'Numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'airblade/vim-gitgutter' " shows git diff in the gutter
Plug 'sheerun/vim-polyglot' " A solid language pack
Plug 'scrooloose/nerdtree' " A tree explorer plugin for vim

call plug#end()


""" Theme
syntax enable
set termguicolors " full-color support
set background=dark
colorscheme solarized8_high


""" Config
" Fix cursor issue in terminator
set guicursor=

set number " turn on line numbers
set nowrap " don't wrap lines that go over a screens width
set cursorline " highlight the line the cursor is on
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab autoindent
set wrap lbr " wrap long lines
set mouse=a " enable mouse

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Remove trailing spaces when saved
autocmd BufWritePre * %s/\s\+$//e


""" Plugin config
" vim-gitgutter
set updatetime=100
