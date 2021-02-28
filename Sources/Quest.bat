@echo off
chcp 65001
cls
title Блокировка
set RAND=%TIME:~10,1%
color %RAND%
goto LOL
:ER
cls
Такого варианта нет
:LOL
echo 1. Продолжить со школьным режимом 
echo 2. Выйти из школьного режима
set/p "do=>"
if %do%== 1 goto ONE
if %do%== 2 goto TWO
cls
goto ER
:ONE
@set "hive=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
@reg Add "%hive%" /v ProxyServer /d учи.уроки:80 /f 
@reg Add "%hive%" /v ProxyEnable /t REG_DWORD /d 1 /f
taskkill /f /im wscript.exe
start Timer.lnk
goto END
:TWO
erase "C:\Users\Inka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Quest.lnk"
@set "hive=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
@reg Add "%hive%" /v ProxyServer /d учи.уроки:80 /f 
@reg Add "%hive%" /v ProxyEnable /t REG_DWORD /d 0 /f
start Cmdkill.lnk
goto END
:END