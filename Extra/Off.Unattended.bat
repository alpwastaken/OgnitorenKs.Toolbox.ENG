::                               NOTEPAD++ > Encoding > Character Set > Turkish > OEM857
:: ==============================================================================================================================
::
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ þþþþþþþþ  þþþþþþþ  þþþþþþþþ  þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ
::      þþ     þþ þþ    þþ  þþþ   þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþ   þþ þþ   þþ  þþ    þ
::      þþ     þþ þþ        þþþþ  þþ  þþ     þþ    þþ     þþ þþ     þþ þþ       þþþþ  þþ þþ  þþ   þþ
::      þþ     þþ þþ   þþþþ þþ þþ þþ  þþ     þþ    þþ     þþ þþþþþþþþ  þþþþþþ   þþ þþ þþ þþþþþ      þþþþþþ 
::      þþ     þþ þþ    þþ  þþ  þþþþ  þþ     þþ    þþ     þþ þþ   þþ   þþ       þþ  þþþþ þþ  þþ         þþ
::      þþ     þþ þþ    þþ  þþ   þþþ  þþ     þþ    þþ     þþ þþ    þþ  þþ       þþ   þþþ þþ   þþ  þþ    þþ
::       þþþþþþþ   þþþþþþ   þþ    þþ þþþþ    þþ     þþþþþþþ  þþ     þþ þþþþþþþþ þþ    þþ þþ    þþ  þþþþþþ 
::
::  Created: Huseyin UZUNYAYLA  / OgnitorenKs
::  Country: Turkey
::  Contact;
::  >> Discord: OgnitorenKs#2737
::  >> Mail: ognitorenks@gmail.com
::  >> Website: ognitorenks.blogspot.com
:: ==============================================================================================================================
echo off
cls

:: Color Start
setlocal
Call :ColorEnd

