#!/bin/bash

#Создан:  Вт 19 Янв 2010 08:40:13
#Изменён: Вс 25 авг 2013 20:33:11

DIR=~/.vim/+plugins/neosnippet.vim/autoload/neosnippet/snippets/

for f in *.snip; {
	# [ -e "$f" ] \
		ln -s $(pwd)/$f $DIR/${f} 2>/dev/null \
		&& printf " %-20sOK\n" $f \
		|| printf " %-20sУстановка не требуется\n" $f
}

