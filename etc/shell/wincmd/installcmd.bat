:: Создан:  Пн 26 авг 2013 14:08:03
:: Изменён: Вт 27 авг 2013 15:10:52

@ECHO OFF

::
:: installcmd.bat [директория установки] -- установка файла инициализации wincmd
::


if "%1" == "" (set rootDir=%APPDATA%\bin\win) else (set rootDir=%1)

mkdir "%rootDir%"

copy cmdrc.bat "%rootDir%"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "\"%rootDir:\=\\%\\cmdrc.bat\""

pause

