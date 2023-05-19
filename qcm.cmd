::last update M5D19Y23b
if %opt%==1 goto sfrp
if %opt%==2 goto qmanualsf
if %opt%==3 goto qforceerase



:qforceerase
echo Please wait for pop up folder and browse your loader. example: mbn >logs.txt
call :browse
call :qport
set "mbn=%file%"
:startprocess1
set "qdir=C:\Users\%username%\Documents\TC-Backup\Qualcomm"
if not exist "%qdir%" mkdir "%qdir%"
echo Please wait backing up security partition ...>>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d nvram -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d nvdata -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d modemst1 -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d modemst2 -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d fsg -o "%qdir%" >>logs.txt
echo Please wait reading partition address...>>logs.txt
%qcm_process% -p %port% -f "%mbn%" -gpt | findstr /I "config" >%temp%\tmp
if %errorlevel% NEQ 0 echo Please wait reading partition address...failed >>logs.txt &goto exit
for /f "tokens=7" %%C IN (%temp%\tmp) DO set "frp=%%C"
echo ^<?xml version="1.0"?^>>qcm\tc.xml
echo ^<data^>>>qcm\tc.xml
echo   ^<erase physical_partition_number="0" start_sector="%frp%" num_partition_sectors="32" SECTOR_SIZE_IN_BYTES="512" /^>>>qcm\tc.xml
%msg% "Warning force erase is risky. Do you want to continue?" "Qualcomm Force Erase" /I:Q /B:Y | findstr "no" &&goto exit
%qcm_process% -p %port% -f "%mbn%" -gpt | findstr /I "userdata" >%temp%\tmp
for /f "tokens=7" %%C IN (%temp%\tmp) DO set "line=%%C"
echo   ^<erase physical_partition_number="0" start_sector="%line%" num_partition_sectors="1000000" SECTOR_SIZE_IN_BYTES="512" /^>>>qcm\tc.xml
echo ^</data^>>>qcm\tc.xml
echo Erasing Userdata + FRP... >>logs.txt
qcm\fhl --port=\\.\%port% --sendxml="qcm\tc.xml" --search_path="qcm\" --zlpawarehost=1 --loglevel=0 >>logs.txt
if %errorlevel% NEQ 0 (echo Erasing Userdata + FRP...ok >>logs.txt) else (echo Erasing Userdata + FRP...failed >>logs.txt)
goto exit

:qmanualsf
if exist tc.dll goto qms
if not exist qcm\files.rar PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Jairah7/GSMTools/raw/main/files.rar','qcm\files.rar')"  >nul 2>&1
if exist qcm\files.rar echo Please wait downloading requirements...success
echo Please wait extracting...>logs.txt
if exist qcm\files.rar plugins\7zip\7z x -y qcm\files.rar -oqcm >nul 2>&1
echo Please wait extracting...ok >logs.txt
if %errorlevel% NEQ 0 echo Error: Downloading failed >>logs.txt &goto exit
:qms
echo %msg% "Please wait for pop up folder and browse your loader. example: mbn" "Firehose" /T:3
echo Please wait for pop up folder and browse your loader. ex: mbn >logs.txt
call :browse
call :qport
set "mbn=%file%"
:startprocess2
set "qdir=C:\Users\%username%\Documents\TC-Backup\Qualcomm"
if not exist "%qdir%" mkdir "%qdir%"
echo Please wait backing up security partition ...>>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d nvram -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d nvdata -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d modemst1 -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d modemst2 -o "%qdir%" >>logs.txt
%qcm_process%  -p %port% -f "%mbn%" -d fsg -o "%qdir%" >>logs.txt
%qcm_process% -p %port% -f "%mbn%" -gpt | findstr /I "cache" >%temp%\tmp
for /f "tokens=7" %%C IN (%temp%\tmp) DO set "line=%%C"
%qcm_process% -p %port% -f "%mbn%" -d %line% 30000 -o qcm\cache >nul 2>&1
echo Wiping userdata...>>logs.txt
%qcm_process% -p %port% -f "%mbn%" -b misc qcm\tc.dll >>logs.txt
%qcm_process% -p %port% -f "%mbn%" -b userdata qcm\userdata >>logs.txt
%qcm_process% -p %port% -f "%mbn%" -b userdata qcm\cache >>logs.txt
if %errorlevel% NEQ 0 %qcm_process% -p %port% -f "%mbn%" -e userdata >nul 2>&1
goto exit

:sfrp
call :qport
if not exist "%userprofile%\My Documents\Qualcomm_backup" mkdir "%userprofile%\My Documents\Qualcomm_backup"
echo Please wait backing up persistent >>logs.txt
%qcm_process% -p %port% -f "%mbn%" -d persistent "%userprofile%\My Documents\Qualcomm_backup"
echo Removing Samsung FRP...>>logs.txt
%qcm_process% -p %port% -f "%mbn%" -e persistent >>logs.txt
goto exit 


:qport
set port=
set #=122
:sport
timeout 1 >nul &echo Waiting for device...%#% >logs.txt
set /a #-=1
if %#%==0 goto nodevice
reg query HKLM\hardware\devicemap\SERIALCOMM >%temp%\tmp
findstr /I "QCUSB" %temp%\tmp >%temp%\tmp1 || goto sport
for /f "tokens=3" %%G IN (%temp%\tmp1) DO set "port=%%G" &del /f %temp%\tmp1
echo Device Found: %port% >>logs.txt
echo Sending Loader... >>logs.txt
%qcm_process% -p %port% -f "%mbn%" >>logs.txt
if %errorlevel% NEQ 0 ( goto rtrace ) else ( echo Sending Loader...OK >>logs.txt )
exit /b


:rtrace
if %errorlevel%==0 ( echo Operation Finished. . .>>logs.txt) else (echo Operation Failed. . .>>logs.txt)
if (%port%) NEQ () qcm\\fhl --port=\\.\%port% --reset --noprompt --setactivepartition=0 >>logs.txt
::del /Q /A :H :S ( port_trace.txt bin\* ) >nul 2>&1 &set port=
goto exit

:exit 
echo process stop %date%-%time% >stop
if exist port_trace.txt del /f port_trace.txt 
taskkill /f /im adb.exe
taskkill /f /im yt.exe
taskkill /f /im ffmpeg.exe
taskkill /f /im cmd.exe
exit

:nodevice
%msg% "Sorry No Device Detected." "Serial Port" /T:5
goto exit

:browse
set file=
set ps_cmd=powershell "Add-Type -AssemblyName System.windows.forms|Out-Null;$f=New-Object System.Windows.Forms.OpenFileDialog;$f.Filter='All files (.)|*.*';$f.showHelp=$true;$f.ShowDialog()|Out-Null;$f.FileName"
for /f "delims=" %%I in ('%ps_cmd%') do set "file=%%I"
if "%file%"=="" echo No File is Chosen...>logs.txt &goto exit
exit /b


