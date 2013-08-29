:: Создан:  Пн 26 авг 2013 14:08:03
:: Изменён: Чт 29 авг 2013 09:30:58

@ECHO OFF

::
:: installcmd.bat [директория установки] -- установка файла инициализации wincmd
::


if "%1" == "" (set rootDir=%APPDATA%\bin\win) else (set rootDir=%1)

mkdir "%rootDir%"

del /F "%rootDir%\cmdrc.bat"
copy cmdrc.bat "%rootDir%\"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "\"%rootDir:\=\\%\\cmdrc.bat\""

pause

