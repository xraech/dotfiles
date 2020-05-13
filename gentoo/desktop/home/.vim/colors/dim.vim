highlight clear

if exists("syntax_on")
  syntax reset
endif

"exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "dim"

" Base
highlight SpecialKey     ctermfg=4
highlight TermCursor     cterm=reverse
highlight NonText        ctermfg=12
highlight Directory      ctermfg=4
highlight ErrorMsg       ctermfg=15 ctermbg=1
highlight IncSearch      cterm=reverse
highlight MoreMsg        ctermfg=2
highlight ModeMsg        cterm=NONE
highlight CursorLineNr   ctermfg=3
highlight Question       ctermfg=2
highlight Title          ctermfg=5
highlight WarningMsg     ctermfg=1
highlight WildMenu       ctermfg=0 ctermbg=11
highlight Conceal        ctermfg=7 ctermbg=7
highlight SpellBad       ctermbg=2
highlight SpellRare      ctermbg=5
highlight SpellLocal     ctermbg=14
highlight PmenuSbar      ctermbg=8
highlight PmenuThumb     ctermbg=0
highlight TabLine        cterm=underline ctermfg=0 ctermbg=7
highlight TabLineSel     cterm=NONE
highlight TabLineFill    cterm=reverse
highlight CursorColumn   ctermbg=7
highlight CursorLine     cterm=NONE ctermbg=0
highlight MatchParen     ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Constant       ctermfg=1
highlight Special        ctermfg=5
highlight Identifier     cterm=NONE ctermfg=6
highlight Statement      ctermfg=3
highlight PreProc        ctermfg=5
highlight Type           ctermfg=2
highlight Underlined     cterm=underline ctermfg=5
highlight Ignore         ctermfg=15
highlight Error          ctermfg=15 ctermbg=9
highlight Todo           ctermfg=0 ctermbg=11

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
highlight LineNr       ctermfg=8
highlight Comment      ctermfg=8
highlight ColorColumn  ctermfg=7    ctermbg=8
highlight Folded       ctermfg=7    ctermbg=8
highlight FoldColumn   ctermfg=7    ctermbg=8
highlight Pmenu        ctermfg=15   ctermbg=8
highlight PmenuSel     ctermfg=8    ctermbg=15
highlight SpellCap     ctermfg=7    ctermbg=8
highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE
highlight SignColumn                ctermbg=8

if &background == "light"
  highlight StatusLine   ctermfg=15   ctermbg=0
  highlight StatusLineNC ctermfg=15   ctermbg=0    cterm=NONE
  highlight WildMenu     ctermfg=15   ctermbg=0
else
  highlight StatusLine   ctermfg=0    ctermbg=15
  highlight StatusLineNC ctermfg=0    ctermbg=15    cterm=NONE
  highlight WildMenu     ctermfg=0    ctermbg=15
endif

