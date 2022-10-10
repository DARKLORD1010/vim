" -----------------------------------------------------------------------------
" Plugin
" -----------------------------------------------------------------------------

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" -----------------------------------------------------------------------------
" Basic Settings
" -----------------------------------------------------------------------------


" Set compatibility to vim only
set nocompatible

" Show line number
set number

" Show Relative Number
" set relativenumber

" Status bar
set laststatus=2

" Automatically wrap text that extends beyond the screen length
set wrap

" Encoding
set encoding=utf-8

" Allows cursor to go till last character in any mode
set virtualedit+=onemore

" Set fonts
set guifont=Fira\ Code\ 10

" Allows cursor to go till last character when pressed '$'
nnoremap $ $l

" -----------------------------------------------------------------------------
" Cursor
" -----------------------------------------------------------------------------

" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" -----------------------------------------------------------------------------
" Plugin settings
" -----------------------------------------------------------------------------

" NERDTree

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Everforest
set background=dark
colorscheme everforest
