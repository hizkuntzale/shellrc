#!/bin/bash

#Создан:  Пт 23 авг 2013 19:57:29
#Изменён: Чт 29 авг 2013 13:10:28

#
# (c) 2013, Maxim Lihachev, <envrm@yandex.ru>
#
# Скрипт создания ссылок на файлы настроек.
#
# Список файлов содержится в RCLIST и заполняется по правилам:
#
#     # Строка комментария, который нужно вывести
#     : Строка комментария, который не будет выведен
#
#     + установить_файл       /куда/устанавливать
#     - не_устанавливать_файл /куда/устанавливать
#     любая другая строка будет исполнена как команда оболочки
#
# Пустые строки выводятся.
#
# ИСПОЛЬЗОВАНИЕ: installrc.sh --install-all    - установка всех файлов
#                             --uninstall-all  - удаление всех ссылок
#                             --check-rc-files - проверка доступности файлов настроек
#
# При установке имеющиеся ссылки и файлы будут переименованы в файл.<дата>.
#


#Директория для установки
RCDIR=$(pwd)
RCLIST=$RCDIR/rc.$OSTYPE

ROOTDIR=$HOME

#Настройка цветовых кодов
rstc="\033[00m"
yellow="\033[1;33m"
red="\033[1;31m"
green="\033[1;32m"
white="\033[1;1m"

#Вывод [цветного] сообщения с заполнением строки до 30 колонки знаком "."
#   msg1 msg2 ?color?
report() {
	len=$((30 - $(echo -e -n $2 | wc -m)))

	echo -e -n " ${3:-$rstc} $1 $2 $rstc"
	eval printf "%-.s-" {1..$len}
}

#Проверка доступности файла настроек
#   file
check() {
	report Поиск $(basename $1)

	if [ -a $RCDIR/$1 ]; then
		echo OK
	else
		echo -e "$red  ФАЙЛ НАСТРОЕК НЕ СУЩЕСТВУЕТ: $RCDIR/$1 $rstc" >&2
	fi
}

#Резервирование файла
#   file
backup() {
	report Сохранение $(basename $filename) $yellow

	date=$(\date "+%Y.%m.%e_%H.%M")
	\mv "$link"{,.$date} && \
	echo -e "${green}Резервная копия: $link.$date ${rstc}"
}

#Скрытие ссылки, если она расположена в ROOTDIR
#
#   Если в правилах указано место установки ~, а ROOTDIR=$HOME,
#   то ссылка будет расположена в ~/.link.
#
#   Если указать иную директорию, то ссылка не будет скрыта:
#   mc ~/.config             ---> ~/.config/mc
#
#   file
dotfile() {
	if [[ "$(dirname $1)" == $ROOTDIR ]]; then
		echo "$(dirname $1)/.$(basename $1)"
	else
		echo $1
	fi
}

#Создание ссылки на конфигурационный файл
#   source destination
mklink() {
	SRC=$1
	DST=$2

	#Файл существует?
	if [ -a $RCDIR/$SRC ]; then
		filename=$(basename $SRC)

		report Установка $filename

		link=$(dotfile "$DST/${filename//\.$(uname -i)}")

		#Файл существует?
		if [ -a $link ]; then
			#Файл -- ссылка?
			if [ -L $link ]; then
				ref=$(readlink $link)
				if [ $ref == $RCDIR/$SRC ]; then
					echo -e "Установка не требуется"
					return
				else
					echo -e "$redНайденная ссылка указывает на другой файл: $ref$rstc"
				fi
			else
				echo -e "$redНайден конфигурационный файл$rstc"
			fi

			backup $link && \
			mklink $SRC $DST
		else
			#Ссылка на файл-источник
			ln -s $RCDIR/$SRC $(dotfile $DST/${filename//\.$(uname -i)}) 2>&- && \
			echo -e "${green}OK${rstc}"
		fi
	else
		echo -e "$red  ФАЙЛ НАСТРОЕК НЕ СУЩЕСТВУЕТ: $RCDIR/$SRC $rstc" >&2
	fi
}

#Удаление ссылки на файл
#    sourcefile link
rmlink() {
	FILE=$(basename $1)
	LINK=$(dotfile $2/${FILE//\.$(uname -i)})

	if [[ ( -a $LINK ) && (-L $LINK)]]; then
		report Удаление $FILE $red

		\rm "$LINK" && echo -e "${green}OK${rstc}" || echo -e "Ошибка удаления"
	fi
}

#Установка настроек
installrc() {
	while read line; do
		if [[ "$line" =~ ^\s*\+\s*.*$ ]]; then
			#Установить файл
			eval $(echo -e "$line" | sed 's/^+/mklink /')
		elif [[ "$line" =~ ^\s*-\s*.*$ ]]; then
			#Не устанавливать файл
			eval $(echo -e "$line" | sed 's/^-/rmlink /')
		elif [[ ("$line" =~ ^\#.*)  || ("$line" =~ ^\s*$) ]]; then
			#Вывод комментариев и пустых строк
			echo -e "${white}$line${rstc}" | tr '#' ' '
		else
			#Выполнение строки
			eval $line
		fi
	done < $1
}

#Разбор аргументов командной строки и выполнение скрипта
case "$1" in
	--install-all)    alias rmlink=mklink;;
	--uninstall-all)  alias mklink=rmlink;;
	--check-rc-files) alias mklink=check; alias rmlink=check;;
	*) : ;;
esac

installrc $RCLIST

