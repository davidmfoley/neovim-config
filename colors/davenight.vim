" forked from 'night'
" hi clear

set background=dark
if exists("syntax_on")
   syntax reset
endif

let colors_name = "davenight"

hi Normal       guifg=#ffffff guibg=#000000

" Search
hi IncSearch    gui=UNDERLINE,BOLD guifg=#f0f0f8 guibg=#d000d0
hi Search       gui=BOLD guifg=#ffd0ff guibg=#c000c0

" Messages
hi ErrorMsg     gui=BOLD guifg=#ffffff guibg=#f00080
hi WarningMsg   gui=BOLD guifg=#ffffff guibg=#f00080
hi ModeMsg      gui=BOLD guifg=#00e0ff guibg=NONE
hi MoreMsg      gui=BOLD guifg=#00ffdd guibg=NONE
hi Question     gui=BOLD guifg=#d0d050 guibg=NONE

" Split area
hi StatusLine   gui=NONE guifg=#000000 guibg=#ffff66
hi StatusLineNC gui=NONE guifg=#606080 guibg=#c8c8d8
hi VertSplit    gui=NONE guifg=#606080 guibg=#c8c8d8
hi WildMenu     gui=NONE guifg=#000000 guibg=#e0e078

" Diff
hi DiffText     gui=NONE guifg=#ffffff guibg=#40a060
hi DiffChange   gui=NONE guifg=#ffffff guibg=#007070
hi DiffDelete   gui=NONE guifg=#ffffff guibg=#40a0c0
hi DiffAdd      gui=NONE guifg=#ffffff guibg=#40a0c0

" Cursor
hi Cursor       gui=NONE guifg=#ffffff guibg=#d86020
hi lCursor      gui=NONE guifg=#ffffff guibg=#e000b0
hi CursorIM     gui=NONE guifg=#ffffff guibg=#e000b0
hi CursorLine     gui=NONE guibg=NONE

" Fold
hi Folded       gui=NONE guifg=#ffffff guibg=#9060c0
hi FoldColumn   gui=NONE guifg=#c0a0ff guibg=#404052

" Other
hi Directory    gui=NONE guifg=#00ffff guibg=NONE
" hi LineNr       gui=NONE guifg=#787894 guibg=NONE
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=#505050 guibg=NONE
hi NonText      gui=BOLD guifg=#8040ff guibg=#383848
hi SpecialKey   gui=BOLD guifg=#60a0ff guibg=NONE
hi Title        gui=BOLD guifg=#f0f0f8 guibg=#9000a0
hi Visual       gui=NONE guifg=#ffffff guibg=#c08040
" hi VisualNOS  gui=NONE guifg=#ffffff guibg=#c08040

" Syntax group
hi Comment      gui=NONE guifg=#909090 guibg=NONE
hi Constant     gui=NONE guifg=#f0f0f8 guibg=NONE
hi String       gui=NONE guifg=#ffcccc guibg=NONE
hi Error        gui=BOLD guifg=#ffffff guibg=#f00080
hi Identifier   gui=NONE guifg=#ffa0ff guibg=NONE
hi Function     gui=NONE guifg=#ed80bb guibg=NONE
hi Ignore       gui=NONE guifg=#303040 guibg=NONE
hi Number       gui=BOLD guifg=#b8b8c8 guibg=NONE
hi PreProc      gui=NONE guifg=#40ffa0 guibg=NONE
hi Special      gui=NONE guifg=#40f8f8 guibg=NONE
hi Statement    gui=NONE guifg=#00d8f8 guibg=NONE
hi Todo         gui=BOLD guifg=#bb4400 guibg=#0080a0
hi Type         gui=BOLD guifg=#00ffe0 guibg=NONE
hi TypeDef      gui=BOLD guifg=#ffb860 guibg=NONE

" local aliases
hi Tag          gui=BOLD guifg=#3388ff guibg=NONE
hi Component    gui=BOLD guifg=#ffbbff guibg=NONE

hi Underlined   gui=UNDERLINE,BOLD guifg=#f0f0f8 guibg=NONE

hi Variable         gui=NONE guifg=#ffff55 guibg=NONE

