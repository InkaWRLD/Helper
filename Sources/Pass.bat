@echo off
chcp 65001
cls
title Блокировка
set RAND=%TIME:~10,1%
color %RAND%
goto PASS
:ERROR
set RAND=%TIME:~10,1%
color %RAND%
cls
echo Неверный пароль
:PASS
echo Введите пароль
set/p "pass=>"
if %pass%== HACK goto OK
goto ERROR
:OK
start explorer.exe
start Cmdkill.lnk
erase "C:\Users\Inka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\LockLoad.lnk"