:: ==============================================================================================================================
::  COLOR MAP 
::  -------------
:: %ESC%[32m > Green number color in the menu 
:: %ESC%[33m > Yellow color inside the menu
:: %ESC%[36m > Blue color inside the menu
:: %ESC%[37m > White color inside the menu 
:: %ESC%[90m > Frame gray color 
:: %ESC%[93m > In-menu backup part. bright yellow 
:: %ESC%[96m > Multiple choice text color 
:: %ESC%[1;97m > Color of text inside header padding
:: %ESC%[100m > Title fill color 
:: ==============================================================================================================================

mkdir "%Mount%\OgnitorenKs.Toolbox\Unattended" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Extra" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Download" > NUL 2>&1
mkdir "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
Call :location
Call :PowerRun

:onlinemenu
mode con cols=96 lines=34  
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X  
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m                                   OFFLINE UNATTENDED TOOL                                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออหอออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m  1.%ESC%%ESC%[37m All In One Runtimes%ESC%[0m  %ESC%[90mบ%ESC%[0m %ESC%[32m 27.%ESC%%ESC%[36m Kdenlive%ESC%[0m               %ESC%[90mบ%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m  2.%ESC%%ESC%[33m Discord%ESC%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 28.%ESC%%ESC%[36m Krita%ESC%[0m                  %ESC%[90mบ%ESC%%ESC%[32m 53.%ESC%%ESC%[36m Create unattended file%ESC%[0m      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  3.%ESC%%ESC%[33m Whatsapp%ESC%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 29.%ESC%%ESC%[36m Gimp%ESC%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 54.%ESC%%ESC%[36m Complete the unattended file%ESC%[0m%ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  4.%ESC%%ESC%[33m Signal%ESC%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 30.%ESC%%ESC%[36m OBS Studio%ESC%[0m             %ESC%[90mบ%ESC%%ESC%[32m 55.%ESC%%ESC%[33m OgnitorenKs Toolbox add%ESC%[0m     %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  5.%ESC%%ESC%[33m Telegram%ESC%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 31.%ESC%%ESC%[36m ShareX%ESC%[0m                 %ESC%[90mบ%ESC%%ESC%[32m 56.%ESC%%ESC%[33m Add File to Desktop%ESC%[0m         %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  6.%ESC%%ESC%[33m Microsoft Teams%ESC%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 32.%ESC%%ESC%[36m Audacity%ESC%[0m               %ESC%[90mบ%ESC%%ESC%[32m 57.%ESC%%ESC%[33m Task Scheduler settings%ESC%[0m     %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  7.%ESC%%ESC%[33m Zoom%ESC%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 33.%ESC%%ESC%[36m K-Lite Codec%ESC%[0m           %ESC%[90mบ%ESC%%ESC%[32m 58.%ESC%%ESC%[33m Add Ultimate Performance%ESC%[0m    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  8.%ESC%%ESC%[36m EpicGames%ESC%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 34.%ESC%%ESC%[36m VLC Media Player%ESC%[0m       %ESC%[90mบ%ESC%%ESC%[32m 59.%ESC%%ESC%[33m Add Bcdedit Settings%ESC%[0m        %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  9.%ESC%%ESC%[36m Steam%ESC%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 35.%ESC%%ESC%[36m Aimp%ESC%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 60.%ESC%%ESC%[33m Add SVCHost Optimization%ESC%[0m    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 10.%ESC%%ESC%[36m GOG Galaxy%ESC%[0m           %ESC%[90mบ%ESC%[0m %ESC%[32m 36.%ESC%%ESC%[33m Free Download Manager%ESC%[0m  %ESC%[90mบ%ESC%%ESC%[32m 61.%ESC%%ESC%[33m Add remove Micr.Teams%ESC%[0m       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 11.%ESC%%ESC%[36m Uplay%ESC%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 37.%ESC%%ESC%[33m ByClick Downloader%ESC%[0m     %ESC%[90mบ%ESC%%ESC%[32m 62.%ESC%%ESC%[33m Add Icon Cache Clear%ESC%[0m        %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 12.%ESC%%ESC%[36m Origin%ESC%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 38.%ESC%%ESC%[33m Utorrent%ESC%[0m               %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 13.%ESC%%ESC%[36m Cheat Engine%ESC%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 39.%ESC%%ESC%[33m GlassWire%ESC%[0m              %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 14.%ESC%%ESC%[36m Wemod%ESC%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 40.%ESC%%ESC%[33m TeamViewer%ESC%[0m             %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 15.%ESC%%ESC%[37m League Of Legends%ESC%[0m    %ESC%[90mบ%ESC%[0m %ESC%[32m 41.%ESC%%ESC%[33m Hamachi%ESC%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 16.%ESC%%ESC%[37m Blitz%ESC%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 42.%ESC%%ESC%[33m Stremio%ESC%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 17.%ESC%%ESC%[33m Google Chrome%ESC%[0m        %ESC%[90mบ%ESC%[0m %ESC%[32m 43.%ESC%%ESC%[36m ISLC%ESC%[0m                   %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 18.%ESC%%ESC%[33m Mozilla Firefox%ESC%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 44.%ESC%%ESC%[36m MSI Afterburner%ESC%[0m        %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 19.%ESC%%ESC%[33m Brave%ESC%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 45.%ESC%%ESC%[36m Hibit Uninstaller%ESC%[0m      %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 20.%ESC%%ESC%[33m Microsoft Edge%ESC%[0m       %ESC%[90mบ%ESC%[0m %ESC%[32m 46.%ESC%%ESC%[36m Unlocker%ESC%[0m               %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 21.%ESC%%ESC%[36m Libre Office%ESC%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 47.%ESC%%ESC%[36m OpenShell%ESC%[0m              %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 22.%ESC%%ESC%[36m PDF-XChange Edit”r%ESC%[0m   %ESC%[90mบ%ESC%[0m %ESC%[32m 48.%ESC%%ESC%[36m SSD Booster%ESC%[0m            %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 23.%ESC%%ESC%[36m Notepad++%ESC%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 49.%ESC%%ESC%[36m Everything%ESC%[0m             %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 24.%ESC%%ESC%[36m Calibre%ESC%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 50.%ESC%%ESC%[36m TaskbarX%ESC%[0m               %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 25.%ESC%%ESC%[33m 7 - Zip%ESC%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 51.%ESC%%ESC%[37m Multi Choice%ESC%[0m           %ESC%[90mบ%ESC%%ESC%[32m 98.%ESC%%ESC%[93m Unattended Backup%ESC%[0m           %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 26.%ESC%%ESC%[33m WinRAR%ESC%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 52.%ESC%%ESC%[33m %ESC%[0m                       %ESC%[90mบ%ESC%%ESC%[32m 99.%ESC%%ESC%[93m Install backup unattended%ESC%[0m   %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออสอออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p menu= %ESC%[92m  Choice : %ESC%[0m
	if %menu%==1 (Call :Download1)
	if %menu%==2 (Call :Download2)
	if %menu%==3 (Call :Download3)
	if %menu%==4 (Call :Download4)
	if %menu%==5 (Call :Download5)
	if %menu%==6 (Call :Download6)
	if %menu%==7 (Call :Download7)
	if %menu%==8 (Call :Download8)
	if %menu%==9 (Call :Download9)
	if %menu%==10 (Call :Download10)
	if %menu%==11 (Call :Download11)
	if %menu%==12 (Call :Download12)
	if %menu%==13 (Call :Download13)
	if %menu%==14 (Call :Download14)
	if %menu%==15 (Call :Download15)
	if %menu%==16 (Call :Download16)
	if %menu%==17 (Call :Download17)
	if %menu%==18 (Call :Download18)
	if %menu%==19 (Call :Download19)
	if %menu%==20 (Call :Download20)
	if %menu%==21 (Call :Download21)
	if %menu%==22 (Call :Download22)
	if %menu%==23 (Call :Download23)
	if %menu%==24 (Call :Download24)
	if %menu%==25 (Call :Download25)
	if %menu%==26 (Call :Download26)
	if %menu%==27 (Call :Download27)
	if %menu%==28 (Call :Download28)
	if %menu%==29 (Call :Download29)
	if %menu%==30 (Call :Download30)
	if %menu%==31 (Call :Download31)
	if %menu%==32 (Call :Download32)
	if %menu%==33 (Call :Download33)
	if %menu%==34 (Call :Download34)
	if %menu%==35 (Call :Download35)
	if %menu%==36 (Call :Download36)
	if %menu%==37 (Call :Download37)
	if %menu%==38 (Call :Download38)
	if %menu%==39 (Call :Download39)
	if %menu%==40 (Call :Download40)
	if %menu%==41 (Call :Download41)
	if %menu%==42 (Call :Download42)
	if %menu%==43 (Call :Download43)
	if %menu%==44 (Call :Download44)
	if %menu%==45 (Call :Download45)
	if %menu%==46 (Call :Download46)
	if %menu%==47 (Call :Download47)
	if %menu%==48 (Call :Download48)
	if %menu%==49 (Call :Download49)
	if %menu%==50 (Call :Download50)
	if %menu%==51 (Call :MultiSelect2)
	if %menu%==52 goto onlinemenu
	if %menu%==53 (Call :OpenBAT)
	if %menu%==54 (Call :CloseBAT)
	if %menu%==55 (Call :OgnitorenKsToolbox)
	if %menu%==56 (Call :DesktopFiles)
	if %menu%==57 (Call :TaskTimer)
	if %menu%==58 (Call :UltimatePerformans)
	if %menu%==59 (Call :Bcdedit)
	if %menu%==60 (Call :Svchost)
	if %menu%==61 (Call :MicrosoftTeams)
	if %menu%==62 (Call :icofix)
	if %menu%==98 (Call :UnattendedBackup)
	if %menu%==99 (Call :UnattendedInstall)
else
	goto onlinemenu

:MultiSelect2
set /p $multi2= %ESC%[96m  Multi Choice : %ESC%[0m

echo %$multi2% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto onlinemenu
echo %$multi2% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto onlinemenu

(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| OffUnattended ^| MultiSelect - Choice:'%$multi2%
) >> %location%\Logs
cls
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m                                  OFFLINE UNATTENDED TOOL                                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo                                           %ESC%[92m Multi Choice%ESC%[0m 
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo    %ESC%[96m Multi Choice: %$multi2%%ESC%[0m
:MultiSelect3
FOR %%a in (%$multi2%) do Call :Download%%a
echo --------------------------------------------------------------------------------------------------------------------------- >> %location%\Logs
goto onlinemenu

:OpenBAT
(
echo.
echo :: ==============================================================================================================================
echo ::                                     It is prepared with Ognitorenks Toolbox. 
echo ::
echo ::       #######   ######   ##    ## #### ########  #######  ########  ######## ##    ## ##    ##  ######
echo ::      ##     ## ##    ##  ###   ##  ##     ##    ##     ## ##     ## ##       ###   ## ##   ##  ##    #
echo ::      ##     ## ##        ####  ##  ##     ##    ##     ## ##     ## ##       ####  ## ##  ##   ##
echo ::      ##     ## ##   #### ## ## ##  ##     ##    ##     ## ########  ######   ## ## ## #####      ###### 
echo ::      ##     ## ##    ##  ##  ####  ##     ##    ##     ## ##   ##   ##       ##  #### ##  ##         ##
echo ::      ##     ## ##    ##  ##   ###  ##     ##    ##     ## ##    ##  ##       ##   ### ##   ##  ##    ##
echo ::       #######   ######   ##    ## ####    ##     #######  ##     ## ######## ##    ## ##    ##  ###### 
echo ::
echo :: ==============================================================================================================================
echo.
echo echo off
echo cls
echo title ognitorenks.blogspot.com
echo :: Admin authority is taken 
echo net session ^>NUL 2^>^&1^|^| powershell Start-Process '%%^0' -Verb RunAs^&^& exit /b^|^| exit /b
echo :: Fixed the .bat location issue with admin authority 
echo cd /d "%%~dp0"
echo for /f %%%%a in ^('"cd"'^) do set location=%%%%a
echo set location=%%location:~0,-11%%
echo :: ===================================================================================
echo :: ===================================================================================
echo.
) > %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| OffUnattended ^| OpenBat - Unattended file introduction section has been prepared. 
) >> %location%\Logs
goto :eof

:CloseBAT
Find "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
(
echo [%date% - %time%] ^| OffUnattended ^| CloseBat - Complete the unattended file. 
echo ---------------------------------------------------------------------------------------------------------------------------
) >> %location%\Logs
Call :RegUnload
(
echo.
echo :: ===================================================================================
echo :: ===================================================================================
echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Unattended" /f ^> NUL 2^>^&1
echo timeout /t 3 /nobreak ^> NUL 
echo DEL /F /Q /A %%location%%\Download\* ^> NUL 2^>^&1
echo RD /S /Q %%location%%\Download\* ^> NUL 2^>^&1
echo echo Operations completed.
echo echo Closing the command screen.
echo echo Cleaning up the remains. 
echo timeout /t 2 /nobreak ^> NUL
echo RD /S /Q "C:\OgnitorenKs.Toolbox\Unattended" ^> NUL 2^>^&1
echo exit
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
Call :RegLoad
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Unattended" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat" /f
Call :RegUnload
goto :eof

:Download1
Find "DirectX" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
	
:: ----------------------------------------------------------------------------------------------------------	
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\05x86.exe"
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\05x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2005 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\05x86.exe" /Q
echo "C:\OgnitorenKs.Toolbox\Unattended\05x64.exe" /Q
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------	

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\08x86.exe"
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\08x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2008 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\08x86.exe" /q
echo "C:\OgnitorenKs.Toolbox\Unattended\08x64.exe" /q
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\10x86.exe"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\10x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2010 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\10x86.exe" /q /norestart
echo "C:\OgnitorenKs.Toolbox\Unattended\10x64.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\12x86.exe"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\12x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2012 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\12x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Unattended\12x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\13x86.exe"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\13x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2013 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\13x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Unattended\13x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "15x86" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\15x86.exe"
FOR /F "tokens=1" %%i in ('FIND "15x64" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\15x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  C++ 2015-2022 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\15x86.exe" /install /quiet /norestart
echo "C:\OgnitorenKs.Toolbox\Unattended\15x64.exe" /install /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

:: ----------------------------------------------------------------------------------------------------------

FOR /F "tokens=1" %%i in ('FIND "javax64" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\javax64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Java installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\javax64.exe" INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\xnafx40.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  XNA Framework 4.0 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\xnafx40.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\oal.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Unattended\oal.zip' '%Mount%\OgnitorenKs.Toolbox\Unattended'"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Unattended\oal.zip" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OpenAL installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\oalinst.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Desktop5x64.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Desktop Runtime 5 installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Desktop5x64.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Desktop5x86.exe"
(
echo.
echo "C:\OgnitorenKs.Toolbox\Unattended\Desktop5x86.exe" /q /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat

FOR /F "tokens=1" %%i in ('FIND "DirectX" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\DirectX.exe"
%Mount%\OgnitorenKs.Toolbox\Unattended\DirectX.exe /Q /C /T:"%Mount%\OgnitorenKs.Toolbox\Unattended\DirectX\"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Unattended\DirectX.exe" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  DirectX installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\DirectX\DXSETUP.exe" /silent
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download2
Find "Discord" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Discord" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Discord.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Discord installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Discord.exe" -s
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download3
Find "WhatsApp" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\WhatsApp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  WhatsApp installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\WhatsApp.exe" --silent
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download4
Find "Signal" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Signal" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Signal.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Signal installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Signal.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download5
Find "Telegram" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Telegram" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Telegram.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Telegram installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Telegram.exe" /VERYSILENT /NORESTART
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download6
Find "Teams" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Teams" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Teams.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Microsoft Teams installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Teams.exe" -s
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download7
Find "Zoom" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Zoom" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Zoom.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Zoom installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Zoom.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download8
Find "EpicGames" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\EpicGames.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  EpicGames installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\EpicGames.msi" /qn /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download9
Find "Steam" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Steam" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Steam.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Steam installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Steam.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download10
Find "GOG" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\GOG.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  GOG installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\GOG.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download11
Find "Uplay" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Uplay" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Uplay.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Uplay installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Uplay.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download12
Find "Origin" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Origin" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Origin.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Origin installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Origin.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download13
Find "CheatEngine" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\CheatEngine.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  CheatEngine installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\CheatEngine.exe" /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download14
Find "Wemod" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Wemod" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Wemod.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Wemod installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Wemod.exe" --silent
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download15
Find "League.Of.Legends" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegends.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\League.Of.Legends.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  League.Of.Legends installing...
echo copy /y "C:\OgnitorenKs.Toolbox\Unattended\League.Of.Legends.exe" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download16
Find "Blitz" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Blitz" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Blitz.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Blitz installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Blitz.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download17
Find "Google Chrome" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Chrome" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome.zip' '%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome'" 
copy /y "%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" "%Mount%\OgnitorenKs.Toolbox\Unattended" > NUL 2>&1
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome.zip" > NUL 2>&1
RD /S /Q "%Mount%\OgnitorenKs.Toolbox\Unattended\Chrome" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Google Chrome installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\GoogleChromeStandaloneEnterprise64.msi" /qn
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof 

:Download18
Find "Firefox" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Firefox" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Firefox.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Mozilla Firefox installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Firefox.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download19
Find "Brave" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Brave" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Brave.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Brave installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Brave.exe" --install --silent --system-level
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat  
goto :eof 

:Download20
Find "Edge" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Edge.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Edge installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Edge.msi" /qn
echo :: UBlock Origin
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: HTTPS Everywhere
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
echo :: Clear URL's
echo reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f ^> NUL ^2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download21
Find "LibreOffice" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "LibreOffice" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\LibreOffice.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  LibreOffice installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\LibreOffice.msi" /qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download22
Find "PdfXchange.msi" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\PdfXchange.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  PDF-XChange installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\PdfXchange.msi" /quiet /norestart
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download23
Find "Notepad" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Notepad" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Notepad.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Notepad installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Notepad.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download24
Find "Calibre" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Calibre" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Calibre.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Calibre installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Calibre.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download25
Find "7-Zip" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\7-Zip.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  7-Zip installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\7-Zip.msi" /qn
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download26
Find "Winrar" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Winrar" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Winrar.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Winrar installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Winrar.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download27
Find "Kdenlive" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Kdenlive.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Kdenlive installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Kdenlive.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download28
Find "Krita" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Krita" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Krita.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Krita installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Krita.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download29
Find "Gimp" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Gimp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Gimp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Gimp installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Gimp.exe" /VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download30
Find "OBS" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "OBS" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\OBS.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OBS Studio installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\OBS.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download31
Find "ShareX" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "ShareX" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\ShareX.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ShareX installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\ShareX.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download32
Find "Audacity" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Audacity" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Audacity.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Audacity installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Audacity.exe" /VERYSILENT /NORESTART
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download33
Find "Klite" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Klite" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Klite.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  K-lite Codec installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Klite.exe" /verysilent
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download34
Find "VLCMediaPlayer" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\VLCMediaPlayer.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  VLC Media Player installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\VLCMediaPlayer.exe" /L=1055 /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download35
Find "Aimp" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Aimp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Aimp.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Aimp installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Aimp.exe" /AUTO /SILENT
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof


:Download36
Find "FreeDownloadManager" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\FreeDownloadManager.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Free Download Manager installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\FreeDownloadManager.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download37
Find "ByClick" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "ByClick" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\ByClick.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ByClick Downloader installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\ByClick.exe" /q
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download38
Find "Utorrent" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Utorrent" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Utorrent.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Utorrent installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Utorrent.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download39
Find "GlassWire" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\GlassWire.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  GlassWire installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\GlassWire.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download40
Find "TeamViewer" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\TeamViewer.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  TeamViewer installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\TeamViewer.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download41
Find "Hamachi" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Hamachi.msi"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Hamachi installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Hamachi.msi" /q
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download42
Find "Stremio" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Stremio" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Stremio.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Stremio installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Stremio.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download43
Find "ISLC" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| ISLC eklendi. >> %location%\Logs
Powershell -command "Expand-Archive -Force '%location%\Files\ISLC.zip' '%Mount%\OgnitorenKs.Toolbox'"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  ISLC kisayolu masaustune tasiniyor...
echo move "C:\OgnitorenKs.Toolbox\ISLC\ISLC.lnk" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof

:Download44
Find "MSI Afterburner" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner.zip"
powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner.zip' '%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner'" 
for /f %%a in ('"dir /b %Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner\*.exe"') do set msi=%%a
for /f %%b in ('"dir /b %Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner\*.exe"') do copy /y "%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner\%%b" "%Mount%\OgnitorenKs.Toolbox\Unattended"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner.zip"
RD /S /Q "%Mount%\OgnitorenKs.Toolbox\Unattended\MSIAfterburner"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  MSI Afterburner installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\%msi%" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download45
Find "Hibit Uninstaller" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Hibit" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Hibit.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Hibit Uninstaller installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Hibit.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download46
Find "Unlocker" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Unlocker" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Unlocker.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Unlocker installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Unlocker.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download47
Find "OpenShell" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\OpenShell.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  OpenShell installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\OpenShell.exe" /quiet /norestart ADDLOCAL=StartMenu
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download48
Find "SSDBooster" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\SSDBooster.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  SSDBooster installing...
echo copy /y "C:\OgnitorenKs.Toolbox\Unattended\SSDBooster.exe" "C:\users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download49
Find "Everything" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "Everything" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\Everything.exe"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  Everything installing...
echo "C:\OgnitorenKs.Toolbox\Unattended\Everything.exe" /S
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Download50
Find "TaskbarX" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "%Mount%\OgnitorenKs.Toolbox\Unattended\TaskbarX.zip"
(
echo.
echo :: -----------------------------------------------------------------------------------
echo echo  TaskbarX installing...
echo powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Unattended\TaskbarX.zip' 'C:\Users\%%username%%\Desktop\TaskbarX'" 
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
goto :eof


::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:OgnitorenKsToolbox
Find "Extracting OgnitorenKs Toolbox shortcuts to desktop" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
Call :wget "https://docs.google.com/uc?export=download&id=1RGyfwovjOn2f-J-pvLoqma1UZmI_TKBN" "%Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Toolbox.zip"	
Powershell -command "Expand-Archive -Force '%Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Toolbox.zip' '%Mount%\OgnitorenKs.Toolbox'"
DEL /F /Q /A "%Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Toolbox.zip" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> OgnitorenKs.Toolbox
echo echo  Extracting OgnitorenKs Toolbox shortcuts to desktop...
echo move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%%username%%\Desktop"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:DesktopFiles
Find "Desktop files are loading " %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Desktop files are added. >> %location%\Logs
Powershell -command "Compress-Archive -Path '%location%\Edit\Desktop\*' -DestinationPath '%Mount%\OgnitorenKs.Toolbox\Unattended\Shortcut.zip'"
DEL /F /Q /A %location%\Edit\Desktop\* > NUL 2>&1
RD /S /Q %location%\Edit\Desktop\* > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Desktop files
echo echo  Desktop files are loading...
echo Powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\Unattended\Kisayol.zip' 'C:\Users\%%username%%\Desktop'"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:TaskTimer
Find "Task Timer setting" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Task Timer setting added. >> %location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Task Timer setting
echo echo  Task Timer setting installing...
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE ^> NUL 2^>^&1
echo schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:UltimatePerformans
Find "Ultimate Performans" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Ultimate Performans added. >> %location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Ultimate Performans
echo echo  Ultimate Performans adding.
echo powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo echo. 
echo powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
echo echo.
echo for /f "tokens=4" %%%%f in ^('powercfg -list ^^^| findstr /C:"Nihai"'^) do set ultimateadd=%%%%f
echo powercfg -setactive %%ultimateadd%% 
echo echo.
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:Bcdedit
Find "Stuttering fix" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Bcdedit settings added. >> %location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> Bcdedit
echo echo  Stuttering fix... ^(Bcdedit^)
echo bcdedit /deletevalue useplatformclock ^> NUL
echo bcdedit /set {current} recoveryenabled no ^> NUL
echo powercfg /h off ^> NUL
echo bcdedit /set useplatformtick yes ^> NUL
echo bcdedit /set disabledynamictick yes ^> NUL
echo C:\OgnitorenKs.Toolbox\Files\DevManView.exe /disable "High Precision Event Timer"
echo sc delete DiagTrack ^> NUL
echo sc delete dmwappushservice ^> NUL
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat
copy /y "%location%\Files\DevManView.exe" "%Mount%\OgnitorenKs.Toolbox\Files"
goto :eof

:Svchost
Find "SVCHost" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Svchost settings added. >> %location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> SVCHost Ram Optimizate
echo echo SVCHost Ram Optimizating...
echo FOR /F "tokens=4" %%%%g IN ^('systeminfo ^^^| FIND "Total"'^) DO set ramtotal=%%%%g
echo set ramtotal=%%ramtotal:~0,-4%%
echo set /a ramtotal=^(%%ramtotal%%*1024*1024^)
echo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x%%ramtotal%% /f ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:MicrosoftTeams
Find "Microsoft Teams" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| Microsoft Teams removed added. >> %location%\Logs
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> MicrosoftTeams
echo echo Microsoft Teams removing...
echo Powershell -Command "Get-AppxPackage *Teams* | Remove-AppxPackage"
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:icofix
Find "ICO cache cleaning" %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat > NUL 2>&1
	if %errorlevel%==0 (goto :eof)
echo [%date% - %time%] ^| OffUnattended ^| ICO cache clean. >> %location%\Logs
mkdir %Mount%\OgnitorenKs.Toolbox\Files > NUL 2>&1
copy /y "%location%\Files\ReIconCache.exe" "%Mount%\OgnitorenKs.Toolbox\Files" > NUL 2>&1
(
echo.
echo :: -----------------------------------------------------------------------------------
echo :: ^>^>^> icofix
echo echo ICO cache cleaning...
echo taskkill /f /im explorer.exe
echo DEL /F /Q /A "%%userprofile%%\AppData\Local\IconCache.db" ^> NUL 2^>^&1
echo DEL /F /Q /A %%userprofile%%\AppData\Local\Microsoft\Windows\Explorer\^*.^* ^> NUL 2^>^&1
echo del /f /s /q /a %%LocalAppData%%\Microsoft\Windows\Explorer\thumbcache_*.db ^> NUL 2^>^&1
echo "%%location%%\Files\ReIconCache.exe"
echo powershell -command "Start-Process 'C:\Windows\explorer.exe'"
echo timeout /t 2 /nobreak ^> NUL
echo DEL /F /Q /A "C:\OgnitorenKs.Toolbox\Files\ReIconCache.exe" ^> NUL 2^>^&1
) >> %Mount%\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat 
goto :eof

:UnattendedBackup
echo [%date% - %time%] ^| OffUnattended ^| Unattended settings backup. >> %location%\Logs
Powershell -command "Compress-Archive -LiteralPath %Mount%\OgnitorenKs.Toolbox -DestinationPath C:\Users\%username%\Desktop\Off.Backup.Unattended.OgnitorenKs.zip -Force"
goto :eof

:UnattendedInstall
set /p Spare=%ESC%[97m  %ESC%%ESC%[92m Backup Zip Path : %ESC%[0m
echo [%date% - %time%] ^| OffUnattended ^| "%Spare%" path install. Mount="%Mount%" >> %location%\Logs
powershell -command "Expand-Archive -Force '%Spare%' '%Mount%'" 
Call :RegLoad
reg add "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Unattended" /t REG_SZ /d "C:\OgnitorenKs.Toolbox\Unattended\OgnitorenKs.Unattended.bat" /f
Call :RegUnload
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:wget
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                   No Internet connection                                   %ESC%[0m
						echo [%date% - %time%] ^| OffUnattendedwget ^| ERROR! No Internet connection. Name:"%~2" Link:"%~1" >> %location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| OffUnattendedwget ^| "%~2" folder %~n2 program download. Link:"%~1" >> %location%\Logs
%location%\Files\wget -c -q --no-check-certificate --show-progress %1 -O %~2
goto :eof

:location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set location=%%a
set location=%location:~0,-6%
goto :EOF

:PowerRun
set PowerRun=%location%\Files\PowerRun.exe %SystemRoot%\system32\cmd.exe /c
goto :EOF

:RegLoad
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegUnload
cls
for /f "tokens=* delims=" %%a in ('reg query "HKLM" ^| findstr "{"') do (
	reg unload "%%a" >nul 2>&1
)
reg delete "HKLM\OG_SYSTEM\CurrentControlSet" /f >nul 2>&1
reg unload HKLM\OG_COMPONENTS >nul 2>&1
reg unload HKLM\OG_DRIVERS >nul 2>&1
reg unload HKLM\OG_DEFAULT >nul 2>&1
reg unload HKLM\OG_NTUSER >nul 2>&1
reg unload HKLM\OG_SCHEMA >nul 2>&1
reg unload HKLM\OG_SOFTWARE >nul 2>&1
reg unload HKLM\OG_SYSTEM >nul 2>&1
goto :eof

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0