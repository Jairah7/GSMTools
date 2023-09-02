::last edit M09D01Y23
if exist logs.txt del logs.txt
set datetime=D%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
set datetime=%datetime: =T%
set enabling=mtk\python.exe &set adb=main.py
echo Created by drox-PH-Ceb for script just contact https://web.facebook.com/jairah.mazo.5/ >%fb%
echo Created by drox-PH-Ceb for script just contact jairahmazo@gmail.com >%yt%
set "model=%search%"
set search=%search:"=%
set search=%search: =%
::Software free
if /i "%search%"=="Zenon_1.8" set "url=https://www.mediafire.com/file/a0i6ize4mmazs35/Zenon_1.8.zip/file" &goto software 
if /i "%search%"=="winrain" set "url=https://www.mediafire.com/file/ur7borqouxks2x0/Winrain.rar/file" &goto software
if /i "%search%"=="LCDPRICEList" set "url=https://www.mediafire.com/file/mejpg326k69k6og/TC_LCD_Market_Price_List.exe/file" &goto software
if /i "%search%"=="GSMdrivers" set "url=https://www.mediafire.com/file/l4700etvt3l5928/GSM_Drivers_Installer_setup.rar/file" &goto software
if /i "%search%"=="AndroidUtility" set "url=https://www.mediafire.com/file/wknfl48pdpqn9rs/AndroidUtility.v105.7z" &goto software
if /i "%search%"=="Samfw" set "url=https://www.mediafire.com/file/upaiwadhmstm6js/SamFwToolSetup_v4.6.zip/file" &goto software
if /i "%search%"=="TFT" set "url=https://drive.google.com/file/d/1C05zYjtFFSUHX6gOaROeO7MOj8mWNBr0/view" &goto software 
if /i "%search%"=="TC12N1" set "url=https://drive.google.com/u/0/uc?id=1DpY_IlEbK4Zqq-7TitmBNZqv7vK5cC9-&export=download" &goto software
if /i "%search%"=="eFixer" set "url=https://www.mediafire.com/file/seqtzttwvvs03kf/OPPO_A3s_%2526_A5_2020_%2526_A7_eFixer_Tool.rar/file" &goto software
if /i "%search%"=="iFRPFILE_AIO_v2.8.6" set "url=https://www.mediafire.com/file/4k75elmcy6gloit/iFRPFILE_AIO_v2.8.6.zip/file" &goto software 
::Manual Referrences 
if /i "%search%"=="vivo" set "url=https://www.youtube.com/watch?v=aIJucmnFAV4" &goto found
if /i "%search%"=="vivoT25G" set "url=https://www.youtube.com/watch?v=rTaiOILG2t8" &goto found
if /i "%search%"=="vivoT2X5G" set "url=https://www.youtube.com/watch?v=rTaiOILG2t8" &goto found
if /i "%search%"=="vivoT1" set "url=https://www.youtube.com/watch?v=3b_1eUeT16k" &goto found
if /i "%search%"=="vivoY22s" set "url=https://www.youtube.com/watch?v=3b_1eUeT16k" &goto found
if /i "%search%"=="vivoY22" set "url=https://www.youtube.com/watch?v=3b_1eUeT16k" &goto found
if /i "%search%"=="oppoA52020" set "url=https://www.youtube.com/watch?v=HVEvPXsgKss&t=84s" &goto found 
if /i "%search%"=="TecnoSpark9T" set "url=https://www.youtube.com/watch?v=iTfx9as5HZw" &goto found
if /i "%search%"=="infinixsmart5" set "url=https://www.youtube.com/watch?v=y8kSKE16UqM" &goto found
if /i "%search%"=="vivoy12s" set "url=https://www.youtube.com/watch?v=QynCJz9jJE8" &goto found
if /i "%search%"=="OppoA16-CPH2269" set "url=https://www.youtube.com/watch?v=-l6wmbnuM6U" &goto found
if /i "%search%"=="OppoAndroid13" set "url=https://www.youtube.com/watch?v=SfNB9NmBVrI" &goto found
if /i "%search%"=="oppoa16" set "url=https://www.youtube.com/watch?v=J2wS4LvNwus" &goto found
if /i "%search%"=="oppo" set "url=https://www.youtube.com/watch?v=J2wS4LvNwus" &goto found
if /i "%search%"=="reno5" set "url=https://www.youtube.com/watch?v=oKGSOWLqcTk" &goto found
if /i "%search%"=="vivoy12" set "url=https://www.youtube.com/watch?v=vLApPHWV8rU" &goto found
if /i "%search%"=="vivoy91i" set "url=https://www.youtube.com/watch?v=SSDjMrO696Y&t=4s" &goto found
if /i "%search%"=="vivoY35" set "url=https://www.youtube.com/watch?v=-8WFw32moKA" &goto found
if /i "%search%"=="realmeC11" set "url=https://www.youtube.com/watch?v=q5o6-6KnGCw&pp=ygUOYzExIGZycCBieXBhc3M%3D" &goto found 
if /i "%search%"=="vivoy15s" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="vivoy15a" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="samsungA20s" set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" &goto found
if /i "%search%"=="samsungA30s" set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" &goto found
if /i "%search%"=="vivoy15" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="infinix" set "url=https://www.youtube.com/watch?v=ktv8_wty2XY&pp=ygULaW5maW5peCBmcnA%3D" &goto found
if /i "%search%"=="InfinixZero5g" set "url=https://www.youtube.com/watch?v=okAmWymcCVo" &goto found
if /i "%search%"=="ItellA26" set "url=https://www.youtube.com/watch?v=T7ktHL0ifmA" &goto found
if /i "%search%"=="ItelVision1Pro" set "url=https://www.youtube.com/watch?v=rbzcqzNJ6bk" &goto found
::-----------------------------------------------------------------------------------------------------------------------------------------------
::direct process for mtk
if /i "%search%"=="crashtobrom" call :msg &set opt=17 &call %mtk%
if /i "%search%"=="mtkremovevivodemo" call :msg &set opt=14 &call %mtk%
if /i "%search%"=="mtkrebuilduserdata" call :msg &set opt=13 &call %mtk% 
if /i "%search%"=="mtkprivacy" call :msg &set opt=12 &call %mtk% 
if /i "%search%"=="gui" echo  "%search%" Launching MTK Gui... >logs.txt &call mtk\mtkgui.bat &exit
if /i "%search%"=="mtkfrp" echo "%search%" Removing frp for all mtk... >logs.txt &set opt=8 &call %mtk% 
if /i "%search%"=="mtk" echo "MTK Auto Select Unit" is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=1 &call %mtk%
if /i "%search%"=="mtksafeformat" echo "Removing Passcode using Para" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=15 &call %mtk%
if /i "%search%"=="mtksafeformat+frp" echo "Removing Passcode and FRP using Safeformat" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=1 &call %mtk%
if /i "%search%"=="mtkformat" echo "Formating Passcode" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=16 &call %mtk%
if /i "%search%"=="mtkformat+frp" echo "Removing Passcode and FRP via Formating Userdata and FRP" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=2 &call %mtk%
if /i "%search%"=="mtkReadGPT" echo "Reading MTK GPT" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=4 &call %mtk% 
if /i "%search%"=="mtkbypassauth" echo "Bypassing Auto" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=9 &call %mtk% 
if /i "%search%"=="mtkunlockbootloader" echo Unlocking bootloader for mtk device... >>logs.txt &set opt=10 &call %mtk%
if /i "%search%"=="mtkrelockbootloader" echo Relocking bootloader for mtk device... >>logs.txt &set opt=11 &call %mtk%
if /i "%search%"=="mtkxiaomimiaccount" call :msg &set opt=7 &call %mtk%
if /i "%search%"=="mtkhuaweiid" call :msg &set opt=6 &call %mtk%
if /i "%search%"=="mtksamsungfrp" call :msg &set opt=5 &call %mtk%
if /i "%search%"=="INFINIXHOT10PLAY" call :msg &set opt=2 &call %mtk%
if /i "%search%"=="INFINIXHOT10sX689B" call :msg &set opt=2 &call %mtk%
if /i "%search%"=="oppof7" call :msg &set tp=https://i.imgur.com/Er7kRgg.png &set opt=1 &call %mtk%
if /i "%search%"=="oppoa83" call :msg &set tp=https://i.imgur.com/b37VlNP.png &set opt=15 &call %mtk%
if /i "%search%"=="oppoa5s" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppoa12" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppof1s" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppof5" call :msg &set tp=https://i.imgur.com/l2qKRWL.png &set opt=1 &call %mtk%
if /i "%search%"=="realmec12" call :msg &set opt=2 &call %mtk%
if /i "%search%"=="vivoy81" call :msg &set tp=https://i.imgur.com/blux1ds.png &set opt=1 &call %mtk%
if /i "%search%"=="redmia1" call :msg &set opt=8 &call %mtk%
if /i "%search%"=="redmi9afrp" call :msg &set opt=8 &call %mtk%
if /i "%search%"=="redmi9amiaccount" call :msg &set opt=7 &call %mtk%
if /i "%search%"=="redmi9aunlockbootloader" call :msg &set opt=10 &call %mtk%
if /i "%search%"=="huaweiy6pro" call :msg &set tp=https://i.imgur.com/egmx5io.png &set opt=8 &call %mtk%
if /i "%search%"=="mtkdumpbootandvbmeta" call :msg &set opt=17 &call %mtk%
if /i "%search%"=="mtkfixdm-veritycorruption" call :msg &set opt=18 &call %mtk%
::direct process for qualcomm
:: ---------------------------------------------------------------------------------------
if /i "%search%"=="QualcommManualSafeformat" echo You had selected Manual Safeformat >>logs.txt &set opt=2 &call %qcm% 
if /i "%search%"=="QualcommForceErase" echo You had selected Qualcomm Force Erase >>logs.txt &set opt=3 &call %qcm%
if /i "%search%"=="SM-A705" set "mbn=firehose\SM-A705.elf" &set tp=https://i.imgur.com/iIYHuoN.png &set opt=1 &call %qcm%
if /i "%search%"=="SM-M115" set "mbn=firehose\SM-M115.mbn" &set tp=https://i.imgur.com/AF950HT.png &set opt=1 &call %qcm%
if /i "%search%"=="SM-A115" set "mbn=firehose\SM-A115.mbn" &set tp=https://i.imgur.com/8P4IFL9.png &set opt=1 &call %qcm%
if /i "%search%"=="SM-A025" set "mbn=firehose\SM-A025.mbn" &set tp=https://i.imgur.com/knQF3WS.png &set opt=1 &call %qcm%
if /i "%search%"=="SM-A015" set "mbn=firehose\SM-A015.mbn" &set tp=https://i.imgur.com/pA261iw.jpg &set opt=1 &call %qcm%
::--------------------------------for adb functions---------------------------------------
if /i "%search%"=="enableadb" call enable_adb.cmd
if /i "%search%"=="adbreaddeviceinfo" call :adb &goto exit 
if /i "%search%"=="adbenablediag" call :adb &goto endiag 
if /i "%search%"=="adbremovefrp" call :adb &goto adbfrp 
if /i "%search%"=="adbremovemdmlock" call :adb &goto mdmlock
if /i "%search%"=="adbreboottorecoverymode" call :adb &goto recovery 
if /i "%search%"=="adbreboottoedlmode" call :adb &goto adbedl
if /i "%search%"=="adbmiantirelock" call :adb &goto miantirelock
::-----------------------------------------------------------------------------------------
if /i "%search%"=="mtpbrowser" goto mtp
:: for audio downloader
echo "%model%" | findstr /i https && goto download
echo Sorry "%search%" is not found.Please check referece in "Supported Model List" or just inform me so that i can add it in database. >>logs.txt
goto exit

