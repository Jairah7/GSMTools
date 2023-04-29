if exist logs.txt del logs.txt
echo Created by drox-PH-Ceb for script just contact https://web.facebook.com/jairah.mazo.5/ >%fb%
echo Created by drox-PH-Ceb for script just contact jairahmazo@gmail.com >%yt%
::Manual Referrences
echo "%search%" | findstr /i "C11" && set "url=https://www.youtube.com/watch?v=q5o6-6KnGCw&pp=ygUOYzExIGZycCBieXBhc3M%3D" &&goto found 
echo "%search%" | findstr /i "y15s && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4&t=10s" &&goto found
echo "%search%" | findstr /i "y15a && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4&t=10s" &&goto found
echo "%search%" | findstr /i "xiaomi 8t" && set "url=https://www.youtube.com/watch?v=16_Te9jvrdw&pp=ygUKeGlhb21pIGZycA%3D%3D" && goto found
echo "%search%" | findstr /i "y15" && set "url=https://www.youtube.com/watch?v=dvA0Karr9e4" && goto found
echo "%search%" | findstr /i "infinix" && set "url=https://www.youtube.com/watch?v=ktv8_wty2XY&pp=ygULaW5maW5peCBmcnA%3D" &&goto found
::-----------------------------------------------------------------------------------------------------------------------------------------------
::direct process
echo "%search%" | findstr /i "gui" && echo  "%search%" Launching MTK Gui... >logs.txt && call mtk\mtkgui.bat && exit
echo "%search%" | findstr /i "mtk" && echo  "MTK Auto Select Unit" is suported. Just Hold Vol_up+Vol_down and insert usb cable >logs.txt && set opt=1 && call %mtk%
echo "%search%" | findstr /i "a5s" && call :msg && set opt=1 && call %mtk%
echo "%search%" | findstr /i "a12" && call :msg && set opt=1 && call %mtk%
echo "%search%" | findstr /i "f1s" && call :msg && set opt=4 && call %mtk%
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
