set nocompatible
syntax on
set showmatch

augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END

" Close NERDTree when exit Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Change cursor following mode
set ttimeoutlen=5	" ESC key delay ( Terminal -> Vim )
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" optional reset cursor on start:
" augroup myCmds
" 	au!
" 	autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

set shortmess+=I
set number
set relativenumber
set incsearch
set hlsearch
set scrolloff=5
set backspace=indent,eol,start " allow backspace over everything
set noshowmode
set hidden
set laststatus=2
set ignorecase
set smartcase
set noerrorbells visualbell t_vb=
set splitbelow
set splitright


" disable Ex mode
nmap Q <Nop>

set mouse+=a

" disable arrow key
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Plugin Key mapping
map <silent> <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged') " Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
