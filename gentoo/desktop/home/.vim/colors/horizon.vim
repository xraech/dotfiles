" Name:         Horizon-Luna
" Description:  Editted version of horizon theme to match my xresources
" colors, credits to the original author, Kien Nguyen-Tuan
" Author:       Kien Nguyen-Tuan <kienn2609@gmail.com>
" Maintainer:   Raech <raech.plays@gmail.com>
" Website:      no website.
" License:      Vim License (see `:help license`)
" Last Updated: Thursday March 18 12:38:35 2021

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Horizon] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'horizon'

hi! ColorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#2e303e
hi! CursorColumn cterm=NONE gui=NONE ctermbg=235 guibg=#2e303e
hi! CursorLine cterm=NONE gui=NONE ctermbg=235 guibg=#101010
hi! Comment cterm=italic gui=italic ctermfg=242 guifg=#6f5541
hi! Constant cterm=NONE gui=NONE ctermfg=209 guifg=#5f4547
hi! Cursor cterm=NONE gui=NONE ctermbg=242 ctermfg=242 guibg=#e4aa80 guifg=#392313
hi! CursorLineNr cterm=NONE gui=NONE ctermbg=235 ctermfg=251 guibg=#101010 guifg=#7b745b 
hi! Delimiter cterm=NONE gui=NONE ctermfg=44 guifg=#8c6b48
hi! DiffAdd cterm=NONE gui=NONE ctermbg=238 ctermfg=7 guibg=#45493e guifg=#c0c5b9
hi! DiffChange cterm=NONE gui=NONE ctermbg=23 ctermfg=241 guibg=#384851 guifg=#b3c3cc
hi! DiffDelete cterm=NONE gui=NONE ctermbg=52 ctermfg=167 guibg=#53343b guifg=#ceb0b6
hi! DiffText cterm=NONE gui=NONE ctermbg=24 ctermfg=233 guibg=#5b7881 guifg=#1d1d1d
hi! Directory cterm=NONE gui=NONE ctermfg=203 guifg=#575a4b
hi! Error cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! ErrorMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! WarningMsg cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! EndOfBuffer cterm=NONE gui=NONE ctermbg=233 ctermfg=236 guibg=#1d1d1d guifg=#2e303e
hi! NonText cterm=NONE gui=NONE ctermbg=233 ctermfg=233 guifg=#2e303e guibg=#1d1d1d
hi! SpecialKey cterm=NONE gui=NONE ctermbg=203 ctermfg=235 guibg=#575a4b guifg=#2e303e
hi! Folded cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1d1d1d guifg=#6f5541
hi! FoldColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1d1d1d guifg=#6f5541
hi! Function cterm=NONE gui=NONE ctermfg=37 guifg=#424949
hi! Identifier cterm=italic gui=italic ctermfg=203 guifg=#575a4b
hi! Statement cterm=bold gui=bold ctermfg=171 guifg=#5f4547
hi! Include cterm=NONE gui=NONE ctermfg=171 guifg=#5f4547
hi! LineNr cterm=NONE gui=NONE ctermbg=233 ctermfg=239 guibg=#1d1d1d guifg=#6f5541
hi! MatchParen cterm=NONE gui=NONE ctermbg=237 ctermfg=255 guibg=#424949 guifg=#ffffff
hi! MoreMsg cterm=NONE gui=NONE ctermfg=48 guifg=#626c39
hi! Normal cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#1d1d1d guifg=#7b745b
hi! Operator cterm=NONE gui=NONE ctermfg=37 guifg=#424949
hi! Pmenu cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guifg=#1d1d1d guibg=#7b745b
hi! PmenuSbar cterm=NONE gui=NONE ctermbg=236 guibg=#3d425b
hi! PmenuSel cterm=NONE gui=NONE ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
hi! PmenuThumb cterm=NONE gui=NONE ctermbg=233 guibg=#1d1d1d
hi! PreProc cterm=NONE gui=NONE ctermfg=150 guifg=#626c39
hi! Question cterm=NONE gui=NONE ctermfg=150 guifg=#626c39
hi! QuickFixLine cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guibg=#272c42 guifg=#1d1d1d
hi! Search cterm=NONE gui=NONE ctermbg=216 ctermfg=234 guibg=#e4aa80 guifg=#392313
hi! SignColumn cterm=NONE gui=NONE ctermbg=233 ctermfg=242 guibg=#1d1d1d guifg=#6f5541
hi! Special cterm=NONE gui=NONE ctermfg=203 guifg=#575a4b
hi! SpellBad cterm=undercurl gui=undercurl ctermbg=95 ctermfg=252 guisp=#a7623a
hi! SpellCap cterm=undercurl gui=undercurl ctermbg=24 ctermfg=252 guisp=#424949
hi! SpellLocal cterm=undercurl gui=undercurl ctermbg=23 ctermfg=203 guisp=#575a4b
hi! SpellRare cterm=undercurl gui=undercurl ctermbg=97 ctermfg=252 guisp=#5f4547
hi! StatusLine cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#7b745b guifg=#3B2B2C
hi! StatusLineTerm cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#7b745b guifg=#3B2B2C
hi! StatusLineNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#424949 guifg=#0f1117
hi! StatusLineTermNC cterm=reverse gui=reverse ctermbg=237 ctermfg=233 guibg=#424949 guifg=#0f1117
hi! StorageClass cterm=italic gui=italic ctermfg=37 guifg=#424949
hi! String cterm=NONE gui=NONE ctermfg=209 guifg=#8c6b48
hi! Structure cterm=NONE gui=NONE ctermfg=37 guifg=#424949
hi! TabLine cterm=NONE gui=NONE ctermbg=245 ctermfg=234 guibg=#3B2B2C guifg=#17171b
hi! TabLineFill cterm=reverse gui=reverse ctermbg=234 ctermfg=245 guibg=#17171b guifg=#3B2B2C
hi! TabLineSel cterm=NONE gui=NONE ctermbg=234 ctermfg=247 guibg=#575a4b guifg=#9a9ca5
hi! Title cterm=bold gui=bold ctermfg=37 guifg=#424949
hi! Todo cterm=inverse,bold gui=inverse,bold ctermbg=59 ctermfg=48 guibg=#45493e guifg=#626c39
hi! Type cterm=NONE gui=NONE ctermfg=209 guifg=#8c6b48
hi! Underlined cterm=underline gui=underline ctermfg=37 guifg=#424949
hi! VertSplit cterm=bold gui=bold ctermbg=233 ctermfg=233 guibg=#0f1117 guifg=#0f1117
hi! Visual cterm=NONE gui=NONE ctermbg=236 guibg=#101010
hi! WildMenu cterm=NONE gui=NONE ctermbg=255 ctermfg=234 guibg=#d4d5db guifg=#17171b
hi! diffAdded cterm=NONE gui=NONE ctermfg=48 guifg=#626c39
hi! diffRemoved cterm=NONE gui=NONE ctermfg=203 guifg=#a7623a
hi! ALEErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! ALEWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#1d1d1d guifg=#8c6b48
hi! ALEVirtualTextError cterm=NONE gui=NONE ctermfg=203 guifg=#a7623a
hi! ALEVirtualTextWarning cterm=NONE gui=NONE ctermfg=209 guifg=#8c6b48
hi! CtrlPMode1 cterm=NONE gui=NONE ctermbg=241 ctermfg=234 guibg=#5a5f72 guifg=#17171b
hi! EasyMotionShade cterm=NONE gui=NONE ctermfg=239 guifg=#3d425b
hi! EasyMotionTarget cterm=NONE gui=NONE ctermfg=48 guifg=#626c39
hi! EasyMotionTarget2First cterm=NONE gui=NONE ctermfg=209 guifg=#8c6b48
hi! EasyMotionTarget2Second cterm=NONE gui=NONE ctermfg=209 guifg=#8c6b48
hi! GitGutterAdd cterm=NONE gui=NONE ctermbg=233 ctermfg=48 guibg=#1d1d1d guifg=#626c39
hi! GitGutterChange cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#1d1d1d guifg=#575a4b
hi! GitGutterChangeDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=109 guibg=#1d1d1d guifg=#575a4b
hi! GitGutterDelete cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! Sneak cterm=NONE gui=NONE ctermbg=140 ctermfg=234 guibg=#5f4547 guifg=#575a4b
hi! SneakScope cterm=NONE gui=NONE ctermbg=236 ctermfg=242 guibg=#272c42 guifg=#7b745b
hi! SyntasticErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! SyntasticStyleErrorSign cterm=NONE gui=NONE ctermbg=233 ctermfg=203 guibg=#1d1d1d guifg=#a7623a
hi! SyntasticStyleWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#1d1d1d guifg=#8c6b48
hi! SyntasticWarningSign cterm=NONE gui=NONE ctermbg=233 ctermfg=209 guibg=#1d1d1d guifg=#8c6b48
hi! ZenSpace cterm=NONE gui=NONE ctermbg=203 guibg=#a7623a

hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link jsArrowFunction Operator
hi! link jsClassDefinition Normal
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall Normal
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

if has('nvim')
  let g:terminal_color_0 = '#1d1d1d'
  let g:terminal_color_1 = '#a7623a'
  let g:terminal_color_2 = '#626c39'
  let g:terminal_color_3 = '#8c6b48'
  let g:terminal_color_4 = '#424949'
  let g:terminal_color_5 = '#5f4547'
  let g:terminal_color_6 = '#575a4b'
  let g:terminal_color_7 = '#1d1d1d'
  let g:terminal_color_8 = '#7b745b'
  let g:terminal_color_9 = '#A7623A'
  let g:terminal_color_10 = '#fab38e'
  let g:terminal_color_11 = '#8c6b48'
  let g:terminal_color_12 = '#5f4547'
  let g:terminal_color_13 = '#575a4b'
  let g:terminal_color_14 = '#9a8e6f'
else
  let g:terminal_ansi_colors = ['#1d1d1d', '#a7623a', '#626c39', '#8c6b48', '#424949', '#5f4547', '#575a4b', '#1d1d1d', '#7b745b', '#A7623A', '#fab38e', '#8c6b48', '#5f4547', '#575a4b', '#9a8e6f']
endif

if exists("g:horizon_transparent_bg")
  if g:horizon_transparent_bg==1
    highlight Normal     ctermbg=NONE guibg=NONE
    highlight LineNr     ctermbg=NONE guibg=NONE
    highlight VertSplit ctermbg=NONE guibg=NONE
    highlight EndOfBuffer ctermbg=NONE guibg=NONE
  endif
endif

