:: Создан:  Пт 16 авг 2013 13:05:48
:: Изменён: Вт 27 авг 2013 15:12:57

@ECHO OFF

:: Общие настройки WinCmd --------------------------------------------------{{{
::

set PATH=\\file-srv\homedir$\%USERNAME%\bin\win\;%PATH%
set PATHEXT=%PATHEXT%;.msc;.cpl

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

:: Cygwin

if exist D:\etc\bin\cygwin\bin\mintty.exe (
	@DOSKEY sh=start D:\etc\bin\cygwin\bin\mintty.exe
)

:: }}}-------------------------------------------------------------------------