::----------------------------------------------------------------------------------------

:found
echo  "%model%" Model Reference found Please wait for pop-up...>logs.txt
exit /b

:msg
echo  "%model%" model is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt
exit /b

:software
echo  "%model%" software found. Please wait for pop-up link...>logs.txt
start "" "%url%"
echo  "%model%" software found. Please wait for pop-up link...ok >logs.txt
goto exit





:download
%msg% "Select Yes for Audio and No for Video" "TC-Downloader" /I:Q /B:N >tmp
set /p opt=<tmp &del /f tmp
if %opt%==yes goto audio
if %opt%==no goto video
if %opt%==cancel goto exit

:audio
echo Downloading audio...>logs.txt
ping -n 1 google.com | findstr /i try >nul && echo No Internet Connection >logs.txt && goto exit
if not exist plugins\ffmpeg.exe echo Please wait downloading requirements this may take time for now but next download no need to download requirements....>logs.txt & PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/garfiedhuang/VideoTools/master/VideoTools/ffmpeg/bin/ffmpeg.exe','plugins\ffmpeg.exe')"
if not exist "C:\Users\%username%\Desktop\audio" mkdir "C:\Users\%username%\Desktop\audio"
%downloading% -i -x -c -w --no-warnings --audio-format mp3 --geo-bypass --yes-playlist --audio-quality 5 -o "C:\Users\%username%\Desktop\audio\%%(title)s.%%(ext)s" "%search%" >>logs.txt
if %errorlevel% NEQ 0 echo Sorry downloading failed...& echo Checking update for TC-Downloader >>logs.txt &yt - U  >>logs.txt 
echo downloading audio finished >>logs.txt
goto exit

