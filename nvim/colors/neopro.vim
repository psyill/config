" Vim color file
" Name:       neopro.vim
" Maintainer: Brian Wigginton <brian wigginton @ gmail dot com>
" Homepage:   http://github.com/bawigga/vim-neopro

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "neopro"

hi Normal         gui=NONE   guifg=#ffffff   guibg=#080008
hi CursorLine     guibg=#2F314D

hi IncSearch      gui=BOLD   guifg=#fce94f   guibg=#705d00
hi Search         gui=NONE   guifg=#fce94f   guibg=#705d00
hi ErrorMsg       gui=BOLD   guifg=#FE0058   guibg=#3C1616
hi WarningMsg     gui=BOLD   guifg=#FF9907   guibg=NONE
hi ModeMsg        gui=BOLD   guifg=#00FF00   guibg=NONE
hi MoreMsg        gui=BOLD   guifg=#ffffff   guibg=NONE
hi Question       gui=BOLD   guifg=#ffffff   guibg=NONE

hi StatusLine     gui=BOLD   guifg=#888888   guibg=#222222
hi User1          gui=BOLD   guifg=#ffffff   guibg=NONE
hi User2          gui=BOLD   guifg=#ffffff   guibg=NONE
hi StatusLineNC   gui=NONE   guifg=#666666   guibg=#222222
hi VertSplit      gui=NONE   guifg=#666666   guibg=#222222

hi WildMenu       gui=BOLD   guifg=#ffffff   guibg=NONE

hi MBENormal                 guifg=#ffffff   guibg=NONE
hi MBEChanged                guifg=#ffffff   guibg=NONE
hi MBEVisibleNormal          guifg=#ffffff   guibg=NONE
hi MBEVisibleChanged         guifg=#ffffff   guibg=NONE

hi DiffText       gui=NONE   guifg=#ffffff   guibg=NONE
hi DiffChange     gui=NONE   guifg=#ffffff   guibg=NONE
hi DiffDelete     gui=NONE   guifg=#ffffff   guibg=NONE
hi DiffAdd        gui=NONE   guifg=#ffffff   guibg=NONE

hi Cursor         gui=NONE   guifg=#50f050   guibg=#104010
hi lCursor        gui=NONE   guifg=#000000   guibg=#00ff00
hi CursorIM       gui=NONE   guifg=#000000   guibg=#00ff00

hi Folded         gui=italic guifg=#ffffff   guibg=NONE
hi FoldColumn     gui=NONE   guifg=#ffffff   guibg=NONE

hi Directory      gui=NONE   guifg=#ffffff   guibg=NONE
hi LineNr         gui=NONE   guifg=#666666   guibg=#222222
hi NonText        gui=BOLD   guifg=#666666   guibg=#111111
hi SpecialKey     gui=BOLD   guifg=#ffffff   guibg=NONE
hi Title          gui=BOLD   guifg=#ffffff   guibg=NONE
hi Visual         gui=NONE   guifg=#EEEED3   guibg=#544D8C

hi Boolean        gui=NONE   guifg=#0094FF   guibg=NONE      ctermfg=cyan
hi Comment        gui=NONE   guifg=#508050   guibg=#102010   ctermfg=darkgreen
hi Constant       gui=NONE   guifg=#3EF3FF   guibg=#00363F   ctermfg=cyan
hi Conditional    gui=NONE   guifg=#85B2FE   guibg=#1C3644   ctermfg=lightblue
hi Function       gui=NONE   guifg=#FF00BF   guibg=#3B0025
hi String         gui=NONE   guifg=#8FD4FF   guibg=#02162F   ctermfg=lightcyan
hi Error          gui=NONE   guifg=#FE0058   guibg=#330000
hi Identifier     gui=NONE   guifg=#85B2FE   guibg=#1C3644
hi Ignore         gui=NONE
hi Keyword        gui=NONE   guifg=#909090   guibg=#202020
hi Label          gui=NONE   guifg=#9FFD39   guibg=#33570F   ctermfg=darkyellow
hi Number         gui=NONE   guifg=#FBFFA1   guibg=NONE      ctermfg=yellow
hi PreProc        gui=NONE   guifg=#c0b0d0   guibg=#280050   ctermfg=darkblue
hi Special        gui=NONE   guifg=#9A79FC   guibg=#321F57
hi SpecialChar    gui=NONE   guifg=#ffffff   guibg=NONE
hi Statement      gui=NONE   guifg=#909090   guibg=#202020   ctermfg=gray          cterm=reverse
hi Todo           gui=BOLD   guifg=#FFD500   guibg=#605000
hi Type           gui=NONE   guifg=#FF00BF   guibg=#3B0025
hi Underlined     gui=BOLD   guifg=#ffffff   guibg=NONE
hi TaglistTagName gui=BOLD   guifg=#ffffff   guibg=NONE

" LSP
hi LspInlayHint   gui=italic guifg=#c04000   guibg=#180800

" PERL
hi perlSpecialMatch   gui=NONE   guifg=#ffffff   guibg=NONE
hi perlSpecialString  gui=NONE   guifg=#ffffff   guibg=NONE

" JavaScript
hi link javaScriptLabel Label
hi link javaScriptThis Number

" HTML
hi htmlStatement      gui=NONE   guifg=#FF00BF   guibg=#3B0025
hi htmlTag            gui=NONE   guifg=#ffffff   guibg=NONE

