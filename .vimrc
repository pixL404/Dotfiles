" CONFIG -------------------------------------------------------------- {{{
colorscheme molokai

" disable compatibility mode
set nocompatible

" shift and tab width
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup

" enable file detection
filetype on
filetype plugin on
filetype indent on

" syntax
syntax on

" navigation help
set number
set relativenumber
set cursorline

" visual
set scrolloff=10
set wrap
set showmode

" search
set incsearch
set ignorecase
set smartcase
set noshowmatch

" history
set history=1000

" file completion
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" NERDTree
noremap <leader>n :NERDTreeFocus<CR>
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

set statusline=

" left
set statusline+=\ %F\ %M\ %Y\ %R
" seperator
set statusline+=%=
" right
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