:video
ping -n 1 google.com | findstr /i try >nul && echo No Internet Connection >logs.txt && goto exit
if not exist plugins\ffmpeg.exe echo Please wait downloading requirements this may take time for now but next download no need to download requirements....>logs.txt & PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/garfiedhuang/VideoTools/master/VideoTools/ffmpeg/bin/ffmpeg.exe','plugins\ffmpeg.exe')"
if not exist "C:\Users\%username%\Desktop\video" mkdir "C:\Users\%username%\Desktop\video"
echo Downloading Video...>>logs.txt
%downloading% -i -c -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" --yes-playlist -o "C:\Users\%username%\Desktop\video\%%(title)s.%%(ext)s" "%search%" >>logs.txt
if %errorlevel% NEQ 0 echo Error downloading trying method 2 >>logs.txt &echo. &plugins\yt.exe -i -c --yes-playlist -o "C:\Users\%username%\Desktop\video\%%(title)s.%%(ext)s" "%search%" >>logs.txt
if %errorlevel% NEQ 0 echo Sorry downloading failed...& echo Checking update for TC-Downloader >>logs.txt &yt - U  >>logs.txt
echo downloading video finished >>logs.txt
goto exit

:miantirelock
echo Processing anti-relock for Mi-account >>logs.txt
qcm\adb shell pm uninstall --user 0 com.xiaomi.finddevice >>logs.txt
%msg% "Warning: Don't restart the unit. Please install drony.apk. After installation connect usb cable and click ok." "Click ok after drony apk installation" 
call :adb
qcm\adb shell pm install-existing com.xiaomi.finddevice >>logs.txt
timeout 10 >nul
goto exit

