"Syntax
if has("syntax")
	syntax on
endif

"Line Numbering
set number

" autoindent
set autoindent smartindent

" clipboard for cut and paste
set clipboard+=unnamedplus

"Plugins
set nocompatible

call plug#begin()

Plug 'tanvirtin/monokai.nvim'

"syntax and indent support
Plug 'sheerun/vim-polyglot'

"Nerdtree file manager
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }

"autopairs
Plug 'LunarWatcher/auto-pairs'

"simple autocomplete
Plug 'maxboisvert/vim-simple-complete'

call plug#end()

"Nerdtree Hotkey
map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-t> :NERDTreeToggle<CR>

"colorscheme
colorscheme monokai
