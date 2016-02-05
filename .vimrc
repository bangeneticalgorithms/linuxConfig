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
nnoremap <space> za
nn       <F3> :GundoToggle<CR>
nn       <F4> :GitGutterLineHighlightsToggle<CR>
nn       <F5> :TlistToggle<CR>
nn       <F6> :setlocal spell! spell?<CR>
nn       <F7> :setlocal spell! spell?<CR>
nn       <F8> :NERDTreeToggle<CR>

nnoremap ; :

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <tab> :tabn<CR>
nnoremap <S-tab> :tabp<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

noremap <C-F> <C-W><C-F>

set splitright
set splitbelow

set ignorecase

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2

syntax on

set noswapfile

set fdm=indent

"nerdtree settings
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
"ycm settings
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
autocmd CompleteDone * pclose
"airline settings
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
"vim-gitgutter settings
let g:gitgutter_max_signs = 2000
highlight clear SignColumn
set updatetime=500

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle
Plugin 'VundleVim/Vundle.vim'

" Nerd tree 
Plugin 'scrooloose/nerdtree'

" Vim-fugitive
Plugin 'tpope/vim-fugitive'

" YoucompleteMe
Plugin 'Valloric/YouCompleteMe'

" Vim-airline
Plugin 'bling/vim-airline'

" Syntastic
Plugin 'scrooloose/syntastic'

"Vim-Latex
Plugin 'jcf/vim-latex'

"Vim-nerdtree-tabs
Plugin 'jistr/vim-nerdtree-tabs'

"Git gutter
Plugin 'airblade/vim-gitgutter'

"Tagbar
Plugin 'majutsushi/tagbar'

"Nerdtree Execute
Plugin 'ivalkeen/nerdtree-execute'

"Nerd commenter
Plugin 'ddollar/nerdcommenter'

"Taglist
"Plugin 'taglist.vim'

"Gotham
Plugin 'whatyouhide/vim-gotham'

"vim-surround
Plugin 'anyakichi/vim-surround'

"Endwise
Plugin 'alpaca-tc/vim-endwise'

"Javascript
Plugin 'pangloss/vim-javascript'

"Gundo
Plugin 'sjl/Gundo.vim'

"Python mode
Plugin 'klen/python-mode'


"Revolution"
Plugin 'CruizeMissile/Revolution.vim'

"YCM-Generator
Plugin 'rdnetto/YCM-Generator'

"Colorscheme gruvbox
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on
