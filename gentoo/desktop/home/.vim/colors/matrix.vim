    " vim:set ts=8 sts=2 sw=2 tw=0:
" Name: chlordane.vim
" Maintainer:	Kojo Sugita
" Last Change:  2008-11-22
" Revision: 1.2

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'matrix'

hi Cursor	guifg=#000000 guibg=#00FF00
hi lCursor	guifg=#000000 guibg=#00FF00
hi CursorLine	guibg=#060606 gui=none term=none cterm=none
hi CursorIM	guifg=#000000 guibg=#00FF00
hi Directory	guifg=#77dd88 guibg=#000000 gui=bold
hi DiffAdd	guifg=#77dd88 guibg=#3a553a gui=none
hi DiffChange	guifg=#77dd88 guibg=#3a553a gui=none
hi DiffDelete	guifg=#223322 guibg=#223322 gui=none
hi DiffText	guifg=#77dd88 guibg=#448844 gui=bold
hi ErrorMsg	guifg=#ee1111 guibg=#000000
hi VertSplit	guifg=#223322 guibg=#223322
hi Folded	guifg=#55af66 guibg=#000000
hi FoldColumn	guifg=#557755 guibg=#102010
hi IncSearch	guifg=#223322 guibg=#77dd88 gui=none
hi LineNr	guifg=#446644 guibg=#000000 gui=none
hi CursorLineNr guifg=#226622 gui=underline
hi ModeMsg	guifg=#55af66 guibg=#000000
hi MoreMsg	guifg=#55af66 guibg=#000000
hi Normal	guifg=#479155 guibg=#000000
hi Question	guifg=#55af66 guibg=#000000
hi Search	guifg=#223322 guibg=#55af66 gui=none
hi NonText	guifg=#606060 gui=none
hi SpecialKey	guifg=#707070
"\n, \0, %d, %s, etc...
hi Special	guifg=#55af66 guibg=#000000 gui=none
" status line
hi StatusLine	guifg=#226622 guibg=#000000 gui=none
hi StatusLineNC term=none cterm=none,underline ctermfg=green ctermbg=Black
hi StatusLineNC term=none gui=none,underline guifg=#3a553a guibg=Black
hi Title	guifg=#77dd88 guibg=#223322 gui=none
hi Visual	guifg=#000000 guibg=#448844 gui=none
hi VisualNOS	guifg=#55af66 guibg=#000000
hi WarningMsg	guifg=#77dd88 guibg=#000000
hi WildMenu	guibg=#000000 guifg=#226622

hi Number	guifg=#00cc00 guibg=#000000
hi Char		guifg=#226622 guibg=#000000
hi String	guifg=#226622 guibg=#000000
hi Boolean	guifg=#00FF00 guibg=#000000


highlight MatchParen     ctermfg=NONE ctermbg=NONE cterm=inverse guibg=#000000 guifg=#22FF22

hi Comment	guifg=#446644
hi Constant	guifg=#336622 gui=none
hi Identifier	guifg=#116622
hi Statement	guifg=#007733 gui=none

"Procedure name
hi Function     guifg=#55af66

"Define, def
hi PreProc	guifg=#55af66 gui=none
hi Type		guifg=#55af66 gui=none
hi Underlined	guifg=#77dd88 gui=underline
hi Error	guifg=#ee1111 guibg=#000000
hi Todo		guifg=#223322 guibg=#55af66 gui=none
hi SignColumn   guibg=#000000

if version >= 700
  " Pmenu
  hi Pmenu	guibg=#222222
  hi PmenuSel	guibg=#3a553a guifg=#77dd88
  hi PmenuSbar	guibg=#222222

  " Tab
  hi TabLine	  guifg=#3a553a guibg=black gui=none
  hi TabLineFill  guifg=black guibg=black gui=none
  hi TabLineSel	  guifg=#88ee99 guibg=#447f55 gui=none
endif


