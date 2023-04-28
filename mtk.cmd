��
if exist frp.txt goto frp
if %opt%==1 goto smtk
if %opt%==2 goto fmtk
if %opt%==3 goto cmtk

:smtk
::safeformat
call :cport
echo. >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
type logs.txt | findstr /i error && echo Removing Password and FRP failed. >>logs.txt && goto exit
echo Removing Password and FRP success >>logs.txt
goto exit

:cmtk
::safeformat
call :cport
echo. >>logs.txt
echo *** %date%-%time% Setting up into brom mode... *** >>logs.txt
%mtk_process% crash >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
type logs.txt | findstr /i error && echo Removing Password and FRP failed. >>logs.txt && goto exit
echo Removing Password and FRP success >>logs.txt
goto exit

:fmtk
call :cport
::format
echo. >>logs.txt
echo *** %date%-%time% Formating password and FRP *** >>logs.txt
%mtk_process%  e userdata,frp >>logs.txt
type logs.txt | findstr /i error && echo Formating Password and FRP failed. >>logs.txt && goto exit
echo Formating Password and FRP success >>logs.txt
goto exit

:frp
call :cport
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process%  e frp >>logs.txt
type logs.txt | findstr /i error && echo Formating FRP failed. >>logs.txt && goto exit
echo Formating FRP success >>logs.txt
goto exit

:exit
timeout 3 >nul
taskkill /f /im python.exe
taskkill /f /im cmd.exe
taskkill /f /im adb.exe
taskkill /f /im fastboot.exe
taskkill /f /im ffplay.exe
exit

:nodevice
echo Sorry Device Not Detected >logs.txt
%msg% "No Device" "info" /T:5 
goto exit

:cport
timeout 5 >nul
set #=60
:checking
cls
set /a #-=1
if %#%==30 echo Check if testpoint needed >logs.txt &timeout 3 >nul 
if %#%==10 echo Check driver. >logs.txt &timeout 3 >nul
if %#%==5 echo Hold vol_down and vol_up and insert usb cable >logs.txt &timeout 3 >nul
if %#%==0 goto nodevice 
reg query HKLM\hardware\devicemap\SERIALCOMM | findstr /I "cdc" >%temp%\tmp || echo Waiting for device...%#% >logs.txt && timeout 1 >nul && goto checking
for /f "tokens=3" %%a IN (%temp%\tmp) DO set "port=%%a" 
echo %port% >cport.txt
exit /b

