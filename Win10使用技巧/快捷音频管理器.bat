@echo off&cd %dp~0
echo Set ws = CreateObject("WScript.Shell") >%temp%\RunRealtek.vbs
echo ws.Run "C:\Progra~1\Realtek\Audio\HDA\RAVCpl64.exe",,True >>%temp%\RunRealtek.vbs
echo ws.Run "C:\Progra~1\Realtek\Audio\HDA\RtkNGUI64.exe" >>%temp%\RunRealtek.vbs
start %temp%\RunRealtek.vbs