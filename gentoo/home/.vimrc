set nocompatible

if has("gui_running")
    set guifont="Iosevka Custom:size=12:style=Bold"
    colorscheme linuxt
    set go=
else
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    " Display Settings
    " colorscheme gruvbox
    set cursorline

    hi clear
    set ttymouse=sgr
    set t_Co=256
    set termguicolors
    colo matrix
    hi LineNr ctermfg=white
endif

" Plugin Session
call plug#begin('~/.vim/plugged')
Plug 'chrisbra/Colorizer'
Plug 'vivien/vim-linux-coding-style'
Plug 'vim-syntastic/syntastic'
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
let g:vimtex_view_method='mupdf'
let g:tex_comment_nospell=1
let g:vimtex_compiler_progname = 'latexmk'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" linux coding style C
" op let g:linuxsty_patterns = [ "/usr/src/", "/linux" ]
nnoremap <silent> <leader>a :LinuxCodingStyle<cr>

" Shortcuts
let mapleader  = "," 
nnoremap <Leader>c :ColorHighlight<CR>
inoremap <silent>jk <ESC>:noh<CR>
inoremap <silent>xv <ESC>:noh<CR>
map <silent><leader>w :w!<cr>
map <silent><leader>q :q<cr>
" map <silent><leader>c ZZ
set pastetoggle=<F3>
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <silent><Enter> :noh<CR>
inoremap {{ {}<Left>
inoremap (( ()<Left>
inoremap [[ []<Left>
inoremap {<CR> {<CR>}<Esc>O

" Cursor Settings
let &t_SI = "\<Esc>[6 q" " Vertical bar in insert mode
let &t_EI = "\<Esc>[2 q" " Block in normal mode
let &t_SR = "\<esc>[4 q" " Underline in replace mode

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
set clipboard=unnamedplus
set mouse=nicr


" fix annoying shit that clears clipboard on exit
if executable("xsel")

  function! PreserveClipboard()
    call system("xsel -ib", getreg('+'))
  endfunction

  function! PreserveClipboadAndSuspend()
    call PreserveClipboard()
    suspend
  endfunction

  autocmd VimLeave * call PreserveClipboard()
  nnoremap <silent> <c-z> :call PreserveClipboadAndSuspend()<cr>
  vnoremap <silent> <c-z> :<c-u>call PreserveClipboadAndSuspend()<cr>

endif

" Scrolling
set scrolloff=8  
set sidescrolloff=15
set sidescroll=1

" Editor Settings
set ignorecase
set noexpandtab
set smartcase
set smartindent
set smarttab
set magic
set bs=indent,eol,start
set tabstop=8
set shiftwidth=4
set softtabstop=4
set wildmenu wildmode=longest:full,full
" Shrugs
filetype indent on


" System Settings
set confirm
set nobackup
set history=5000

" Matlab
autocmd BufEnter *.m compiler mlint

" Skeleton Files
if has("autocmd")
    augroup templates
	autocmd BufNewFile main.* silent! execute '0r ~/.vim/skeletons/skeleton-main.'.expand("<afile>:e")
	autocmd BufNewFile *.* silent! execute '0r ~/.vim/skeletons/skeleton.'.expand("<afile>:e")
	autocmd BufNewFile * silent! %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
    augroup END
endif
