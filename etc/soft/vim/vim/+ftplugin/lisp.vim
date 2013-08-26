" Проверка на ошибки и синтаксис
set makeprg=sbcl\ --load\ %\ --eval\ '(progn\ (compile-file\ \"%\")(quit))';\ mv\ -f\ %<.fasl\ %<;\chmod\ +x\ %<
set errorformat=nil

setlocal omnifunc=lispcomplete#Complete