hi jsFunction         gui=NONE guifg=#00d8f8 guibg=NONE
hi jsFuncName         gui=BOLD guifg=#ffff00 guibg=NONE
hi jsClassName         gui=BOLD guifg=#ffff00 guibg=NONE
hi jsVariableDef         gui=NONE guifg=#33eedd guibg=NONE
hi jsFuncArgs         gui=NONE guifg=#e08065 guibg=NONE
hi jsObjectKey         gui=NONE guifg=#f0f0f5 guibg=NONE
hi jsObject         gui=NONE guifg=#b0b0f5 guibg=NONE
"hi Noise         gui=NONE guifg=#ff0000 guibg=NONE
hi jsParens         gui=NONE guifg=#b0f0f5 guibg=NONE
hi jsIfElseBrackets         gui=NONE guifg=#f0b0f5 guibg=NONE
hi jsFuncBraces         gui=NONE guifg=#50f085 guibg=NONE
hi jsObjectBraces         gui=NONE guifg=#f0f055 guibg=NONE
"hi jsObjectValue         gui=NONE guifg=#ff0000 guibg=NONE
hi jsObjectKeyCommand         gui=NONE guifg=#ffff00 guibg=NONE
hi jsFlowTypeStatement         gui=NONE guifg=#ffff00 guibg=NONE
hi jsFlowDefinition         gui=NONE guifg=#ffff00 guibg=NONE
hi jsFlowFunctionGroup         gui=NONE guifg=#ffff00 guibg=NONE
hi jsGlobalObjects  gui=NONE guifg=#00d8f8 guibg=NONE
hi jsFuncCall         gui=BOLD guifg=#ffff00 guibg=NONE

hi xmlAttrib         gui=NONE guifg=#ffff00 guibg=NONE
hi xmlTag         gui=NONE guifg=#60ffff guibg=NONE
hi xmlEndTag         gui=NONE guifg=#60ffff guibg=NONE
hi xmlTagName         gui=NONE guifg=#60ffff guibg=NONE

hi tsxTag         gui=NONE guifg=#dddd11 guibg=NONE
hi tsxCloseTag         gui=NONE guifg=#dddd11 guibg=NONE
hi tsxCloseComponentName         gui=NONE guifg=#dddd11 guibg=NONE
hi tsxIntrinsicTagName         gui=NONE guifg=#60ffff guibg=NONE
hi tsxIntrinsicTagName         gui=NONE guifg=#60ffff guibg=NONE

hi! link jsxTagName Tag

hi! link jsxComponentName Component
hi! link jsxCloseComponentName  Component

hi jsxCloseTag         gui=NONE guifg=#dddd11 guibg=NONE
hi jsxIntrinsicTagName         gui=NONE guifg=#60ffff guibg=NONE
hi jsxIntrinsicTagName         gui=NONE guifg=#60ffff guibg=NONE
hi jsxAttrib         gui=NONE guifg=#ffffbb guibg=NONE

"hi link javascriptFunction  


hi typescriptTestGlobal gui=bold guifg=#55ffff
hi typescriptTypeReference gui=bold guifg=#FFB44B
hi typescriptMember guifg=#ffbb44 guibg=NONE gui=NONE
hi typescriptVariableDeclaration gui=bold guifg=#ffff66
hi link typescriptPredefinedType Type
hi link typescriptFuncCallArg Identifier

hi! link typescriptInterfaceName TypeDef

hi typescriptIdentifierName         gui=NONE guifg=#dd9944 guibg=NONE
hi typescriptVariable         gui=NONE guifg=#60ffff guibg=NONE
hi typescriptConditionalParen         gui=NONE guifg=#eeff55 guibg=NONE
hi typescriptNull         gui=NONE guifg=#f0b0f5 guibg=NONE

"hi link typescriptParenExpression Variable
hi Pmenu guibg=#222222
hi PmenuSel guibg=#444444


" nerdtree
hi NERDTreeCWD         guibg=#ffff55 guifg=#000000
hi NERDTreeDir         guifg=#ffdd88
hi NERDTreeSlash         guifg=#ff8888
hi NERDTreeOpenable   guifg=#ffff00
hi NERDTreeClosable   guifg=#ffff00
hi FileSourceTs  guifg=#99fddf
hi FileSourceTsx  guifg=#bbff99
hi FileSourceTestTs  guifg=#ffccff
hi FileSourceTestTsx  guifg=#ffccff
hi FileSourceScss  guifg=#ffff66

hi FileSourceLog  guifg=#3388ff

hi Conceal guifg=#FF2222 guibg=#000 gui=BOLD
