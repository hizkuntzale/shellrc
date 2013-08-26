set keywordprg=man			" Просмотр страниц руководства

set makeprg=fpc\ %			" Проверка на ошибки и синтаксис
""set errorformat=%f:\ line\ %l:\ %m	" Формат строки с информацией
set errorformat=%f(%l\\,%c)%*[\ ]%t%*[^:]:\ %m
