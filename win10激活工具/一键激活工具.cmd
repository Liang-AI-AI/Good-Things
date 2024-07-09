@echo Off
pushd "%~dp0"
color 2F
mode con cols=50 lines=15
echo.
echo.
echo 联网运行可优先数字永久激活
echo.
echo ===============================================
echo 正在激活Windows+Office,并安装"自动续期"服务...
echo ===============================================
echo.
echo.
1>nul 2>nul HEU_KMS_Activator.exe /dig /k38 /kwi /kof /ren /nologo
exit
