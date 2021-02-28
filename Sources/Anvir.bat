@echo off
:A
taskkill /F /IM wscript.exe
taskkill /F /IM cmd.exe
goto A