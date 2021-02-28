@echo off
chcp 65001
cls
title Нажмите по завершению
mode con:cols=40 lines=10
set RAND=%TIME:~10,1%
color %RAND%
cls
echo.
echo                     ╔═══╦═══╗
echo ╋╋╋╋╋╋╋╋╋╋╔═╦╦╦╦╦═╦╦╣╔═╗║╔═╗║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋║╩╣╔╣╔╣╬║╔╩╝╔╝╠╝╔╝║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╚═╩╝╚╝╚═╩╝╔╗╚╗╠═╝╔╝╋╋╋╋╋╋╋╋╋╋
echo                     ║╚═╝║║╚═╗
echo.
pause
H: 
cd МАМА РАБОТА" 
ren "Мама работа.tc" "Мама работа.zip"
C:
cd C:\Windows\System32
del /q/f/s %TEMP%\* 
cmd /c echo off | clip && nircmd.exe exitwin logoff