:adbedl
echo Rebooting to EDL Mode...>logs.txt
qcm\adb reboot edl >logs.txt
if %errorlevel% NEQ 0 echo Rebooting to EDL Mode...success >logs.txt &goto exit
echo Rebooting to EDL Mode...done >logs.txt
goto exit

:recovery
echo Rebooting to Recovery Mode...>logs.txt
qcm\adb reboot recovery >logs.txt
if %errorlevel% NEQ 0 echo Rebooting to Recovery Mode...success >logs.txt &goto exit
echo Rebooting to Recovery Mode...done >logs.txt
goto exit

:mdmlock
echo Removing MDM lock...>logs.txt
qcm\adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms >logs.txt
if %errorlevel% NEQ 0 echo Removing MDM lock...success >logs.txt &goto exit
echo Removing MDM lock...done >logs.txt
goto exit

:adbfrp
echo Removing FRP via adb...>logs.txt
qcm\adb shell content insert --uri content://settings/secure --bind name:s:user_setup_complete --bind value:s:1 >logs.txt
qcm\adb shell am start -c android.intent.category.HOME -a android.intent.action.MAIN 
if %errorlevel%==0 echo Removing FRP via adb...success >logs.txt &timeout 1 >nul &qcm\adb shell input keyevent 3 >nul 2>&1 &goto exit
echo Removing FRP via adb...done >logs.txt
goto exit

:endiag
echo Please wait enabling diagnostic port... >logs.txt
qcm\adb shell am start -n com.longcheertel.midtest/com.longcheertel.midtest.Diag >logs.txt
if %errorlevel% NEQ 0 echo Please wait enabling diagnostic port...success >logs.txt &goto exit
echo Please wait enabling diagnostic port...done >logs.txt
goto exit

