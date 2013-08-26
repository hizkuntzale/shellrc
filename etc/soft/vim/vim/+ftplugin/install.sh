#!/bin/bash

#Создан:  Вт 19 Янв 2010 08:40:13
#Изменён: Вс 25 авг 2013 02:41:19

DIR=../ftplugin

for f in *.vim; {
	mkdir -p $DIR/${f/.vim}

	ln -s ../../$(basename $(pwd))/$f $DIR/${f/.vim}/${f/.vim/.custom.vim} 2>/dev/null \
		&& printf " %-20sOK\n" $f \
		|| printf " %-20sУстановка не требуется\n" $f
}

