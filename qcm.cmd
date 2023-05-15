::last update M5D15Y23c
if %opt%==1 goto sfrp
if %opt%==2 goto qmanualsf

:qmanualsf
if exist tc.dll goto qms
if not exist qcm\files.rar %msg% "Please wait downloading requirements..." "Downloading" /T:3
if not exist qcm\files.rar PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Jairah7/GSMTools/raw/main/files.rar','qcm\files.rar')"  >nul 2>&1
if exist qcm\files.rar echo Please wait downloading requirements...success
echo Please wait extracting...>logs.txt
if exist qcm\files.rar plugins\7zip\7z x -y qcm\files.rar -oqcm >nul 2>&1
echo Please wait extracting...ok >logs.txt
if %errorlevel% NEQ 0 echo Error: Downloading failed >>logs.txt &goto exit
:qms
echo %msg% "Please wait for pop up folder and browse your firehose/mbn file" "Firehose" /T:3
echo Please wait for pop up folder and browse your firehose/mbn file >logs.txt
call :browse
call :qport
set "mbn=%file%"
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


