@echo off
cd C:\Users\Inka\Desktop\Sources
start Taskmgr.lnk
start WinD.vbs
copy "C:\Users\Inka\Desktop\Sources\LockLoad.lnk" "C:\Users\Inka\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\LockLoad.lnk"
TIMEOUT /T 0.5 /NOBREAK 
start WinD.vbs
start Pass.vbs