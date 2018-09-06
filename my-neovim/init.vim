""" Vim-Plug
call plug#begin()

Plug 'lifepillar/vim-solarized8'
Plug 'Numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair

call plug#end()


""" Theme
syntax on
set background=dark
colorscheme solarized8_high


""" Config
" Fix cursor issue in terminator
set guicursor=

set number " turn on line numbers
set nowrap " don't wrap lines that go over a screens width
set cursorline " highlight the line the cursor is on
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab autoindent

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Remove trailing spaces when saved
autocmd BufWritePre * %s/\s\+$//e


""" Plugin config
" Autosave
