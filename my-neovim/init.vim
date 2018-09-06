""" Vim-Plug
call plug#begin()

Plug 'lifepillar/vim-solarized8'
Plug 'Numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-scripts/vim-auto-save'

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

" Remove trailing spaces when saved
autocmd BufWritePre * %s/\s\+$//e


""" Plugin config
" Autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
