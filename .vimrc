" Use Vim mode instead of pure Vi,
set nocompatible

" display setting
scriptencoding utf-8
set encoding=utf-8  "encoding is used for displaying file

" colors
if has('termguicolors')
  set termguicolors
endif

colorscheme gruvbox


" For dark version.
set background=dark


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
filetype plugin indent on

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
let g:airline_theme = 'gruvbox_material'



"vim-gitgutter settings
let g:gitgutter_max_signs = 2000
highlight clear SignColumn
set updatetime=500

"user defined commands
command! -complete=file -nargs=1 Te tabedit <args>
command! Cr color gruvbox
command! Cg color gotham256

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Code Completion
Plug 'ycm-core/YouCompleteMe'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Colroschmes
" Gruvbox
Plug 'morhetz/gruvbox'

" Gruvbox material
Plug 'sainnhe/gruvbox-material'
" gotham
Plug 'whatyouhide/vim-gotham'


" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
