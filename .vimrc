"Use Vim mode instead of pure Vi,
set nocompatible

" display setting
scriptencoding utf-8
set encoding=utf-8  "encoding is used for displaying file

set background=dark
" colors
colorscheme gruvbox

" general settings
set mouse=a
set pastetoggle=<F2>
set cursorline
set number
set incsearch
set t_Co=256
set noerrorbells

"fkey bindings
nnoremap ; :

nnoremap <space> za
nn <F3> zR
nn <F4> zM
nnoremap <S-space> zR
nnoremap <tab> :tabn<CR>
nnoremap <S-tab> :tabp<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_perl = {
    \ 'ctagstype' : 'perl',
    \ 'kinds'     : [
        \ 'p:package:0:0',
        \ 'w:roles:0:0',
        \ 'e:extends:0:0',
        \ 'u:uses:0:0',
        \ 'r:requires:0:0',
        \ 'o:ours:0:0',
        \ 'a:properties:0:0',
        \ 'b:aliases:0:0',
        \ 'h:helpers:0:0',
        \ 's:subroutines:0:0',
        \ 'd:POD:1:0'
    \ ]
\ }


noremap <C-F> <C-W><C-F>

set splitright
set splitbelow
set lcs+=space:·
set ignorecase

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2

set backspace=indent,eol,start

syntax on

set noswapfile

set fdm=indent

"nerdtree settings
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

"airline settings
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '>'
set updatetime=5000

"user defined commands
command! -complete=file -nargs=1 Te tabedit <args>
command! Cr color Revolution
command! Cg color gotham256

"makefile override for tabs / spaces
if has("autocmd")
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

"allow editing of RO files through root save
cmap w!! w !sudo tee % > /dev/null

" Plugins

"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')

"Vundle
"Plugin 'VundleVim/Vundle.vim'

" Nerd tree 
Plug 'preservim/nerdtree'

"perl-support
Plug 'wolfgangmehner/perl-support'

"vim-perl
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'ryuta69/coc-perl', {'do': 'yarn install && yarn build'}


" Jedi vim
"Plugin 'davidhalter/jedi-vim'

"SUper tab
"Plugin 'ervandew/supertab'

" Vim-fugitive
"Plugin 'tpope/vim-fugitive'

" YoucompleteMe
"Plugin 'Valloric/YouCompleteMe'

" Vim-airline
Plug 'vim-airline/vim-airline'

"Plug 'osfameron/perl-tags-vim'

" Syntastic
"Plugin 'scrooloose/syntastic'

"Vim-Latex
"Plugin 'jcf/vim-latex'

"Vim-nerdtree-tabs
"Plugin 'jistr/vim-nerdtree-tabs'

"Git gutter
"Plugin 'airblade/vim-gitgutter'

"Tagbar
Plug 'majutsushi/tagbar'

"Nerdtree Execute
"Plugin 'ivalkeen/nerdtree-execute'

"Nerd commenter
"Plugin 'ddollar/nerdcommenter'

"Taglist
"Plugin 'taglist.vim'

"Gotham
"Plugin 'whatyouhide/vim-gotham'

"vim-surround
"Plugin 'anyakichi/vim-surround'

"Endwise
"Plugin 'alpaca-tc/vim-endwise'

"Javascript
"Plugin 'pangloss/vim-javascript'

"Gundo
"Plugin 'sjl/Gundo.vim'

"Python mode
"Plugin 'klen/python-mode'


"Revolution"
Plug 'CruizeMissile/Revolution.vim'

"YCM-Generator
"Plugin 'rdnetto/YCM-Generator'

"Indent guides esp for python
"Plugin 'nathanaelkane/vim-indent-guides'


"Colorscheme gruvbox
Plug 'morhetz/gruvbox'

"Colorscheme codeschool
""Plugin 'antlypls/vim-colors-codeschool'

"vim.cpp -additional vim c++ syntax highlighting
"Plugin 'octol/vim-cpp-enhanced-highlight'

"Coc.vim code completion
"Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

filetype on
filetype plugin on
"filetype indent on
