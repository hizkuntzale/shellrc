" Просмотр страниц руководства
set keywordprg=hs()\ {\ echo\ \"(help\ $1)\"\|guile\|less;\ };\ hs

set makeprg=guile\ %                    " Проверка на ошибки и синтаксис
set errorformat=%tRROR:\ %f:%l:%c:\ %m  " Формат строки с информацией"
