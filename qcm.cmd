::last update M5D11Y23
if %opt%==1 goto sfrp

:sfrp
call :qport
echo Removing Samsung FRP...>>logs.txt
emmcdl -p %port% -f "%mbn%" -e persistent >>logs.txt
goto exit 


:qport
set port=
set #=122
:sport
timeout 1 >nul &echo Waiting for device...%#% >>logs.txt
set /a #-=1
reg query HKLM\hardware\devicemap\SERIALCOMM >%temp%\tmp
findstr /I "QCUSB" %temp%\tmp >%temp%\tmp1 || goto sport
for /f "tokens=3" %%G IN (%temp%\tmp1) DO set "port=%%G" &del /f %temp%\tmp1
echo Device Found: %port% >>logs.txt
echo Sending Loader... >>logs.txt &emmcdl -p %port% -f "%mbn%" >>logs.txt
if %errorlevel% NEQ 0 ( goto rtrace ) else ( echo Sending Loader...OK >>logs.txt )
exit /b


:rtrace
if %errorlevel%==0 ( echo Operation Finished. . .>>logs.txt) else (echo Operation Failed. . .>>logs.txt)
if (%port%) NEQ () fhl --port=\\.\%port% --reset --noprompt --setactivepartition=0 >>logs.txt
::del /Q /A :H :S ( port_trace.txt bin\* ) >nul 2>&1 &set port=
goto exit

:exit 
taskkill /f /im cmd.exe
exit


