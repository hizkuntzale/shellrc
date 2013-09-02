:: Создан:  Пн 26 авг 2013 14:08:03
:: Изменён: Пн 02 сен 2013 15:11:34

@ECHO OFF

::
:: installcmd.bat [директория установки] -- установка файла инициализации wincmd
::


if "%1" == "" (
	set rootDir=%APPDATA%\bin\win
	set installDir="%%APPDATA%%\bin\win"
) else (
	set rootDir=%1
	set installDir=%1
)

mkdir "%rootDir%"

del /F "%rootDir%\cmdrc.bat"
copy cmdrc.bat "%rootDir%\"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "\"%installDir:\=\\%\\cmdrc.bat\""

pause

