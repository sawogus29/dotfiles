set clipboard=unnamedplus
let g:camelcasemotion_key = '<leader>'

call plug#begin()
" :PlugInstall
" :PlugClean

" The default plugin directory will be as follows:
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

" Make sure you use single quotes
Plug 'tpope/vim-repeat'
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'

call plug#end()
