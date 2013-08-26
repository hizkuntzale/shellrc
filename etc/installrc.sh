#!/bin/bash

#Создан:  Пт 23 авг 2013 19:57:29
#Изменён: Вс 25 авг 2013 20:05:18

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

report() {
	len=$((30 - $(echo -e -n $2 | wc -m)))

	echo -e -n " ${3:-$rstc} $1 $2 $rstc"
	eval printf "%-.s-" {1..$len}
}

check() {
	report Поиск $(basename $1)

	if [ -a $RCDIR/$1 ]; then
		echo OK
	else
		echo -e "$red  ФАЙЛ НАСТРОЕК НЕ СУЩЕСТВУЕТ: $RCDIR/$1 $rstc" >&2
	fi
}

backup() {
	report Сохранение $(basename $filename) $yellow

	date=$(\date "+%Y.%m.%e_%H.%M")
	\mv "$link"{,.$date} && \
	echo -e "${green}Резервная копия: $link.$date ${rstc}"
}

dotfile() {
	if [[ "$(dirname $1)" == $ROOTDIR ]]; then
		echo "$(dirname $1)/.$(basename $1)"
	else
		echo $1
	fi
}

#Создание ссылки на конфигурационный файл
mklink() {
	SRC=$1
	DST=$2

	if [ -a $RCDIR/$SRC ]; then
		filename=$(basename $SRC)

		report Установка $filename

		link=$(dotfile "$DST/${filename//\.$(uname -i)}")
		if [ -a $link ]; then
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
			ln -s $RCDIR/$SRC $(dotfile $DST/${filename//\.$(uname -i)}) 2>&- && \
			echo -e "${green}OK${rstc}"
		fi
	else
		echo -e "$red  ФАЙЛ НАСТРОЕК НЕ СУЩЕСТВУЕТ: $RCDIR/$SRC $rstc" >&2
	fi
}

rmlink() {
	FILE=$(basename $1)
	LINK=$(dotfile $2/${FILE//\.$(uname -i)})

	if [[ ( -a $LINK ) && (-L $LINK)]]; then
		report Удаление $FILE $red

		\rm "$LINK" && echo -e "${green}OK${rstc}" || echo -e "Ошибка удаления"
	fi
}

installrc() {
	while read line; do
		if [[ "$line" =~ ^\s*\+\s*.*$ ]]; then
			eval $(echo -e "$line" | sed 's/^+/mklink /')
		elif [[ "$line" =~ ^\s*-\s*.*$ ]]; then
			# Не устанавливать файл
			eval $(echo -e "$line" | sed 's/^-/rmlink /')
		elif [[ ("$line" =~ ^\#.*)  || ("$line" =~ ^\s*$) ]]; then
			# Вывод комментариев и пустых строк
			echo -e "${white}$line${rstc}" | tr '#' ' '
		else
			# Выполнение строки
			eval $line
		fi
	done < $1
}

case "$1" in
	--install-all)    alias rmlink=mklink;;
	--uninstall-all)  alias mklink=rmlink;;
	--check-rc-files) alias mklink=check; alias rmlink=check;;
	*) : ;;
esac

installrc $RCLIST

