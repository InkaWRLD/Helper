Set sh = CreateObject("WScript.Shell")
Set Open = CreateObject("WScript.Shell")
sh.Run "Pass.lnk",1, True
Open.Run "Pass.vbs"