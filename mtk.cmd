::last update M8D29Y23
set loader=
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
if %opt%==17 goto dump
if %opt%==18 goto fixverity

:fixverity
echo. >>logs.txt
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto :fixdm 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit

:fixdm
echo Fixing dm-verity corruption... >>logs.txt
%mtk_process% w vbmeta %dir:~0,-7%\firmware\vbmeta.img %loader% >>logs.txt
goto exit

:dump
echo. >>logs.txt
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto :dumpbv 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
if not exist dump mkdir dump
echo Please wait backing up vbmeta.img and boot.img... >>logs.txt
:dumpbv
%mtk_process% r boot,vbmeta dump\boot.img,dump\vbmeta.img %loader% >>logs.txt
goto exit

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
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process1 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process1
echo *** %date%-%time% Formating password only*** >>logs.txt
%mtk_process%  e userdata %loader% >>logs.txt
goto exit

:msafeformat
::safeformat
echo. >>logs.txt
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process2 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process2
echo *** %date%-%time% Removing password - safeformat *** >>logs.txt
%mtk_process% w para mtk\password.dll %loader% >>logs.txt
goto exit

:removedemo
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process3 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
echo *** %date%-%time% Please wait removing demo for vivo device *** >>logs.txt
:process3
%mtk_process% e backup %loader% >>logs.txt
goto exit

:mrebuild
if not exist mtk\rdata.rar echo Please wait downloading file...>>logs.txt &goto download
if exist mtk\rdata echo *** %date%-%time% Please wait rebuilding Userdata for mtk device *** >>logs.txt &goto mrebuild
:download
PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Jairah7/GSMTools/raw/main/rdata.rar','mtk\rdata.rar')" >>logs.txt
if exist mtk\rdata.rar plugins\7zip\7z x -y mtk\rdata.rar -omtk >>logs.txt
:mrebuild
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process4 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process4
echo Please wait Rebuilding userdata... >>logs.txt
if exist mtk\rdata %mtk_process% w userdata mtk\rdata %loader% >>logs.txt 
goto exit

:mprivacy
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process5 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process5
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup nvdata first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing nvdata...*** >>logs.txt &%mtk_process% r nvdata %loader% "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removeprivacy
if %sel%==cancel goto exit
:removeprivacy
echo *** %date%-%time% Please wait Removing privacy for mtk device *** >>logs.txt
%mtk_process% e nvdata %loader% >>logs.txt
goto exit

:relockbl
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process6 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
process6
echo *** %date%-%time% Please wait relocking bootloader for mtk device *** >>logs.txt
%mtk_process% da seccfg lock %loader% >>logs.txt
goto exit

:unlockbl
if %search%==redmi9aunlockbootloader set loader=--preloader=%dir:~0,-7%\preloader\preloader_Redmi_9a_246.bin &call :process7
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process7 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process7
echo *** %date%-%time% Please wait unlocking bootloader for mtk device *** >>logs.txt
%mtk_process% da seccfg unlock %loader% >>logs.txt
goto exit

:payload
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process8 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process8
echo *** %date%-%time% Bypassing Auth *** >>logs.txt
%mtk_process% payload %loader% >>logs.txt
goto exit


:gpt
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process9 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process9
echo *** %date%-%time% Reading GPT *** >>logs.txt
%mtk_process% printgpt %loader% >>logs.txt
goto exit

:smtk
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process10 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process10
::safeformat plus frp
if exist frp.txt goto mfrp
echo. >>logs.txt
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe %loader% >>logs.txt
goto exit

:cmtk
if exist frp.txt goto mfrp
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process11 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
::safeformat
echo. >>logs.txt
:process11
echo *** %date%-%time% Removing password and FRP *** >>logs.txt
%mtk_process% w para,frp mtk\password.dll,mtk\frp.exe %loader% >>logs.txt
goto exit

:fmtk
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process12 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process12
::format
if exist frp.txt goto mfrp
echo. >>logs.txt
echo *** %date%-%time% Formating password and FRP *** >>logs.txt
%mtk_process%  e userdata,frp %loader% >>logs.txt
goto exit

:mfrp
if %search%==redmi9afrp set loader=--preloader=%dir:~0,-7%\preloader\preloader_Redmi_9a_246.bin &call :process13
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process13 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process13
::format
%msg% "%loader%"
echo. >>logs.txt
echo *** %date%-%time% Formating FRP *** >>logs.txt
%mtk_process% e frp %loader% >>logs.txt
goto exit

:sfrp
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process14 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process14
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup persistent first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing persistent...*** >>logs.txt &%mtk_process% r persistent %loader% "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removesfrp
if %sel%==cancel goto exit
:removesfrp
echo *** %date%-%time% Formating FRP for mtk samsung *** >>logs.txt
%mtk_process%  e persistent %loader% >>logs.txt
goto exit

:hfrp
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process15 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process15
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup oeminfo first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing oeminfo...*** >>logs.txt &%mtk_process% r oeminfo %loader% "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removeoem
if %sel%==cancel goto exit
:removeoem
echo *** %date%-%time% Formating  huawei id account*** >>logs.txt
%mtk_process%  e oeminfo %loader% >>logs.txt
goto exit

:xfrp
if %search%==redmi9amiaccount set loader=--preloader=%dir:~0,-7%\preloader\preloader_Redmi_9a_246.bin &call :process16
%msg% "Auto Select Preloader?" "Loader" /I:Q /B:N >tmp
set /p _opt=<tmp &del /f tmp
if %_opt%==yes goto process16 
if %_opt%==no %msg% "Please wait for pop up folder and browse your preloader..." "Crash to Brom" /T:5 &call :pre &set loader=--preloader=%file%
if %_opt%==cancel goto exit
:process16
::format
echo. >>logs.txt
if not exist "C:\Users\%username%\Documents\TC-Backup" mkdir "C:\Users\%username%\Documents\TC-Backup"
%msg% "Please Backup persist first - recommended" "TC-Backup" /I:Q /B:N >tmp
set /p sel=<tmp &del /f tmp
if %sel%==yes echo ***%date%-%time% Please wait backing persist...*** >>logs.txt &%mtk_process% r persist %loader% "C:\Users\%username%\Documents\TC-Backup" >>logs.txt
if %sel%==no goto removemi
if %sel%==cancel goto exit
:removemi
echo *** %date%-%time% Formating miaccount for xiaomi *** >>logs.txt
%mtk_process% e persist %loader% >>logs.txt
goto exit

:pre
set file=
set ps_cmd=powershell "Add-Type -AssemblyName System.windows.forms|Out-Null;$f=New-Object System.Windows.Forms.OpenFileDialog;$f.Filter='All files (.)|*.*';$f.showHelp=$true;$f.ShowDialog()|Out-Null;$f.FileName"
for /f "delims=" %%I in ('%ps_cmd%') do set "file=%%I"
if "%file%"=="" echo No file selected >>logs.txt &goto exit
echo Preloader: %loader%
exit /b

:img
set img=
set ps_cmd=powershell "Add-Type -AssemblyName System.windows.forms|Out-Null;$f=New-Object System.Windows.Forms.OpenFileDialog;$f.Filter='All files (.)|*.*';$f.showHelp=$true;$f.ShowDialog()|Out-Null;$f.FileName"
for /f "delims=" %%I in ('%ps_cmd%') do set "img=%%I"
if "%img%"=="" echo No img selected >>logs.txt &goto exit
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
