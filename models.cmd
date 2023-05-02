::last edit M5D2Y23
if exist logs.txt del logs.txt
echo Created by drox-PH-Ceb for script just contact https://web.facebook.com/jairah.mazo.5/ >%fb%
echo Created by drox-PH-Ceb for script just contact jairahmazo@gmail.com >%yt%
::Software free
echo "%search%" | findstr /i "AndroidUtility" && set "url=https://www.mediafire.com/file/m8mok08ashdttxe/AndroidUtility.v104.7z/file" && goto software
echo "%search%" | findstr /i "Samfw" && set "url=https://www.mediafire.com/file/upaiwadhmstm6js/SamFwToolSetup_v4.6.zip/file" && goto software
echo "%search%" | findstr /i "TFT" && set "url=https://drive.google.com/file/d/1C05zYjtFFSUHX6gOaROeO7MOj8mWNBr0/view" && goto software 
echo "%search%" | findstr /i "TC_12N1" && set "url=https://drive.google.com/u/0/uc?id=1DpY_IlEbK4Zqq-7TitmBNZqv7vK5cC9-&export=download" && goto software
echo "%search%" | findstr /i "eFixer" && set "url=https://www.mediafire.com/file/seqtzttwvvs03kf/OPPO_A3s_%2526_A5_2020_%2526_A7_eFixer_Tool.rar/file" && goto software
::Manual Referrences
echo "%search%" | findstr /i "y12s" && set "url=https://www.youtube.com/watch?v=QynCJz9jJE8" && goto found
echo "%search%" | findstr /i "reno_5" && set "url=https://www.youtube.com/watch?v=oKGSOWLqcTk" && goto found
echo "%search%" | findstr /i "y12" && set "url=https://www.youtube.com/watch?v=vLApPHWV8rU" && goto found
echo "%search%" | findstr /i "y91i" && set "url=https://www.youtube.com/watch?v=SSDjMrO696Y&t=4s" && goto found
echo "%search%" | findstr /i "Y35" && set "url=https://www.youtube.com/watch?v=-8WFw32moKA" && goto found
echo "%search%" | findstr /i "C11" && set "url=https://www.youtube.com/watch?v=q5o6-6KnGCw&pp=ygUOYzExIGZycCBieXBhc3M%3D" && goto found 
echo "%search%" | findstr /i "y15s" && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" && goto found
echo "%search%" | findstr /i "y15a" && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" && goto found
echo "%search%" | findstr /i "A20s" && set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" && goto found
echo "%search%" | findstr /i "A30s" && set "url=https://www.youtube.com/watch?v=J8h-IK4u9SM" && goto found
echo "%search%" | findstr /i "xiaomi 8t" && set "url=https://www.youtube.com/watch?v=16_Te9jvrdw&pp=ygUKeGlhb21pIGZycA%3D%3D" && goto found
echo "%search%" | findstr /i "y15" && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" && goto found
echo "%search%" | findstr /i "infinix" && set "url=https://www.youtube.com/watch?v=ktv8_wty2XY&pp=ygULaW5maW5peCBmcnA%3D" && goto found
::-----------------------------------------------------------------------------------------------------------------------------------------------
::direct process
echo "%search%" | findstr /i "gui" && echo  "%search%" Launching MTK Gui... >logs.txt && call mtk\mtkgui.bat && exit
echo "%search%" | findstr /i "mfrp" && echo "%search%" Removing frp for all mtk... >logs.txt && set opt=8 && call %mtk% 
echo "%search%" | findstr /i "mtk" && echo  "MTK Auto Select Unit" is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=1 && call %mtk%
echo "%search%" | findstr /i "msafeformat" && echo "Removing Passcode and FRP using Safeformat" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=1 && call %mtk%
echo "%search%" | findstr /i "mformat" && echo "Removing Passcode and FRP via Formating Userdata and FRP" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=2 && call %mtk%
echo "%search%" | findstr /i "mReadGPT" && echo "Reading MTK GPT" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=4 && call %mtk% 
echo "%search%" | findstr /i "mbypassauth" && echo "Bypassing Auto" Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=9 && call %mtk% 
::-----------------------------------------------------------------------------------------
echo "%search%" | findstr /i "INFINIX_HOT_10_PLAY" && call :msg && set opt=2 && call %mtk%
echo "%search%" | findstr /i "INFINIX_HOT_10s X689B" && call :msg && set opt=2 && call %mtk%
echo "%search%" | findstr /i "a5s" && call :msg && set opt=1 && call %mtk%
echo "%search%" | findstr /i "a12" && call :msg && set opt=1 && call %mtk%
echo "%search%" | findstr /i "f1s" && call :msg && set opt=1 && call %mtk%
echo "%search%" | findstr /i "f5" && call :msg && set opt=1 &&call %mtk%
echo "%search%" | findstr /i "c12" && echo  call :msg && set opt=2 && call %mtk%
echo  "Sorry Failed Please Try Again or Not in the record" >logs.txt || exit
exit /b
:found
echo  "%search%" Model Reference found Please wait for pop-up...>logs.txt
exit /b

:msg
echo  "%search%" model is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt
exit /b

:software
echo  "%search%" software found Please wait for link..>logs.txt
start "" "%url%"
exit
