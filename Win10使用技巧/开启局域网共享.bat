@echo Off
color 2F
mode con cols=50 lines=15

sc config   MpsSvc start= AUTO  
net start   MpsSvc
sc config   SSDPSRV start= AUTO
net start   SSDPSRV
net user Guest /active:yes

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa" /v "LimitBlankPasswordUse" /t REG_DWORD /d "00000000" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "LimitBlankPasswordUse" /t REG_DWORD /d "00000000" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation" /v "AllowInsecureGuestAuth" /t REG_DWORD /d "dword:00000001" /f

CLS

@ ECHO.      
@ ECHO.      
@ ECHO.              建议将网络设置为专用网络
@ ECHO.      
@ ECHO.      
@ ECHO.      
PAUSE