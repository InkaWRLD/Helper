@echo off
chcp 65001
copy "C:\Users\Inka\Desktop\Sources\Quest.lnk" "C:\Users\Inka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Quest.lnk"
cls
title Помощник
set RAND=%TIME:~10,1%
color %RAND%
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Введите время завершения(hhmm):
echo (Для выхода введите Exit)
set/p "timer=>"
if %timer%== Exit goto Exit 
start School.lnk

set gg=%timer:~0,2%
set /a gg*=60
set nn=%timer:~2,2%
set /a gg+=%nn%
set poltimer=%gg%
TIMEOUT /T 5 /NOBREAK 
:A
set hh=%TIME:~0,2%
set /a hh*=60
set mm=%TIME:~3,2%
set /a hh+=%mm%
set poltime=%hh%
if %poltimer%== %poltime% goto OK
goto A
:EXIT 
@set "hive=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
@reg Add "%hive%" /v ProxyServer /d учи.уроки:80 /f 
@reg Add "%hive%" /v ProxyEnable /t REG_DWORD /d 0 /f
cd ..
start Console.lnk 
goto END
:OK
@set "hive=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
@reg Add "%hive%" /v ProxyServer /d учи.уроки:80 /f 
@reg Add "%hive%" /v ProxyEnable /t REG_DWORD /d 0 /f
start explorer.exe
start Cmdkill.lnk
:END