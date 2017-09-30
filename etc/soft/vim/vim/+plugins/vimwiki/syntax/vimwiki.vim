" vim:tabstop=2:shiftwidth=2:expandtab:foldmethod=marker:textwidth=79
" Vimwiki syntax file
" Author: Maxim Kim <habamax@gmail.com>
" Home: http://code.google.com/p/vimwiki/

" Quit if syntax file is already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOTE.VIM
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim syntax file
" Language:	general note for plain text
" Maintainer:	Jihang Li <LeeJihg@gmail.com>
" Last Change:	2017 Jul 28

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

"=============================================================================== match
" Block
" {dark asterisk}
syn match noteBlock /^*.*/
"hi noteBlock guifg=#808080
"hi noteBlock ctermfg=244
hi noteBlock guifg=#3A3A3A
hi noteBlock ctermfg=237

" Ignore Linux terminal command lines spelling checking
"syn match noteCommand /^\$.*$/ contains=@NoSpell

" Comment
syn match noteComment /^\#.*/ contains=ALLBUT,noteBlock,noteCommand
hi noteComment guifg=#666666
hi noteComment ctermfg=242

"=============================================================================== delimit
syn match noteDelimite_1 /\[[A-Za-z0-9]\s/ conceal contained
syn match noteDelimite_2 /\]/ conceal contained
"syn match noteDelimite /\[[A-Za-z0-9]\]/ conceal contained

