::last update M8D29Y23
if exist testpoint.txt start "" "%tp%" &del /f testpoint.txt
if %opt%==1 goto smtk
if %opt%==2 goto fmtk
if %opt%==3 goto cmtk
if %opt%==4 goto gpt
if %opt%==5 goto sfrp
if %opt%==6 goto hfrp
if %opt%==7 goto xfrp
if %opt%==8 goto mfrp
if %opt%==9 goto payload
if %opt%==10 goto unlockbl
if %opt%==11 goto relockbl
if %opt%==12 goto mprivacy
if %opt%==13 goto mrebuild
if %opt%==14 goto removedemo
if %opt%==15 goto msafeformat
if %opt%==16 goto mformat
if %opt%==17 goto crash2brom

:crash2brom
::force to brom using preloader
%msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5
call :pre
echo Please wait Crashing preloader to brom... >>logs.txt
%mtk_process% plstage --preloader=%file% >>logs.txt
goto exit

:mformat
::format only
echo. >>logs.txt
echo *** %date%-%time% Formating password only*** >>logs.txt
%mtk_process%  e userdata >>logs.txt
goto exit

:msafeformat
::safeformat
echo. >>logs.txt
call :pre
echo  "Browse your Preloader" >>logs.txt
echo *** %date%-%time% Removing password - safeformat *** >>logs.txt
%mtk_process% w para mtk\password.dll --preloader=%file% >>logs.txt
goto exit

:removedemo
echo *** %date%-%time% Please wait removing demo for vivo device *** >>logs.txt
%mtk_process% e backup >>logs.txt
goto exit

:mrebuild
if not exist mtk\rdata.rar echo Please wait downloading file...>>logs.txt &goto download
if exist mtk\rdata echo *** %date%-%time% Please wait rebuilding Userdata for mtk device *** >>logs.txt &goto mrebuild
:download
PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Jairah7/GSMTools/raw/main/rdata.rar','mtk\rdata.rar')" >>logs.txt
if exist mtk\rdata.rar plugins\7zip\7z x -y mtk\rdata.rar -omtk >>logs.txt
:mrebuild
%msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5
call :pre
echo Please wait Rebuilding userdata... >>logs.txt
if exist mtk\rdata %mtk_process% w userdata mtk\rdata --preloader=%file% >>logs.txt 
goto exit

:mprivacy
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup nvdata first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing nvdata...*** >>logs.txt &%mtk_process% r nvdata "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removeprivacy
if %sel%==cancel goto exit
:removeprivacy
echo *** %date%-%time% Please wait Removing privacy for mtk device *** >>logs.txt
%mtk_process% e nvdata >>logs.txt
goto exit

:relockbl
echo *** %date%-%time% Please wait relocking bootloader for mtk device *** >>logs.txt
%mtk_process% da seccfg lock >>logs.txt
goto exit

:unlockbl
echo *** %date%-%time% Please wait unlocking bootloader for mtk device *** >>logs.txt
call :pre
%msg% "Browse your Preloader"
%mtk_process% da seccfg unlock --preloader=%file% >>logs.txt
goto exit

:payload
echo *** %date%-%time% Bypassing Auth *** >>logs.txt
%mtk_process% payload >>logs.txt
goto exit


:gpt
echo *** %date%-%time% Reading GPT *** >>logs.txt
%mtk_process% printgpt >>logs.txt
goto exit

:smtk
::safeformat plus frp
if exist frp.txt goto mfrp
echo. >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
goto exit

:cmtk
if exist frp.txt goto mfrp
::safeformat
echo. >>logs.txt
echo *** %date%-%time% Setting up into brom mode... *** >>logs.txt
%mtk_process% crash >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe >>logs.txt
goto exit

:fmtk
::format
if exist frp.txt goto mfrp
echo. >>logs.txt
echo *** %date%-%time% Formating password and FRP *** >>logs.txt
%mtk_process%  e userdata,frp >>logs.txt
goto exit

:mfrp
::format
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
call :pre
%msg% "Browse your Preloader"
%mtk_process% e frp --preloader=%file% >>logs.txt
goto exit

:sfrp
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup persistent first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing persistent...*** >>logs.txt &%mtk_process% r persistent "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removesfrp
if %sel%==cancel goto exit
:removesfrp
echo *** %date%-%time% Formating FRP for mtk samsung *** >>logs.txt
%mtk_process%  e persistent >>logs.txt
goto exit

:hfrp
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup oeminfo first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing oeminfo...*** >>logs.txt &%mtk_process% r oeminfo "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removeoem
if %sel%==cancel goto exit
:removeoem
echo *** %date%-%time% Formating  huawei id account*** >>logs.txt
%mtk_process%  e oeminfo >>logs.txt
goto exit

:xfrp
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup persist first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing persist...*** >>logs.txt &%mtk_process% r persist "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removemi
if %sel%==cancel goto exit
:removemi
echo *** %date%-%time% Formating miaccount for xiaomi *** >>logs.txt
call :pre
%msg% "Browse your Preloader"
%mtk_process% e persist --preloader=%file% >>logs.txt
goto exit

:pre
set file=
set ps_cmd=powershell "Add-Type -AssemblyName System.windows.forms|Out-Null;$f=New-Object System.Windows.Forms.OpenFileDialog;$f.Filter='All files (.)|*.*';$f.showHelp=$true;$f.ShowDialog()|Out-Null;$f.FileName"
for /f "delims=" %%I in ('%ps_cmd%') do set "file=%%I"
if "%file%"=="" echo No file selected >>logs.txt &goto exit
exit /b

:exit
if exist testpoint.txt del /f testpoint.txt
if exist logs.txt copy /y logs.txt logs\logs_%datetime%.txt
echo process stop %date%-%time% >stop
type logs.txt | findstr /i "Error" && echo Process Failed >>logs.txt || echo Process Success >>logs.txt
taskkill /f /im python.exe
taskkill /f /im adb.exe
taskkill /f /im fastboot.exe
taskkill /f /im ffplay.exe
taskkill /f /im cmd.exe
exit
