"-------------------------
" Настройки Prolog
"-------------------------
" Просмотр страниц руководства
set keywordprg=hs()\ {\ echo\ \"help($1).\"\|swipl\ --nopce;\ };\ hs

set makeprg=swipl\ -s\ %			" Проверка на ошибки и синтаксис
set errorformat=%W%tarning:\ %f:%l:,%Z%m	" Формат ошибок
set errorformat+=%tRROR:\ %f:%l:%c:%m		" Формат предупреждений
set errorformat+=%E%tRROR:\ %f:%l:,%Z%m		" Формат предупреждений
