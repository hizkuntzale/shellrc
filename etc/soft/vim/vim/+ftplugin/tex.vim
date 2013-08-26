"-------------------------
" Настройки LaTeX
"-------------------------

set makeprg=pdflatex\ %			" Проверка на ошибки и синтаксис
set errorformat=%f:\ Line\ %l\ %t:\ %m	" Формат строки с информацией

" Выполнение файла с параметрами
nmap <F10> :!zathura %<.pdf &<left><left>
vmap <F10> <esc>:!zathura %<.pdf &<left><left>
imap <F10> <esc>:!zathura %<.pdf &<left><left>

" iabbrev ... \ldots
" imap ^ ^{}<left>
" imap _ _{}<left>

set foldmethod=marker

nmap fm :exe 'help '.expand("<cWORD>")<cr>

