set makeprg=dot\ -Gsize=10,15\ -Tpng\ %\ >\ %<.png
set errorformat=%f:\ Line\ %l\ %t:\ %m	" Формат строки с информацией

" Выполнение файла с параметрами
nmap <F10> :!geeqie %<.png &<left><left>
vmap <F10> <esc>:!geeqie %<.png &<left><left>
imap <F10> <esc>:!geeqie %<.png &<left><left>

set foldmethod=marker
