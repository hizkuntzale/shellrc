:: Создан:  Пт 16 авг 2013 13:05:48
:: Изменён: Пт 13 сен 2013 14:03:27

@ECHO OFF

:: Общие настройки WinCmd --------------------------------------------------{{{
::

:: Добавление рабочей директории этого файла в пути поиска
pushd %~dp0

set PATH=%CD%;%PATH%

:: Дополнительные расширения исполнимых файлов
set PATHEXT=%PATHEXT%;.msc;.cpl;.r

::
:: Окно cmd: 100x50, коричневый на белом
::

MODE CON: COLS=100 LINES=50
:: COLOR F4

:: }}}
:: Псевдонимы --------------------------------------------------------------{{{
::

:: UNIX

@DOSKEY clear=CLS
@DOSKEY :q=exit
@DOSKEY history=doskey /HISTORY
@DOSKEY h=doskey /HISTORY

@DOSKEY ls=DIR $*
@DOSKEY cp=COPY $*
@DOSKEY xcp=XCOPY $
@DOSKEY mv=MOVE $*
@DOSKEY cat=type $*
@DOSKEY nohup=start $*
@DOSKEY nh=start $*

@DOSKEY alias=doskey $*
@DOSKEY aliases=doskey /macros

@DOSKEY ps=tasklist $*
@DOSKEY kill=taskkill $*
@DOSKEY pgrep=tasklist /FI "imagename eq $1.exe"

@DOSKEY dmesg=cscript "%SYSTEMROOT%\system32\eventquery.vbs" /FI "type ne INFORMATION" $*

:: Администрирование

:: Windows: административные утилиты
@DOSKEY win_all=control admintools
:: Windows: просмотр событий
@DOSKEY win_log=eventvwr.msc
:: Windows: общие ресурсы
@DOSKEY win_shr=fsmgmt.msc
:: Windows: свойства системы
@DOSKEY win_sys=sysdm.cpl
:: Windows: установка и удаление программ
@DOSKEY win_pkg=appwiz.cpl
:: Windows: сетевые подключения
@DOSKEY win_net=ncpa.cpl
:: Windows: диспетчер устройств
@DOSKEY win_dev=devmgmt.msc
:: Windows: свойства папки
@DOSKEY win_dir=control folders

:: Windows: управление принтерами
@DOSKEY printer=echo prnmngr prndrvr prnjobs prncnfg prnport prnqctl
@DOSKEY prnmngr=cscript "%SYSTEMROOT%\system32\prnmngr.vbs" $*
@DOSKEY prndrvr=cscript "%SYSTEMROOT%\system32\prndrvr.vbs" $*
@DOSKEY prnjobs=cscript "%SYSTEMROOT%\system32\prnjobs.vbs" $*
@DOSKEY prncnfg=cscript "%SYSTEMROOT%\system32\prncnfg.vbs" $*
@DOSKEY prnport=cscript "%SYSTEMROOT%\system32\prnport.vbs" $*
@DOSKEY prnqctl=cscript "%SYSTEMROOT%\system32\prnqctl.vbs" $*

@DOSKEY wl_updates=type %SYSTEMROOT%\WindowsUpdate.log

@DOSKEY logs=eventvwr.msc

:: ПО

@DOSKEY ex=explorer .

@DOSKEY vnc=start "" "%SYSTEMDRIVE%\Program Files\RealVNC\VNC Viewer\vncviewer.exe" $*
@DOSKEY far=start /max "" "%SYSTEMDRIVE%\Program Files\Far Manager\Far.exe"
@DOSKEY mc=start /max "" "%SYSTEMDRIVE%\Program Files\Far Manager\Far.exe"

@DOSKEY wiki=start \\file-srv\homedir$\%USERNAME%\wiki\$1.html
@DOSKEY beeline="%SYSTEMDRIVE%\Program Files\Internet Explorer\iexplore.exe" https://uslugi.beeline.ru
@DOSKEY elastix=start https://sip.tkpt.ru/index.php

:: Адресная книга

@DOSKEY ab=addressbook_tkpt $*
@DOSKEY abs=addressbook_tkpt ^| find ^"$*^"
@DOSKEY abc=addressbook_check

:: Cygwin

if exist D:\etc\bin\cygwin\bin\mintty.exe (
	@DOSKEY sh=start D:\etc\bin\cygwin\bin\mintty.exe
)

:: }}}-------------------------------------------------------------------------

