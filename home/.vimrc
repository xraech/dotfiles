set nocompatible

" Plugin Session
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'dag/vim-fish'
call plug#end()

" Warp text to FILETYPE
augroup WrapLineInFile
	autocmd!
	autocmd FileType tex setlocal wrap
	autocmd FileType tex silent! setlocal syntax spell spelllang=pt_br
augroup END

" Latex
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:tex_comment_nospell=1
let g:vimtex_compiler_progname = 'latexmk'
" TODO

" Shortcuts
let mapleader  = "," 
inoremap <silent>jk <ESC>:noh<CR>
map <silent><leader>w :w!<cr>
map <silent><leader>q :q<cr>
map <silent><leader>c ZZ
set pastetoggle=<F3>
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <silent><Enter> :noh<CR>
inoremap {{		{}<Left>
inoremap {<CR>	{<CR>}<Esc>O

" Cursor Settings
let &t_SI = "\<Esc>[6 q" " Vertical bar in insert mode
let &t_EI = "\<Esc>[2 q" " Block in normal mode
let &t_SR = "\<esc>[4 q" " Underline in replace mode

" Display Settings
set t_Co=256
"set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark " Setting dark mode
"colorscheme ryuuko
"colorscheme monochrome
"colorscheme handmade-white

"set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" General Settings
set timeout timeoutlen=5000 ttimeoutlen=100
set laststatus=2
set showmode
set relativenumber
set title
set showcmd
syntax on
set hlsearch
set incsearch
set number
set nowrap
set clipboard=unnamed
set mouse=nicr

" Scrolling
set scrolloff=8  
set sidescrolloff=15
set sidescroll=1

" Editor Settings
set ignorecase
set smartcase
set smartindent
set smarttab
set magic
set bs=indent,eol,start
set tabstop=4
set shiftwidth=4

" Shrugs
filetype indent on


" System Settings
set confirm
set nobackup
set history=500

" Matlab
autocmd BufEnter *.m    compiler mlint

" Skeleton Files
if has("autocmd")
	augroup templates
		autocmd BufNewFile main.* silent! execute '0r ~/.vim/skeletons/skeleton-main.'.expand("<afile>:e")
		autocmd BufNewFile *.* silent! execute '0r ~/.vim/skeletons/skeleton.'.expand("<afile>:e")

		autocmd BufNewFile * silent! %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
	augroup END
endif
