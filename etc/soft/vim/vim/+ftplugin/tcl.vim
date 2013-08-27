"-------------------------
" Настройки Tcl
"-------------------------

set dictionary=~/.vim/dic/tcl		" Словарь автодополнения

set keywordprg=man\ n			" Просмотр страниц руководства

set makeprg=nagelfar\ %			" Проверка на ошибки и синтаксис
set errorformat=%f:\ Line\ %l:\ %t\ %m	" Формат строки с информацией

" TODO: переименовать Tcl.vim (<- tags.tcl)
if !has("win32unix")
	source $HOME/.vim/+omnicompletion/tcl/tcl.vim
endif

setlocal omnifunc=TclComplete

" Настройка matchit
let b:match_words = '\<if\>:\<elseif\>:\<else\>,\<elseif\>:\<else\>:\<if\>,\<else\>:\<if\>:\<elseif\>,\<while\>:\<continue\>:\<break\>,\<proc\>:\<return\>'

" vicle
let t:vicle_edition_mode = 1
let t:vicle_history_active = 0
let t:vicle_screen_sn = "tcl"
let t:vicle_screen_wn = 0