" CSS
hi link cssBraces      Normal
hi link cssIdentifier  Label
hi link cssClassName   Label
hi link cssTagName     Function
hi link cssBoxProp     Special
hi link cssFontRender  Special
hi link cssFontProp    Special
hi link cssTextProp    Special
hi link cssColorProp   Special
hi link cssRenderProp  Special
hi link cssgeneratedContentProp  Special
hi link cssCommonAttr  WarningMsg
hi link cssRenderAttr  WarningMsg
hi link cssBoxAttr     WarningMsg

" C/C++
" { }
hi cBlock             gui=NONE   guifg=NONE      guibg=NONE
" [ ]
hi cBracket           gui=NONE   guifg=NONE      guibg=NONE
" /* */
hi cComment           gui=NONE   guifg=NONE      guibg=NONE
" //
hi cCommentL          gui=NONE   guifg=NONE      guibg=NONE
" if
hi cConditional       gui=NONE   guifg=#726b86   guibg=#1f1a2f   ctermfg=darkgreen
hi cCppString         gui=NONE   guifg=NONE      guibg=NONE
hi cConstant          gui=NONE   guifg=NONE      guibg=NONE
" #define
hi cDefine            gui=NONE   guifg=NONE      guibg=NONE
" #include
hi cInclude           gui=NONE   guifg=#521cff   guibg=#150842   ctermfg=darkblue
" <file.h>
hi cIncluded          gui=NONE   guifg=#1a5fff   guibg=#071840   ctermfg=lightblue      cterm=bold
" default
hi cLabel             gui=NONE   guifg=NONE      guibg=NONE
hi cNumber            gui=NONE   guifg=NONE      guibg=NONE
" ( )
hi cParen             gui=NONE   guifg=NONE      guibg=NONE
" #if
hi cPreCondit         gui=italic guifg=#c0b0d0   guibg=#280050   ctermfg=gray           cterm=reverse
" #pragma
hi cPreProc           gui=NONE   guifg=#c0b0d0   guibg=#280050   ctermfg=gray           cterm=reverse
" while
hi cRepeat            gui=NONE   guifg=#658278   guibg=#162e26   ctermfg=darkgreen
hi cStatement         gui=NONE   guifg=NONE      guibg=NONE
" const
hi cStorageClass      gui=NONE   guifg=#ff006b   guibg=#520022   ctermfg=darkmagenta
hi cString            gui=NONE   guifg=NONE      guibg=NONE
hi cStructure         gui=NONE   guifg=#00ff76   guibg=#004420   ctermfg=lightgreen     cterm=bold
" void bool
hi cType              gui=NONE   guifg=NONE      guibg=NONE
" public private
hi cppAccess          gui=NONE   guifg=#00ff11   guibg=#004c05   ctermfg=green
" false true
hi cppBoolean         gui=NONE   guifg=NONE      guibg=NONE
" *_cast
hi cppCast            gui=NONE   guifg=#ffff00   guibg=#616100   ctermfg=lightyellow    cterm=bold
" nullptr
hi cppConstant        gui=NONE   guifg=NONE      guibg=NONE
" noexcept
hi cppExceptions      gui=NONE   guifg=NONE      guibg=NONE
" explicit
hi cppModifier        gui=NONE   guifg=#ff0d00   guibg=#610500   ctermfg=red
" operator
hi cppOperator        gui=NONE   guifg=#ffce00   guibg=#604e00   ctermfg=darkyellow
" constexpr decltype
hi cppStorageClass    gui=NONE   guifg=#ff006b   guibg=#520022   ctermfg=magenta
" delete this using
hi cppStatement       gui=NONE   guifg=#128fff   guibg=#04233e   ctermfg=cyan
" class namespace typename
hi cppStructure       gui=NONE   guifg=#00ff76   guibg=#004420   ctermfg=lightgreen     cterm=bold
" auto
hi cppType            gui=NONE   guifg=#ff0d00   guibg=#610500

" Vim Interface
hi SignColumn         gui=NONE   guifg=#666666   guibg=#222222

" NERDTree
hi Directory          gui=NONE   guifg=#85B2FE   guibg=#1C3644

" vim
hi link vimCommand    Special
hi link vimGroup      WarningMsg

hi Pmenu          gui=NONE   guifg=#ffffff   guibg=#222222
hi PmenuSel       gui=BOLD   guifg=#ffffff   guibg=#666666
hi PmenuSbar      gui=BOLD   guifg=#00ff00   guibg=#222222
hi PmenuThumb     gui=BOLD   guifg=#ffffff   guibg=#222222

hi SpellBad     gui=undercurl guisp=#fe0058
hi SpellRare    gui=undercurl guisp=#cc66cc
hi SpellLocal   gui=undercurl guisp=#cccc66
hi SpellCap     gui=undercurl guisp=#66cccc

hi MatchParen     gui=NONE   guifg=#fce94f   guibg=#705d00

" cmp-nvim (autocompletion plugin)

" Highlight group for unmatched characters of each completion field.
" hi CmpItemAbbr
" Highlight group for unmatched characters of each deprecated completion field.
" hi CmpItemAbbrDeprecated
" Highlight group for matched characters of each completion field. Matched
" characters must form a substring of a field which share a starting position.
" hi CmpItemAbbrMatch
" Highlight group for fuzzy-matched characters of each completion field.
" hi CmpItemAbbrMatchFuzzy
" Highlight group for the kind of the field. NOTE: `kind` is a symbol after each
" completion option.
" hi CmpItemKind
" Highlight group for the kind of the field for a specific `lsp.CompletionItemKind`.
" If you only want to overwrite the `method` kind's highlight group, you can do this:
"
"   highlight CmpItemKindMethod guibg=NONE guifg=Orange
"
" hi CmpItemKind%KIND_NAME%
" The menu field's highlight group.
hi CmpItemMenu gui=NONE guifg=#808080 guibg=#101010

