#!/bin/bash

#Создан:  Вс 25 авг 2013 20:46:15
#Изменён: Вс 25 авг 2013 20:53:07

git config --global core.excludesfile $(pwd | sed "s,$HOME,\~,")/gitignore-global

