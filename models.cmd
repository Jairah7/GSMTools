::last edit M5D5Y23g
if exist logs.txt del logs.txt
echo Created by drox-PH-Ceb for script just contact https://web.facebook.com/jairah.mazo.5/ >%fb%
echo Created by drox-PH-Ceb for script just contact jairahmazo@gmail.com >%yt%
set "model=%search%"
set search=%search:"=%
set search=%search: =%
::Software free
if /i "%search%"=="winrain" set "url=https://www.mediafire.com/file/ur7borqouxks2x0/Winrain.rar/file" &goto software
if /i "%search%"=="LCDPRICEList" set "url=https://www.mediafire.com/file/mejpg326k69k6og/TC_LCD_Market_Price_List.exe/file" &goto software
if /i "%search%"=="GSMdrivers" set "url=https://www.mediafire.com/file/l4700etvt3l5928/GSM_Drivers_Installer_setup.rar/file" &goto software
if /i "%search%"=="AndroidUtility" set "url=https://www.mediafire.com/file/m8mok08ashdttxe/AndroidUtility.v104.7z/file" &goto software
if /i "%search%"=="Samfw" set "url=https://www.mediafire.com/file/upaiwadhmstm6js/SamFwToolSetup_v4.6.zip/file" &goto software
if /i "%search%"=="TFT" set "url=https://drive.google.com/file/d/1C05zYjtFFSUHX6gOaROeO7MOj8mWNBr0/view" &goto software 
if /i "%search%"=="TC12N1" set "url=https://drive.google.com/u/0/uc?id=1DpY_IlEbK4Zqq-7TitmBNZqv7vK5cC9-&export=download" &goto software
if /i "%search%"=="eFixer" set "url=https://www.mediafire.com/file/seqtzttwvvs03kf/OPPO_A3s_%2526_A5_2020_%2526_A7_eFixer_Tool.rar/file" &goto software
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
if /i "%search%"=="reno5" set "url=https://www.youtube.com/watch?v=oKGSOWLqcTk" &goto found
if /i "%search%"=="vivoy12" set "url=https://www.youtube.com/watch?v=vLApPHWV8rU" &goto found
if /i "%search%"=="vivoy91i" set "url=https://www.youtube.com/watch?v=SSDjMrO696Y&t=4s" &goto found
if /i "%search%"=="vivoY35" set "url=https://www.youtube.com/watch?v=-8WFw32moKA" &goto found
if /i "%search%"=="realmeC11" set "url=https://www.youtube.com/watch?v=q5o6-6KnGCw&pp=ygUOYzExIGZycCBieXBhc3M%3D" &goto found 
if /i "%search%"=="vivoy15s" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="vivoy15a" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="samsungA20s" set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" &goto found
if /i "%search%"=="samsungA30s" set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" &goto found
if /i "%search%"=="xiaomi8t" set "url=https://www.youtube.com/watch?v=16_Te9jvrdw&pp=ygUKeGlhb21pIGZycA%3D%3D" &goto found
if /i "%search%"=="vivoy15" set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" &goto found
if /i "%search%"=="infinix" set "url=https://www.youtube.com/watch?v=ktv8_wty2XY&pp=ygULaW5maW5peCBmcnA%3D" &goto found
if /i "%search%"=="InfinixZero5g" set "url=https://www.youtube.com/watch?v=okAmWymcCVo" &goto found
if /i "%search%"=="ItellA26" set "url=https://www.youtube.com/watch?v=T7ktHL0ifmA" &goto found
if /i "%search%"=="ItelVision1Pro" set "url=https://www.youtube.com/watch?v=rbzcqzNJ6bk" &goto found
::-----------------------------------------------------------------------------------------------------------------------------------------------
::direct process
if /i "%search%"=="mtkprivacy" call :msg &set opt=12 &call %mtk% 
if /i "%search%"=="gui" echo  "%search%" Launching MTK Gui... >logs.txt &call mtk\mtkgui.bat &exit
if /i "%search%"=="mtkfrp" echo "%search%" Removing frp for all mtk... >logs.txt &set opt=8 &call %mtk% 
if /i "%search%"=="mtk" echo "MTK Auto Select Unit" is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=1 &call %mtk%
if /i "%search%"=="mtksafeformat" echo "Removing Passcode and FRP using Safeformat" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=1 &call %mtk%
if /i "%search%"=="mtkformat" echo "Removing Passcode and FRP via Formating Userdata and FRP" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=2 &call %mtk%
if /i "%search%"=="mtkReadGPT" echo "Reading MTK GPT" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=4 &call %mtk% 
if /i "%search%"=="mtkbypassauth" echo "Bypassing Auto" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt &set opt=9 &call %mtk% 
if /i "%search%"=="mtkunlockbootloader" echo Unlocking bootloader for mtk device... >>logs.txt &set opt=10 &call %mtk%
if /i "%search%"=="mtkrelockbootloader" echo Relocking bootloader for mtk device... >>logs.txt &set opt=11 &call %mtk%
if /i "%search%"=="mtkxiaomimiaccount" call :msg &set opt=7 &call %mtk%
if /i "%search%"=="mtkhuaweiid" call :msg &set opt=6 &call %mtk%
if /i "%search%"=="mtksamsungfrp" call :msg &set opt=5 &call %mtk%
if /i "%search%"=="INFINIXHOT10PLAY" call :msg &set opt=2 &call %mtk%
if /i "%search%"=="INFINIXHOT10sX689B" call :msg &set opt=2 &call %mtk%
if /i "%search%"=="oppof7" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppoa5s" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppoa12" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppof1s" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="oppof5" call :msg &set opt=1 &call %mtk%
if /i "%search%"=="realmec12" echo  call :msg &set opt=2 &call %mtk%
echo "%model%" | findstr /i https && goto audio
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
echo  "%model%" software found Please wait for link..>logs.txt
start "" "%url%"
goto exit

:audio
ping -n 1 google.com | findstr /i try >nul && echo No Internet Connection >logs.txt && goto exit
if not exist plugins\ffmpeg.exe echo Please wait downloading requirements this may take time for now but next download no need to download requirements....>logs.txt & PowerShell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/garfiedhuang/VideoTools/master/VideoTools/ffmpeg/bin/ffmpeg.exe','plugins\ffmpeg.exe')"
if not exist "C:\Users\%username%\Desktop\audio" mkdir "C:\Users\%username%\Desktop\audio"
plugins\yt.exe -i -x -c -w --no-warnings --audio-format mp3 --geo-bypass --yes-playlist --audio-quality 5 -o "C:\Users\%username%\Desktop\audio\%%(title)s.%%(ext)s" "%search%" >>logs.txt
if %errorlevel% NEO 0 echo Downloading Failed. Please wait trying to update downloader... && yt -U >>logs.txt 
echo downloading...finished. >>logs.txt
goto exit

:exit 
taskkill /f /im python.exe
taskkill /f /im yt.exe
taskkill /f /im ffplay.exe
taskkill /f /im cmd.exe  
exit

