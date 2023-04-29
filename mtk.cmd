::last update M4D28Y23
if %opt%==1 goto smtk
if %opt%==2 goto fmtk
if %opt%==3 goto cmtk
if %opt%==4 goto gpt
if %opt%==5 goto sfrp
if %opt%==6 goto hfrp
if %opt%==7 goto xfrp
if %opt%==8 goto mfrp
if %opt%==9 goto payload

:payload
echo *** %date%-%time% Bypassing Auth *** >>logs.txt
%mtk_process% payload >>logs.txt
type logs.txt | findstr /i failed && echo Bypassing Auth failed >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Bypassing Auth success >>logs.txt
goto exit


:gpt
echo *** %date%-%time% Reading GPT *** >>logs.txt
%mtk_process% printgpt >>logs.txt
type logs.txt | findstr /i failed && echo Reading GPT failed >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Reading GPT success >>logs.txt
goto exit

:smtk
::safeformat
echo. >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
type logs.txt | findstr /i failed && echo Removing Password and FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Removing Password and FRP success >>logs.txt
goto exit

:cmtk
if exist frp.txt goto frp
::safeformat
echo. >>logs.txt
echo *** %date%-%time% Setting up into brom mode... *** >>logs.txt
%mtk_process% crash >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
type logs.txt | findstr /i failed && echo Removing Password and FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Removing Password and FRP success >>logs.txt
goto exit

:fmtk
::format
if exist frp.txt goto frp
echo. >>logs.txt
echo *** %date%-%time% Formating password and FRP *** >>logs.txt
%mtk_process%  e userdata,frp >>logs.txt
type logs.txt | findstr /i failed && echo Formating Password and FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Formating Password and FRP success >>logs.txt
goto exit

:mfrp
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process%  e frp >>logs.txt
type logs.txt | findstr /i failed && echo Formating FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Formating FRP success >>logs.txtgoto exit
goto exit

:sfrp
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process%  e persistent >>logs.txt
type logs.txt | findstr /i failed && echo Formating FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Formating FRP success >>logs.txtgoto exit
goto exit

:hfrp
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process%  e oem >>logs.txt
type logs.txt | findstr /i failed && echo Formating FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Formating FRP success >>logs.txtgoto exit
goto exit

:xfrp
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process%  e persist >>logs.txt
type logs.txt | findstr /i failed && echo Formating FRP failed. >>logs.txt && goto exit
type logs.txt | findstr /i success && echo  Formating FRP success >>logs.txtgoto exit
goto exit

:exit
timeout 3 >nul
taskkill /f /im python.exe
taskkill /f /im cmd.exe
taskkill /f /im adb.exe
taskkill /f /im fastboot.exe
taskkill /f /im ffplay.exe
exit