"=============================================================================== Capital Tags
" {dark text, blue box, bold}
syn match noteTagCapB /\[B .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagCapB guifg=#262626 guibg=#00D7FF gui=bold
hi noteTagCapB ctermfg=235 ctermbg=45 cterm=bold

" {dark text, green box, bold}
syn match noteTagCapG /\[G .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagCapG guifg=#262626 guibg=#87D700 gui=bold
hi noteTagCapG ctermfg=235 ctermbg=112 cterm=bold

" {dark text, orange box, bold}
syn match noteTagCapO /\[O .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
"syn match noteTagCapO /\[O\].*\s/me=e-1 contains=noteDelimite
hi noteTagCapO guifg=#262626 guibg=#FFAF00 gui=bold
hi noteTagCapO ctermfg=235 ctermbg=214 cterm=bold

" {dark text, purple box, bold}
syn match noteTagCapP /\[P .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagCapP guifg=#262626 guibg=#AF00FF gui=bold
hi noteTagCapP ctermfg=235 ctermbg=129 cterm=bold

" {dark text, red box, bold}
syn match noteTagCapR /\[R .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagCapR guifg=#262626 guibg=#FF5FAF gui=bold
hi noteTagCapR ctermfg=235 ctermbg=160 cterm=bold

" {dark text, yellow box, bold}
syn match noteTagCapY /\[Y .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagCapY guifg=#262626 guibg=#FF5FAF gui=bold
hi noteTagCapY ctermfg=235 ctermbg=226 cterm=bold

"=============================================================================== Small Tags
" {blue text}
syn match noteTagSmlb /\[b .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlb guifg=#00D7FF
hi noteTagSmlb ctermfg=45

" {green text}
syn match noteTagSmlg /\[g .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlg guifg=#87D700
hi noteTagSmlg ctermfg=112

" {black text}
syn match noteTagSmlk /\[k .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlk guifg=#000000
hi noteTagSmlk ctermfg=0

" {orange text}
syn match noteTagSmlo /\[o .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlo guifg=#FFAF00
hi noteTagSmlo ctermfg=214
"
" {purple text}
syn match noteTagSmlp /\[p .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlp guifg=#AF00FF
hi noteTagSmlp ctermfg=129

" {red text}
syn match noteTagSmlr /\[r .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmlr guifg=#FF5FAF
hi noteTagSmlr ctermfg=160

" {yellow text}
syn match noteTagSmly /\[y .\{-}\]/ contains=noteDelimite_1,noteDelimite_2 containedin=noteComment
hi noteTagSmly guifg=#FF5FAF
hi noteTagSmly ctermfg=226

"=============================================================================== region
" Include Programming Syntax Highlight
"syn include @codeSnippet syntax/cpp.vim
"syn region bugFunction start=+\/\/codebegin+ keepend end=+\/\/codeend+ contains=@codeSnippet
"syn region bugDataType start=/</ end=/>/ contains=@codeSnippet


"=============================================================================== set behavior
" Set to read-only by default
" setlocal ro

" Conceal highlighting controlling syntax
if has("conceal")
    setlocal cole=2 cocu=nc
endif
"
"if has("conceal")
"    if has("ro")
"        setlocal cole=2 cocu=n
"    else
"        setlocal cole=2
"    endif
"endif

"if has("conceal")
"    "setlocal cole=2 cocu=nc
"    "setlocal cole=2 cocu=n
"    setlocal cole=2
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" / NOTE.VIM
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Links highlighting is controlled by vimwiki#base#highlight_links() function.
" It is called from setup_buffer_enter() function in the BufEnter autocommand.

" Load concrete Wiki syntax
execute 'runtime! syntax/vimwiki_'.VimwikiGet('syntax').'.vim'

syntax spell toplevel

syn match VimwikiLinkChar contained /\[\[/
syn match VimwikiLinkChar contained /\]\]/
syn match VimwikiLinkChar contained /\[\[[^\[\]\|]\{-}|\ze.\{-}]]/
syn match VimwikiLinkChar contained /\[\[[^\[\]\|]\{-}]\[\ze.\{-}]]/

syn match VimwikiNoLinkChar contained /\[\[/
syn match VimwikiNoLinkChar contained /\]\]/
syn match VimwikiNoLinkChar contained /\[\[[^\[\]\|]\{-}|\ze.*]]/
syn match VimwikiNoLinkChar contained /\[\[[^\[\]\|]\{-}]\[\ze.*]]/

execute 'syn match VimwikiBoldChar contained /'.g:vimwiki_char_bold.'/'
execute 'syn match VimwikiItalicChar contained /'.g:vimwiki_char_italic.'/'
execute 'syn match VimwikiBoldItalicChar contained /'.g:vimwiki_char_bolditalic.'/'
execute 'syn match VimwikiItalicBoldChar contained /'.g:vimwiki_char_italicbold.'/'
execute 'syn match VimwikiCodeChar contained /'.g:vimwiki_char_code.'/'
execute 'syn match VimwikiDelTextChar contained /'.g:vimwiki_char_deltext.'/'
execute 'syn match VimwikiSuperScript contained /'.g:vimwiki_char_superscript.'/'
execute 'syn match VimwikiSubScript contained /'.g:vimwiki_char_subscript.'/'
if exists("+conceallevel")
  syntax conceal off
endif

" Non concealed chars
syn match VimwikiHeaderChar contained /\%(^\s*=\+\)\|\%(=\+\s*$\)/
execute 'syn match VimwikiBoldCharT contained /'.g:vimwiki_char_bold.'/'
execute 'syn match VimwikiItalicCharT contained /'.g:vimwiki_char_italic.'/'
execute 'syn match VimwikiBoldItalicCharT contained /'.g:vimwiki_char_bolditalic.'/'
execute 'syn match VimwikiItalicBoldCharT contained /'.g:vimwiki_char_italicbold.'/'
execute 'syn match VimwikiCodeCharT contained /'.g:vimwiki_char_code.'/'
execute 'syn match VimwikiDelTextCharT contained /'.g:vimwiki_char_deltext.'/'
execute 'syn match VimwikiSuperScriptT contained /'.g:vimwiki_char_superscript.'/'
execute 'syn match VimwikiSubScriptT contained /'.g:vimwiki_char_subscript.'/'


" Emoticons
syntax match VimwikiEmoticons /\%((.)\|:[()|$@]\|:-[DOPS()\]|$@]\|;)\|:'(\)/

let g:vimwiki_rxTodo = '\C\%(TODO:\|DONE:\|STARTED:\|FIXME:\|FIXED:\|XXX:\)'
execute 'syntax match VimwikiTodo /'. g:vimwiki_rxTodo .'/'


" Tables
syntax match VimwikiTableRow /^\s*|.\+|\s*$/ 
      \ transparent contains=VimwikiCellSeparator,VimwikiLinkT,
      \ VimwikiNoExistsLinkT,VimwikiEmoticons,VimwikiTodo,
      \ VimwikiBoldT,VimwikiItalicT,VimwikiBoldItalicT,VimwikiItalicBoldT,
      \ VimwikiDelTextT,VimwikiSuperScriptT,VimwikiSubScriptT,VimwikiCodeT,
      \ @Spell
syntax match VimwikiCellSeparator 
      \ /\%(|\)\|\%(-\@<=+\-\@=\)\|\%([|+]\@<=-\+\)/ contained

" List items
execute 'syntax match VimwikiList /'.g:vimwiki_rxListBullet.'/'
execute 'syntax match VimwikiList /'.g:vimwiki_rxListNumber.'/'
execute 'syntax match VimwikiList /'.g:vimwiki_rxListDefine.'/'

execute 'syntax match VimwikiBold /'.g:vimwiki_rxBold.'/ contains=VimwikiBoldChar,@Spell'
execute 'syntax match VimwikiBoldT /'.g:vimwiki_rxBold.'/ contained contains=VimwikiBoldCharT,@Spell'

execute 'syntax match VimwikiItalic /'.g:vimwiki_rxItalic.'/ contains=VimwikiItalicChar,@Spell'
execute 'syntax match VimwikiItalicT /'.g:vimwiki_rxItalic.'/ contained contains=VimwikiItalicCharT,@Spell'

execute 'syntax match VimwikiBoldItalic /'.g:vimwiki_rxBoldItalic.'/ contains=VimwikiBoldItalicChar,VimwikiItalicBoldChar,@Spell'
execute 'syntax match VimwikiBoldItalicT /'.g:vimwiki_rxBoldItalic.'/ contained contains=VimwikiBoldItalicChatT,VimwikiItalicBoldCharT,@Spell'

execute 'syntax match VimwikiItalicBold /'.g:vimwiki_rxItalicBold.'/ contains=VimwikiBoldItalicChar,VimwikiItalicBoldChar,@Spell'
execute 'syntax match VimwikiItalicBoldT /'.g:vimwiki_rxItalicBold.'/ contained contains=VimwikiBoldItalicCharT,VimsikiItalicBoldCharT,@Spell'

execute 'syntax match VimwikiDelText /'.g:vimwiki_rxDelText.'/ contains=VimwikiDelTextChar,@Spell'
execute 'syntax match VimwikiDelTextT /'.g:vimwiki_rxDelText.'/ contained contains=VimwikiDelTextChar,@Spell'

execute 'syntax match VimwikiSuperScript /'.g:vimwiki_rxSuperScript.'/ contains=VimwikiSuperScriptChar,@Spell'
execute 'syntax match VimwikiSuperScriptT /'.g:vimwiki_rxSuperScript.'/ contained contains=VimwikiSuperScriptCharT,@Spell'

execute 'syntax match VimwikiSubScript /'.g:vimwiki_rxSubScript.'/ contains=VimwikiSubScriptChar,@Spell'
execute 'syntax match VimwikiSubScriptT /'.g:vimwiki_rxSubScript.'/ contained contains=VimwikiSubScriptCharT,@Spell'

execute 'syntax match VimwikiCode /'.g:vimwiki_rxCode.'/ contains=VimwikiCodeChar'
execute 'syntax match VimwikiCodeT /'.g:vimwiki_rxCode.'/ contained contains=VimwikiCodeCharT'


" <hr> horizontal rule
execute 'syntax match VimwikiHR /'.g:vimwiki_rxHR.'/'

execute 'syntax region VimwikiPre start=/^\s*'.g:vimwiki_rxPreStart.
      \ '/ end=/^\s*'.g:vimwiki_rxPreEnd.'\s*$/ contains=@Spell'

" List item checkbox
syntax match VimwikiCheckBox /\[.\?\]/
if g:vimwiki_hl_cb_checked
  execute 'syntax match VimwikiCheckBoxDone /'.
        \ g:vimwiki_rxListBullet.'\s*\['.g:vimwiki_listsyms[4].'\].*$/'.
        \ ' contains=VimwikiNoExistsLink,VimwikiLink'
  execute 'syntax match VimwikiCheckBoxDone /'.
        \ g:vimwiki_rxListNumber.'\s*\['.g:vimwiki_listsyms[4].'\].*$/'.
        \ ' contains=VimwikiNoExistsLink,VimwikiLink'
endif

" placeholders
syntax match VimwikiPlaceholder /^\s*%toc\%(\s.*\)\?$/ contains=VimwikiPlaceholderParam
syntax match VimwikiPlaceholder /^\s*%nohtml\s*$/
syntax match VimwikiPlaceholder /^\s*%title\%(\s.*\)\?$/ contains=VimwikiPlaceholderParam
syntax match VimwikiPlaceholder /^\s*%template\%(\s.*\)\?$/ contains=VimwikiPlaceholderParam
syntax match VimwikiPlaceholderParam /\s.*/ contained

" html tags
let html_tags = join(split(g:vimwiki_valid_html_tags, '\s*,\s*'), '\|')
exe 'syntax match VimwikiHTMLtag #\c</\?\%('.html_tags.'\)\%(\s\{-1}\S\{-}\)\{-}\s*/\?>#'
execute 'syntax match VimwikiBold #\c<b>.\{-}</b># contains=VimwikiHTMLTag'
execute 'syntax match VimwikiItalic #\c<i>.\{-}</i># contains=VimwikiHTMLTag'
execute 'syntax match VimwikiUnderline #\c<u>.\{-}</u># contains=VimwikiHTMLTag'

execute 'syntax match VimwikiComment /'.g:vimwiki_rxComment.'/ contains=@Spell'

" Header levels, 1-6
execute 'syntax match VimwikiHeader1 /'.g:vimwiki_rxH1.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'
execute 'syntax match VimwikiHeader2 /'.g:vimwiki_rxH2.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'
execute 'syntax match VimwikiHeader3 /'.g:vimwiki_rxH3.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'
execute 'syntax match VimwikiHeader4 /'.g:vimwiki_rxH4.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'
execute 'syntax match VimwikiHeader5 /'.g:vimwiki_rxH5.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'
execute 'syntax match VimwikiHeader6 /'.g:vimwiki_rxH6.'/ contains=VimwikiTodo,VimwikiHeaderChar,VimwikiNoExistsLink,VimwikiLink,@Spell'

" group names "{{{

if g:vimwiki_hl_headers == 0
  hi link VimwikiHeader1 Title
  hi link VimwikiHeader2 Title
  hi link VimwikiHeader3 Title
  hi link VimwikiHeader4 Title
  hi link VimwikiHeader5 Title
  hi link VimwikiHeader6 Title
else
  if &background == 'light'
    hi def VimwikiHeader1 guibg=bg guifg=#aa5858 gui=bold ctermfg=DarkRed   term=bold cterm=bold 
    hi def VimwikiHeader2 guibg=bg guifg=#507030 gui=bold ctermfg=DarkGreen term=bold cterm=bold 
    hi def VimwikiHeader3 guibg=bg guifg=#1030a0 gui=bold ctermfg=DarkBlue  term=bold cterm=bold 
    hi def VimwikiHeader4 guibg=bg guifg=#103040 gui=bold ctermfg=Black     term=bold cterm=bold 
    hi def VimwikiHeader5 guibg=bg guifg=#505050 gui=bold ctermfg=Black     term=bold cterm=bold 
    hi def VimwikiHeader6 guibg=bg guifg=#636363 gui=bold ctermfg=Black     term=bold cterm=bold 
  else                                                                                           
    hi def VimwikiHeader1 guibg=bg guifg=#e08090 gui=bold ctermfg=Red       term=bold cterm=bold 
    hi def VimwikiHeader2 guibg=bg guifg=#80e090 gui=bold ctermfg=Green     term=bold cterm=bold 
    hi def VimwikiHeader3 guibg=bg guifg=#6090e0 gui=bold ctermfg=Blue      term=bold cterm=bold 
    hi def VimwikiHeader4 guibg=bg guifg=#c0c0f0 gui=bold ctermfg=White     term=bold cterm=bold 
    hi def VimwikiHeader5 guibg=bg guifg=#e0e0f0 gui=bold ctermfg=White     term=bold cterm=bold 
    hi def VimwikiHeader6 guibg=bg guifg=#f0f0f0 gui=bold ctermfg=White     term=bold cterm=bold 
  endif
endif

hi def link VimwikiMarkers Normal

hi def VimwikiBold term=bold cterm=bold gui=bold
hi def link VimwikiBoldT VimwikiBold

hi def VimwikiItalic term=italic cterm=italic gui=italic
hi def link VimwikiItalicT VimwikiItalic

hi def VimwikiBoldItalic term=bold cterm=bold gui=bold,italic
hi def link VimwikiItalicBold VimwikiBoldItalic
hi def link VimwikiBoldItalicT VimwikiBoldItalic
hi def link VimwikiItalicBoldT VimwikiBoldItalic

hi def VimwikiUnderline gui=underline

hi def link VimwikiCode PreProc
hi def link VimwikiCodeT VimwikiCode

hi def link VimwikiPre PreProc
hi def link VimwikiPreT VimwikiPre

hi def link VimwikiNoExistsLink SpellBad
hi def link VimwikiNoExistsLinkT VimwikiNoExistsLink

hi def link VimwikiLink Underlined
hi def link VimwikiLinkT VimwikiLink

hi def link VimwikiList Identifier
hi def link VimwikiCheckBox VimwikiList
hi def link VimwikiCheckBoxDone Comment
hi def link VimwikiEmoticons Character

hi def link VimwikiDelText Constant
hi def link VimwikiDelTextT VimwikiDelText

hi def link VimwikiSuperScript Number
hi def link VimwikiSuperScriptT VimwikiSuperScript

hi def link VimwikiSubScript Number
hi def link VimwikiSubScriptT VimwikiSubScript

hi def link VimwikiTodo Todo
hi def link VimwikiComment Comment

hi def link VimwikiPlaceholder SpecialKey
hi def link VimwikiPlaceholderParam String
hi def link VimwikiHTMLtag SpecialKey

hi def link VimwikiCellSeparator VimwikiMarkers
hi def link VimwikiBoldChar VimwikiMarkers
hi def link VimwikiItalicChar VimwikiMarkers
hi def link VimwikiBoldItalicChar VimwikiMarkers
hi def link VimwikiItalicBoldChar VimwikiMarkers
hi def link VimwikiDelTextChar VimwikiMarkers
hi def link VimwikiSuperScriptChar VimwikiMarkers
hi def link VimwikiSubScriptChar VimwikiMarkers
hi def link VimwikiCodeChar VimwikiMarkers
hi def link VimwikiHeaderChar VimwikiMarkers
hi def link VimwikiLinkChar VimwikiLink
hi def link VimwikiNoLinkChar VimwikiNoExistsLink

hi def link VimwikiBoldCharT VimwikiMarkers
hi def link VimwikiItalicCharT VimwikiMarkers
hi def link VimwikiBoldItalicCharT VimwikiMarkers
hi def link VimwikiItalicBoldCharT VimwikiMarkers
hi def link VimwikiDelTextCharT VimwikiMarkers
hi def link VimwikiSuperScriptCharT VimwikiMarkers
hi def link VimwikiSubScriptCharT VimwikiMarkers
hi def link VimwikiCodeCharT VimwikiMarkers
hi def link VimwikiHeaderCharT VimwikiMarkers
hi def link VimwikiLinkCharT VimwikiLinkT
hi def link VimwikiNoLinkCharT VimwikiNoExistsLinkT
"}}}

let b:current_syntax="vimwiki"

" EMBEDDED syntax setup "{{{
let nested = VimwikiGet('nested_syntaxes')
if !empty(nested)
  for [hl_syntax, vim_syntax] in items(nested)
    call vimwiki#base#nested_syntax(vim_syntax, 
          \ '^\s*{{{\%(.*[[:blank:][:punct:]]\)\?'.
          \ hl_syntax.'\%([[:blank:][:punct:]].*\)\?',
          \ '^\s*}}}', 'VimwikiPre')
  endfor
endif
"}}}