:adb
set #=121
echo Please wait initializing... >logs.txt
qcm\adb kill-server >logs.txt
qcm\adb start-server >logs.txt
%msg% "[1] Top build number in about phone 7 times to enable developer option. [2] Enable usb debugging and connect usb cable" "Instruction" 
:adbwait
set /a #-=1
echo Waiting for device...%#% >logs.txt
if %#%==110 echo Please check "Allow USB debugging on your device screen" >logs.txt &timeout 3 >nul 
if %#%==100 echo Please check you driver >logs.txt
if %#%==0 goto nodevice
qcm\adb shell getprop ro.build.product >nul
if %errorlevel% NEQ 0 timeout 1 >nul &goto adbwait
:detected
echo Waiting for device...detected >logs.txt
echo. >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.build.product') DO echo Build Product: ---------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop gsm.sim.state') DO echo SIM State [1,2] : ------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell "service call iphonesubinfo 1 | toybox cut -d \"'\" -f2 | toybox grep -Eo '[0-9]' | toybox xargs | toybox sed 's/\ //g'"') DO echo IMEI number:  ---------- %%G >>logs.txt
for /F "tokens=3" %%G IN ('qcm\adb shell wm size') DO echo Screen Resolution:  ---- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.serialno')  DO echo Serial Number:  --------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.hardware') DO echo Chip Type:  -------------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.build.display.id') DO echo Build Number: ----------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.build.version.release') DO echo Android Version : ------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.build.version.security_patch') DO echo Security Patch: --------- %%G >>logs.txt
for /F "tokens=1" %%G IN ('qcm\adb shell getprop gsm.version.baseband') DO echo Baseband Version: ------ %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop sys.usb.config') DO echo USB Configuration: ------ %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop gsm.sim.operator.alpha') DO echo SIM Operator: ---------- %%G >>logs.txt
for /F "tokens=3" %%G IN ('qcm\adb shell cat /proc/version') DO echo Kernel Version: ---------- %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.boot.hardware.ddr') DO echo RAM Information: ------ %%G >>logs.txt
for /F "tokens=*" %%G IN ('qcm\adb shell getprop ro.boot.hardware.emmc') DO echo Rom Information: ------ %%G >>logs.txt
exit /b

:mtp
cls
set /p url=<"url.txt"
call :checkmtp
powershell -Command "(gc drivers\SAMSUNG_Android.inf) -%get% '%port%', 'VID_%vid%&PID_%pid%' | Out-File -encoding ASCII %inf%"
echo %ProgramFiles(x86)% | find "x86" > NUL && set "install=drivers\install_x64" || set "install=drivers\install_x86"
if "%install%"=="install_x64" echo YOU MUST Disable driver signature enforcement
echo echo Installing drivers...>>logs.txt
(
echo @echo off
echo %install% -i "-f=%inf%"
echo echo Launching mtk browser...>>logs.txt
echo %adk% -d "%vid%:%pid%"  -m "drox-PH-Ceb" -D "TC Manual_Direct" -u "%url%" -s "Ceb" 
echo echo Cleaning drivers...>>logs.txt
echo %install% -u "-f=%inf%" 
)>drivers\run.cmd
powershell "Start-Process drivers\run.cmd t -Verb RunAs" >nul &timeout 10 >nul &del /f drivers\run.cmd
del /f drivers\install.inf 
goto exit

:checkmtp
cls
echo Waiting for device...%#% >>logs.txt
set /a #+=1
if %#%==120 goto nodevice
timeout 1 >nul &set line=
pnputil /enum-devices /connected /class WPD | find "Description" >%temp%\tmp
if %errorlevel% NEQ 0 goto checkmtp
for /f "usebackq tokens=3-5" %%A IN (%temp%\tmp) DO echo Device Found %%A %%B %%C >>logst.txt
pnputil /enum-devices /connected /class WPD | find "VID" >%temp%\tmp || echo Sorry no VID and PID found >>logs.txt && goto exit
for /f "tokens=3" %%G IN (%temp%\tmp) DO set line="%%G"
set "vid=%line:~9,4%" &set "pid=%line:~18,4%"
set #=0 
exit /b

:nodevice
echo No Device >>logs.txt
%msg% "No Device" "ADB" /T:3
goto exit

:exit 
if exist logs.txt copy /y logs.txt logs\logs_%datetime%.txt
if exist testpoint.txt del /f testpoint.txt
echo process stop %date%-%time% >stop
taskkill /f /im python.exe
taskkill /f /im yt.exe
taskkill /f /im ffplay.exe
taskkill /f /im cmd.exe
taskkill /f /im adb.exe
taskkill /f /im fastboot.exe
exit

