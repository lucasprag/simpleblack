scriptencoding utf-8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="simpleblack"

" ==========================
" Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
" Examples: colors: https://jonasjacek.github.io/colors/

let s:simpleBlack = {'gui': '#000000', 'cterm256': 'black'}
let s:simpleBlack2 = {'gui': '#121212', 'cterm256': '233'}

let s:simpleGray = {'gui': '#262626', 'cterm256': '235'}
let s:simpleGray2 = {'gui': '#3a3a3a', 'cterm256': '237'}
let s:simpleGray3 = {'gui': '#4e4e4e', 'cterm256': '239'}
let s:simpleGray4 = {'gui': '#626262', 'cterm256': '241'}

let s:simpleSteel = {'gui': '#DEDEDE', 'cterm256': '253'}
let s:simpleWhite = {'gui': '#F8F8F8', 'cterm256': '231'}
let s:simpleIndianRed = {'gui': '#ff5f87', 'cterm256': '204'}

let s:simpleLightBlue = {'gui': '#afd7ff', 'cterm256': '153'}
let s:simpleBlue = {'gui': '#5f87af', 'cterm256': '67'}
let s:simpleBlue2 = {'gui': '#91AADF', 'cterm256': '110'}

let s:simpleGreen = {'gui': '#57BA37', 'cterm256': '71'}
let s:simpleGoo = {'gui': '#D8FA3B', 'cterm256': '191'}
let s:simpleGold = {'gui': '#F0D50C', 'cterm256': '220'}
let s:simpleOrange = {'gui': '#ff8700', 'cterm256': '208'}
let s:simpleRed = {'gui': '#821A1A', 'cterm256': '1'}
let s:simpleRed2 = {'gui': '#FF0000', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:simpleBlack2, 'none')
call <sid>hi('Cursor', s:simpleBlack, s:simpleSteel, 'none')
call <sid>hi('CursorColumn', s:none, s:simpleBlack2, 'none')
call <sid>hi('CursorLine', s:none, s:simpleGray, 'none')
call <sid>hi('CursorLineNr', s:simpleSteel, s:simpleGray, 'none')
call <sid>hi('Directory', s:simpleBlue, s:simpleBlack, 'none')
call <sid>hi('Folded', s:simpleGray3, s:none, 'none')
call <sid>hi('LineNr', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('SignColumn', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('Normal', s:simpleSteel, s:simpleBlack, 'none')
call <sid>hi('MatchParen', s:simpleWhite, s:simpleBlue2, 'none')
call <sid>hi('Pmenu', s:none, s:none, 'none')
call <sid>hi('PmenuSel', s:none, s:simpleGray2, 'none')
call <sid>hi('Search', s:simpleBlack, s:simpleBlue, 'none')
call <sid>hi('IncSearch', s:simpleBlack, s:simpleBlue, 'none')
call <sid>hi('StatusLine', s:simpleBlue2, s:simpleBlack, 'none')
"call <sid>hi('StatusLineNC', s:simpleBlack, s:simpleBlack, 'none')
call <sid>hi('VertSplit', s:simpleBlack2, s:simpleBlack, 'none')
call <sid>hi('Visual', s:none, s:simpleGray2, 'none')

call <sid>hi('TabLine', s:simpleGray4, s:simpleBlack, 'none')
call <sid>hi('TabLineFill', s:none, s:simpleBlack, 'none')
call <sid>hi('TabLineSel', s:simpleBlue, s:simpleBlack, 'none')

" General
call <sid>hi('Boolean', s:simpleGoo, s:none, 'none')
call <sid>hi('Character', s:simpleGoo, s:none, 'none')
call <sid>hi('Comment', s:simpleBlue, s:none, 'none')
call <sid>hi('Conditional', s:simpleLightBlue, s:none, 'none')
call <sid>hi('Constant', s:simpleOrange, s:none, 'none')
call <sid>hi('Define', s:simpleLightBlue, s:none, 'none')
call <sid>hi('DiffAdd', s:simpleBlack, s:simpleGreen, 'none')
call <sid>hi('DiffChange', s:simpleBlack, s:simpleGold, 'none')
call <sid>hi('DiffDelete', s:simpleWhite, s:simpleRed, 'none')
call <sid>hi('DiffText', s:simpleGray, s:simpleBlue2, 'none')
call <sid>hi('ErrorMsg', s:simpleWhite, s:simpleRed, 'none')
call <sid>hi('Float', s:simpleGoo, s:none, 'none')
call <sid>hi('Function', s:simpleBlue2, s:none, 'none')
call <sid>hi('Identifier', s:simpleGold, s:none, 'none')
call <sid>hi('Keyword', s:simpleGold, s:none, 'none')
call <sid>hi('Label', s:simpleGreen, s:none, 'none')
call <sid>hi('NonText', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('Number', s:simpleGoo, s:none, 'none')
call <sid>hi('Operator', s:simpleIndianRed, s:none, 'none')
call <sid>hi('PreProc', s:simpleIndianRed, s:none, 'none')
call <sid>hi('Special', s:simpleWhite, s:none, 'none')
call <sid>hi('SpecialKey', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('SpellBad', s:none, s:none, 'undercurl')
call <sid>hi('SpellCap', s:none, s:none, 'undercurl')
call <sid>hi('SpellLocal', s:none, s:none, 'undercurl')
call <sid>hi('Statement', s:simpleIndianRed, s:none, 'none')
call <sid>hi('StorageClass', s:simpleGold, s:none, 'none')
call <sid>hi('String', s:simpleGreen, s:none, 'none')
call <sid>hi('Tag', s:simpleGold, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:simpleBlue2, s:none, 'bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:simpleWhite, s:simpleRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:simpleBlack, s:simpleGreen, 'none')
  call <sid>hi('DiffChange', s:simpleBlack, s:simpleGold, 'none')
  call <sid>hi('DiffDelete', s:simpleRed2, s:simpleRed, 'none')
  call <sid>hi('DiffText', s:simpleGray, s:simpleBlue2, 'none')
else
  call <sid>hi('DiffAdd', s:simpleGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:simpleGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:simpleRed2, s:none, 'none')
  call <sid>hi('DiffText', s:simpleSteel, s:simpleBlue2, 'none')
endif

" CSS
call <sid>hi('cssAttr', s:simpleIndianRed, s:none, 'none')
call <sid>hi('cssAttrRegion', s:simpleIndianRed, s:none, 'none')
call <sid>hi('cssBraces', s:simpleWhite, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:simpleSteel, s:none, 'none')
call <sid>hi('cssClassName', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssClassNameDot', s:simpleSteel, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:simpleSteel, s:none, 'none')
call <sid>hi('cssColor', s:simpleSteel, s:none, 'none')
call <sid>hi('cssCommonAttr', s:simpleIndianRed, s:none, 'none')
call <sid>hi('cssCustomProperty', s:simpleGray4, s:none, 'none')
call <sid>hi('cssDefinition', s:simpleGray4, s:none, 'none')
call <sid>hi('cssFunction', s:simpleSteel, s:none, 'none')
call <sid>hi('cssFunctionName', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssIdentifier', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssImportant', s:simpleOrange, s:none, 'none')
call <sid>hi('cssInclude', s:simpleSteel, s:none, 'none')
call <sid>hi('cssMedia', s:simpleGoo, s:none, 'none')
call <sid>hi('cssMediaBlock', s:simpleGoo, s:none, 'none')
call <sid>hi('cssProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssTextProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssAnimationProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssUIProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssTransformProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssTransitionProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssPrintProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssPositioningProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssBoxProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssMarginProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssListProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssTableProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssFontProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssPaddingProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssDimensionProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssRenderProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssColorProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:simpleGray4, s:none, 'none')
call <sid>hi('cssPropDefinition', s:simpleGray4, s:none, 'none')
call <sid>hi('cssPseudoClass', s:simpleGold, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:simpleGold, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:simpleGold, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:simpleSteel, s:none, 'none')
call <sid>hi('cssTagName', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssURL', s:simpleGold, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:simpleIndianRed, s:none, 'none')
call <sid>hi('cssUnits', s:simpleIndianRed, s:none, 'none')
call <sid>hi('cssValueLength', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssValueNumber', s:simpleBlue2, s:none, 'none')
call <sid>hi('cssValueKeyword', s:simpleGreen, s:none, 'none')
call <sid>hi('cssVendor', s:simpleSteel, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:simpleIndianRed, s:none, 'none')
call <sid>hi('htmlEndTag', s:simpleSteel, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:simpleGoo, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:simpleBlue2, s:none, 'none')
call <sid>hi('htmlTag', s:simpleSteel, s:none, 'none')
call <sid>hi('htmlTagName', s:simpleBlue2, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:simpleWhite, s:none, 'none')
call <sid>hi('javaScriptFunction', s:simpleGold, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:simpleBlue2, s:none, 'none')
call <sid>hi('javaScriptMember', s:simpleSteel, s:none, 'none')
call <sid>hi('javaScriptNull', s:simpleGoo, s:none, 'none')
call <sid>hi('javaScriptNumber', s:simpleGoo, s:none, 'none')
call <sid>hi('javaScriptNumber', s:simpleGoo, s:none, 'none')
call <sid>hi('javaScriptParens', s:simpleWhite, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:simpleGoo, s:none, 'none')
call <sid>hi('javaScriptStringS', s:simpleGreen, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:simpleGold, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:simpleGold, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:simpleGold, s:none, 'none')
call <sid>hi('javascriptBraces', s:simpleWhite, s:none, 'none')
call <sid>hi('javascriptBrackets', s:simpleWhite, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:simpleGold, s:none, 'none')
call <sid>hi('javascriptClassName', s:simpleBlue2, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:simpleBlue2, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptDefault', s:simpleGold, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:simpleGray4, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:simpleGray4, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:simpleGray4, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:simpleGray4, s:none, 'none')
call <sid>hi('javascriptDocTags', s:simpleGray4, s:none, 'none')
call <sid>hi('javascriptEndColons', s:simpleWhite, s:none, 'none')
call <sid>hi('javascriptExport', s:simpleIndianRed, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:simpleBlue2, s:none, 'none')
call <sid>hi('javascriptImport', s:simpleIndianRed, s:none, 'none')
call <sid>hi('javascriptLabel', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:simpleIndianRed, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptOperator', s:simpleIndianRed, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:simpleSteel, s:none, 'none')
call <sid>hi('javascriptVariable', s:simpleWhite, s:none, 'none')
call <sid>hi('javascriptYield', s:simpleGold, s:none, 'none')
call <sid>hi('jsArrowFunction', s:simpleGold, s:none, 'none')
call <sid>hi('jsClassDefinition', s:simpleBlue2, s:none, 'none')
call <sid>hi('jsClassKeyword', s:simpleGold, s:none, 'none')
call <sid>hi('jsDecorator', s:simpleGoo, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:simpleSteel, s:none, 'none')
call <sid>hi('jsExportDefault', s:simpleGold, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:simpleSteel, s:none, 'none')
call <sid>hi('jsFuncArgs', s:simpleSteel, s:none, 'none')
call <sid>hi('jsFuncCall', s:simpleBlue2, s:none, 'none')
call <sid>hi('jsFunction', s:simpleGold, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:simpleOrange, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:simpleSteel, s:none, 'none')
call <sid>hi('jsNull', s:simpleGoo, s:none, 'none')
call <sid>hi('jsObjectBraces', s:simpleWhite, s:none, 'none')
call <sid>hi('jsObjectKey', s:simpleSteel, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:simpleGreen, s:none, 'none')
call <sid>hi('jsRegexpString', s:simpleGoo, s:none, 'none')
call <sid>hi('jsReturn', s:simpleIndianRed, s:none, 'none')
call <sid>hi('jsSpecial', s:simpleGoo, s:none, 'none')
call <sid>hi('jsSuper', s:simpleOrange, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:simpleSteel, s:none, 'none')
call <sid>hi('jsTemplateString', s:simpleGreen, s:none, 'none')
call <sid>hi('jsThis', s:simpleBlue2, s:none, 'none')
call <sid>hi('jsVariableDef', s:simpleWhite, s:none, 'none')

" also linked to export and from, in the vim-js plugin
highlight link jsImport rubyInclude

" JSX
call <sid>hi('jsxAttrib', s:simpleIndianRed, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:simpleWhite, s:none, 'none')
call <sid>hi('jsxCloseString', s:simpleBlue2, s:none, 'none')
call <sid>hi('jsxCloseTag', s:simpleSteel, s:none, 'none')
call <sid>hi('jsxString', s:simpleGreen, s:none, 'none')
call <sid>hi('jsxTag', s:simpleSteel, s:none, 'none')
call <sid>hi('jsxTagName', s:simpleBlue2, s:none, 'none')

" TypeScript
" WTH, this doesn't work
highlight link typescriptSource jsImport

" Ruby
call <sid>hi('rubyBlockParameter', s:simpleBlue, s:none, 'none')
call <sid>hi('rubyClass', s:simpleIndianRed, s:none, 'none')
call <sid>hi('rubyClassVariable', s:simpleSteel, s:none, 'none')
call <sid>hi('rubyConstant', s:simpleOrange, s:none, 'none')
call <sid>hi('rubyControl', s:simpleIndianRed, s:none, 'none')
call <sid>hi('rubyEscape', s:simpleGoo, s:none, 'none')
call <sid>hi('rubyException', s:simpleIndianRed, s:none, 'none')
call <sid>hi('rubyFunction', s:simpleBlue2, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:simpleWhite, s:none, 'none')
call <sid>hi('rubyInclude', s:simpleIndianRed, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:simpleWhite, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:simpleIndianRed, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:simpleWhite, s:none, 'none')
call <sid>hi('rubyRegexp', s:simpleGreen, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:simpleGreen, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:simpleGreen, s:none, 'none')
call <sid>hi('rubySymbol', s:simpleGold, s:none, 'none')


" Ruby (Embedded)
call <sid>hi('erubyComment', s:simpleGray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:simpleOrange, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:simpleOrange, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:simpleOrange, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:simpleOrange, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:simpleOrange, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:simpleOrange, s:none, 'none')

" Erlang

hi! link erlangAtom rubySymbol
hi! link erlangBIF rubyPredefinedIdentifier
hi! link erlangFunction rubyPredefinedIdentifier
hi! link erlangDirective Statement
hi! link erlangNode Identifier

" Elixir

hi! link elixirAtom rubySymbol
hi! link elixirModuleDeclaration rubyConstant

" XML
call <sid>hi('xmlAttrib', s:simpleIndianRed, s:none, 'none')
call <sid>hi('xmlEndTag', s:simpleSteel, s:none, 'none')
call <sid>hi('xmlTag', s:simpleSteel, s:none, 'none')
call <sid>hi('xmlTagName', s:simpleBlue2, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:simpleWhite, s:none, 'none')
call <sid>hi('yamlAnchor', s:simpleWhite, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:simpleGreen, s:none, 'none')
call <sid>hi('yamlKey', s:simpleGold, s:none, 'none')

" ALE
call <sid>hi('ALEErrorSign', s:none, s:simpleBlack, 'none')
call <sid>hi('ALEWarningSign', s:simpleGray2, s:simpleBlack, 'none')

" markdown
call <sid>hi('markdownBold', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH1', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH2', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH3', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH4', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH5', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownH6', s:simpleGold, s:simpleBlack, 'bold')
call <sid>hi('markdownHeadingDelimiter', s:simpleGold, s:simpleBlack, 'none')

call <sid>hi('markdownCode', s:simpleBlue2, s:simpleBlack, 'none')
call <sid>hi('markdownCodeBlock', s:simpleBlue2, s:simpleBlack, 'none')
call <sid>hi('markdownCodeDelimiter', s:simpleBlue2, s:simpleBlack, 'none')

call <sid>hi('markdownRule', s:simpleBlue, s:simpleBlack, 'bold')
call <sid>hi('markdownFootnote', s:simpleOrange, s:simpleBlack, 'none')
call <sid>hi('markdownFootnoteDefinition', s:simpleGold, s:simpleBlack, 'none')
call <sid>hi('markdownUrl', s:simpleGreen, s:simpleBlack, 'underline')
call <sid>hi('markdownLinkText', s:simpleGreen, s:simpleBlack, 'none')
call <sid>hi('markdownEscape', s:simpleSteel, s:simpleBlack, 'none')

