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
::  Contributors to the project ;
::  ---------------------------
::  >> Eray Turkay
::  ----------------------
::    >>  System Info - RAM socket 
::    >>  System Info - PC format date 
::  ----------------------
::  >> KaanBeyhan [Denizlili]
::  ----------------------
::    >> Addition of progress bar on downloads.
::  ---------
::  >> Archley
::  ---------
:: 	  >> Wifi Crack
::
:: ==============================================================================================================================
echo off
cls

:: Color Start
setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  COLOR MAP 
::  -------------
:: ^%RGB%^[33m > Yellow sections in the menu 
:: ^%RGB%^[36m > Blue colored sections in the menu 
:: ^%RGB%^[37m > White colored sections in the menu 
:: ^%RGB%^[90m > Gray sections in the menu (not including frames) 
:: ^%RGB%^[92m > Variable color (Green). It belongs to the sections where the user is asked to enter a value. 
:: ^%RGB%^[96m > Second variant color (Light Blue) | Information messages reflected in the menu. It belongs to the second variant sections, which will drop on the main screen. 
::
:: ^%ESC%^[41m > Error messages fill color (red) 
:: ^%ESC%^[32m > The process (green) is the number color. They are the operation numbers in the menu. 
:: ^%ESC%^[36m > Back to the menu is the color setting. It is the color setting of the back to menu sections. 
:: ^%ESC%^[100m > It is the color that fills the background in title sections. 
:: ^%ESC%^[1;97m > It is the text color inside the fill section in the header. 1; makes the section bold. 97m allows to write white color. 
:: ^%ESC%^[90m > Frames and | Changes the color of the markings. 
:: 
:: ==============================================================================================================================

:: Admin authority is checked.
:AdminKontrol
mode con cols=61 lines=20
%windir%\system32\reg.exe query "HKU\S-1-5-19" >nul 2>&1 || (
echo 
echo 
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[41m             ! WARNING !           ! WARNING !           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[41m             Right-click, run as administrator           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ                                                         บ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo 
echo                 %ESC%[92mPress any key to turn it off%ESC%[0m  
pause > nul
exit
)

mode con cols=96 lines=37 
Call :Logs
:: ==============================================================================================================================
::                                                  DOWNLOAD LOCATION
::
::   Change the download location section;
::   set download= Download path 

set download=%location%\Download

:: ==============================================================================================================================
:: Creating the necessary folders for Toolbox. 
mkdir "%location%\Download" > NUL 2>&1
mkdir "%location%\Edit\Appx" > NUL 2>&1
mkdir "%location%\Edit\Desktop" > NUL 2>&1
mkdir "%location%\Edit\Driver" > NUL 2>&1
mkdir "%location%\Edit\ESDtoWIM" > NUL 2>&1
mkdir "%location%\Edit\Logs" > NUL 2>&1
mkdir "%location%\Edit\Mount" > NUL 2>&1
mkdir "%location%\Edit\Update" > NUL 2>&1
:: ==============================================================================================================================
::
:: Wget.exe software is detected as virus by some antivirus software. 
:: In such a case, if the wget.exe file is deleted, downloads cannot be performed. 
:: I'm checking the wget file with the following command. I am downloading wget.exe with Powershell command in case of error. 
dir /b "%location%\Files\wget.exe" > NUL 2>&1
	if %errorlevel%==1 (echo [%date% - %time%] ^| Wget download ^| ERROR - wget.exe not found. Re-downloaded  >> %location%\Logs
						echo   %ESC%[1;97m%ESC%%ESC%[41m                                    Wget.exe not found                                      %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[42m                                      Re-downloaded                                         %ESC%[0m
						Call :netkontrol
						powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile %location%\Files\wget.exe }")
						
::
:: ------------------------------------------------------------------------------------------------------------------------------
::

:: Commands I removed because wmic.exe gives error in Windows 11 beta versions. 
::wmic os get RegisteredUser, CSName, Caption, OSArchitecture, BuildNumber /value > %Logs%\OS.txt
::FOR /F "tokens=2 delims='='" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a 
::set caption=%caption:~10%
::FOR /F "tokens=2 delims='='" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b 
::FOR /F "tokens=2 delims='='" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c 
::FOR /F "tokens=2 delims='='" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d 
::set osarch=%osarch:~0,-5%
::FOR /F "tokens=3" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
:::: FOR /F "tokens=2 delims='='" %%e in ('FIND "BuildNumber" %Logs%\OS.txt') do set buildnumber=%%e 

:: I am getting the information in the top section of the menu. 
Powershell -command "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %Logs%\OS.txt
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
set caption=%caption:~11%
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %Logs%\OS.txt') do set registereduser=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CSName" %Logs%\OS.txt') do set pcname=%%c
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set versionis=%%f
set versionis=%versionis:~5%
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') do set ImageBuild=%%f
for /f "tokens=2 delims='('" %%f in ('powercfg -list ^| findstr /C:"*"') do set powerchange=%%f
set powerchange=%powerchange:~0,-3%


:: I detect the Windows version and make adjustments in the menu. 
FOR /F "tokens=5" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption2=%%a 
	if %caption2%==10 (set editmenu=Windows 10 Edit)
	if %caption2%==11 (set editmenu=Windows 11 Edit)
	
echo %caption2% > NUL
	if %caption2%==10 (set editmenugo=Win10SettingsMenu) 
	if %caption2%==11 (set editmenugo=Win11SettingsMenu)

set version=2.4

::set editmenu=Windows 11 Edit
::set editmenugo=Win11SettingsMenu

(
echo.
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] OgnitorenKs Toolbox start.
echo  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ OGNITORENKS TOOLBOX %version% ^| USER:%registereduser% ^| PC-Name:%pcname%	
echo  บ OS: %caption% ^| x%osarch% ^| %ImageBuild% ^| %versionis% ^| Power: %powerchange% 	
echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ---------------------------------------------------------------------------------------------------------------------------
echo.
) >> %location%\Logs

:menu
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %version% %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m%registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name:%ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %versionis% %ESC%%ESC%[90m^|%ESC%%ESC%[32m Power:%ESC%%ESC%[37m %powerchange% %ESC%[0m	
echo   %ESC%[90mฬออออออออออออออออออออออออออหอออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m  1.%ESC%%RGB%[37m All In One Runtimes%RGB%[0m  %ESC%[90mบ%ESC%[0m %ESC%[32m 27.%ESC%%RGB%[36m Kdenlive%RGB%[0m               %ESC%[90mบ%ESC%[0m          %ESC%[92m BONUS%ESC%[0m               %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m  2.%ESC%%RGB%[33m Discord%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 28.%ESC%%RGB%[36m OpenShot%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 53.%ESC%%RGB%[36m %editmenu%%ESC%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  3.%ESC%%RGB%[33m Whatsapp%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 29.%ESC%%RGB%[36m Shotcut%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 54.%ESC%%RGB%[33m Service management%RGB%[0m          %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  4.%ESC%%RGB%[33m Signal%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 30.%ESC%%RGB%[36m Krita%RGB%[0m                  %ESC%[90mบ%ESC%%ESC%[32m 55.%ESC%%RGB%[33m Icon Fix%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  5.%ESC%%RGB%[33m Telegram%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 31.%ESC%%RGB%[36m Gimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 56.%ESC%%RGB%[36m Windows Editing%RGB%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  6.%ESC%%RGB%[33m Microsoft Teams%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 32.%ESC%%RGB%[36m OBS Studio%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 57.%ESC%%RGB%[33m Update cleaning%RGB%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  7.%ESC%%RGB%[33m Zoom%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 33.%ESC%%RGB%[36m ShareX%RGB%[0m                 %ESC%[90mบ%ESC%%ESC%[32m 58.%ESC%%RGB%[33m System / Market Repair%RGB%[0m      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  8.%ESC%%RGB%[36m EpicGames%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 34.%ESC%%RGB%[36m Audacity%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 59.%ESC%%RGB%[33m PC Clean%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  9.%ESC%%RGB%[36m Steam%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 35.%ESC%%RGB%[36m K-Lite Codec%RGB%[0m           %ESC%[90mบ%ESC%%ESC%[32m 60.%ESC%%RGB%[36m Appx management%RGB%[0m             %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 10.%ESC%%RGB%[36m GOG Galaxy%RGB%[0m           %ESC%[90mบ%ESC%[0m %ESC%[32m 36.%ESC%%RGB%[36m VLC Media Player%RGB%[0m       %ESC%[90mบ%ESC%%ESC%[32m 61.%ESC%%RGB%[36m Folder to ISO%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 11.%ESC%%RGB%[36m Uplay%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 37.%ESC%%RGB%[36m Aimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 62.%ESC%%RGB%[33m Fat32 to NTFS%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 12.%ESC%%RGB%[36m Origin%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 38.%ESC%%RGB%[36m Any Video Converter%RGB%[0m    %ESC%[90mบ%ESC%%ESC%[32m 63.%ESC%%RGB%[33m Ping Meter%RGB%[0m                  %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 13.%ESC%%RGB%[36m Cheat Engine%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 39.%ESC%%RGB%[33m Free Download Manager%RGB%[0m  %ESC%[90mบ%ESC%%ESC%[32m 64.%ESC%%RGB%[33m License Management%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 14.%ESC%%RGB%[36m Wemod%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 40.%ESC%%RGB%[33m Int Download Manager%RGB%[0m   %ESC%[90mบ%ESC%%ESC%[32m 65.%ESC%%RGB%[33m User Account Management%RGB%[0m     %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 15.%ESC%%RGB%[33m Google Chrome%RGB%[0m        %ESC%[90mบ%ESC%[0m %ESC%[32m 41.%ESC%%RGB%[33m ByClick Downloader%RGB%[0m     %ESC%[90mบ%ESC%%ESC%[32m 66.%ESC%%RGB%[33m System Info%RGB%[0m                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 16.%ESC%%RGB%[33m Mozilla Firefox%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 42.%ESC%%RGB%[33m Utorrent%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 67.%ESC%%RGB%[33m Wifi Crack%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 17.%ESC%%RGB%[33m Brave%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 43.%ESC%%RGB%[33m GlassWire%RGB%[0m              %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 18.%ESC%%RGB%[33m Microsoft Edge%RGB%[0m       %ESC%[90mบ%ESC%[0m %ESC%[32m 44.%ESC%%RGB%[33m TeamViewer%RGB%[0m             %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 19.%ESC%%RGB%[37m ISLC%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 45.%ESC%%RGB%[33m Hamachi%RGB%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 20.%ESC%%RGB%[37m MemReduct%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 46.%ESC%%RGB%[33m Stremio%RGB%[0m                %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 21.%ESC%%RGB%[36m Libre Office%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 47.%ESC%%RGB%[36m MSI Afterburner%RGB%[0m        %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 22.%ESC%%RGB%[36m Adobe Reader%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 48.%ESC%%RGB%[36m Hibit Uninstaller%RGB%[0m      %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 23.%ESC%%RGB%[36m PDF-XChange Edit”r%RGB%[0m   %ESC%[90mบ%ESC%[0m %ESC%[32m 49.%ESC%%RGB%[36m Wise Care 365%RGB%[0m          %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 24.%ESC%%RGB%[36m Calibre%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 50.%ESC%%RGB%[36m Unlocker%RGB%[0m               %ESC%[90mบ%ESC%[0m                                 %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 25.%ESC%%RGB%[33m 7 - Zip%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 51.%ESC%%RGB%[36m SSD Booster%RGB%[0m            %ESC%[90mบ%ESC%%ESC%[32m 98.%ESC%%RGB%[36m Toolbox guide%RGB%[0m               %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 26.%ESC%%RGB%[33m WinRAR%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 52.%ESC%%RGB%[36m OpenShell%RGB%[0m              %ESC%[90mบ%ESC%%ESC%[32m 99.%ESC%%RGB%[36m Toolbox Update%RGB%[0m              %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออสอออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m %ESC%[32m X.%ESC%%ESC%[37m Clean and Close%ESC%[0m        [%ESC%[1;97m%ESC%%ESC%[100mognitorenks.blogspot.com%ESC%[0m]   %ESC%[32m  Z.%ESC%%RGB%[37m Expand List  ^>^>^>%ESC%[0m            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p menu= %RGB%[92m  Choice : %RGB%[0m
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
	if %menu%==51 (Call :Download51)
	if %menu%==52 (Call :Download52)
	if %menu%==z GOTO menu2
	if %menu%==Z GOTO menu2
	if %menu%==53 GOTO %editmenugo%
	if %menu%==54 GOTO servicemanagement
	if %menu%==55 (Call :icofix)
	if %menu%==56 (Call :WindowsEditing)
	if %menu%==57 GOTO UpdateAfter
	if %menu%==58 (Call :WindowsRepair)
	if %menu%==59 (Call :PCClean)
	if %menu%==60 (Call :AppxManagement)
	if %menu%==61 (Call :FoldertoISO)
	if %menu%==62 (Call :Fat32toNTFS)
	if %menu%==63 (Call :PingMeter)
	if %menu%==64 GOTO Slmgrvbs
	if %menu%==65 GOTO UserAccountManagement
	if %menu%==66 (Call :SystemInfo)
	if %menu%==67 (Call :wificrackarchley)
	if %menu%==98 (start https://github.com/OgnitorenKs/OgnitorenKs.Toolbox.ENG&goto menu)
	if %menu%==99 (Call :Logss "Toolbox.Update" "Toolbox update start."
				   Powershell -command "Start-Process '%location%\Extra\Toolbox.Update.bat'"&exit)
	if %menu%==x (Call :Logss "CloseAndClean" "Download folder cleared."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
	if %menu%==X (Call :Logss "CloseAndClean" "Download folder cleared."
				  cls&DEL /F /Q /A %download%\*&RD /S /Q %download%\*&goto exit)
) else
	goto menu

:menu2
cls
mode con cols=96 lines=37 
title          O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X       
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %version% %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m%registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name:%ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %versionis% %ESC%%ESC%[90m^|%ESC%%ESC%[32m Power:%ESC%%ESC%[37m %powerchange% %ESC%[0m	
echo   %ESC%[90mฬออออออออออออออออออออออออออหอออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m  1.%ESC%%RGB%[37m All In One Runtimes%RGB%[0m  %ESC%[90mบ%ESC%[0m %ESC%[32m 27.%ESC%%RGB%[36m Kdenlive%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 53.%ESC%%RGB%[36m Everything%RGB%[0m                  %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m  2.%ESC%%RGB%[33m Discord%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 28.%ESC%%RGB%[36m OpenShot%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 54.%ESC%%RGB%[36m TaskbarX%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  3.%ESC%%RGB%[33m Whatsapp%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 29.%ESC%%RGB%[36m Shotcut%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 55.%ESC%%RGB%[36m Stellarium%RGB%[0m                  %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  4.%ESC%%RGB%[33m Signal%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 30.%ESC%%RGB%[36m Krita%RGB%[0m                  %ESC%[90mบ%ESC%%ESC%[32m 56.%ESC%%RGB%[36m Recuva%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  5.%ESC%%RGB%[33m Telegram%RGB%[0m             %ESC%[90mบ%ESC%[0m %ESC%[32m 31.%ESC%%RGB%[36m Gimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 57.%ESC%%RGB%[36m AOMEI Partiton Assistans%RGB%[0m    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  6.%ESC%%RGB%[33m Microsoft Teams%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 32.%ESC%%RGB%[36m OBS Studio%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 58.%ESC%%RGB%[33m Python%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  7.%ESC%%RGB%[33m Zoom%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 33.%ESC%%RGB%[36m ShareX%RGB%[0m                 %ESC%[90mบ%ESC%%ESC%[32m 59.%ESC%%RGB%[33m Phycharm%RGB%[0m                    %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  8.%ESC%%RGB%[36m EpicGames%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 34.%ESC%%RGB%[36m Audacity%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 60.%ESC%%RGB%[33m Notepad++%RGB%[0m                   %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m  9.%ESC%%RGB%[36m Steam%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 35.%ESC%%RGB%[36m K-Lite Codec%RGB%[0m           %ESC%[90mบ%ESC%%ESC%[32m 61.%ESC%%RGB%[33m Visual Studio Code%RGB%[0m          %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 10.%ESC%%RGB%[36m GOG Galaxy%RGB%[0m           %ESC%[90mบ%ESC%[0m %ESC%[32m 36.%ESC%%RGB%[36m VLC Media Player%RGB%[0m       %ESC%[90mบ%ESC%%ESC%[32m 62.%ESC%%RGB%[33m Github%RGB%[0m                      %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 11.%ESC%%RGB%[36m Uplay%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 37.%ESC%%RGB%[36m Aimp%RGB%[0m                   %ESC%[90mบ%ESC%%ESC%[32m 63.%ESC%%RGB%[33m Git%RGB%[0m                         %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 12.%ESC%%RGB%[36m Origin%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 38.%ESC%%RGB%[36m Any Video Converter%RGB%[0m    %ESC%[90mบ%ESC%%ESC%[32m 64.%ESC%%RGB%[36m Blender%RGB%[0m                     %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 13.%ESC%%RGB%[36m Cheat Engine%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 39.%ESC%%RGB%[33m Free Download Manager%RGB%[0m  %ESC%[90mบ%ESC%%ESC%[32m 65.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 14.%ESC%%RGB%[36m Wemod%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 40.%ESC%%RGB%[33m Int Download Manager%RGB%[0m   %ESC%[90mบ%ESC%%ESC%[32m 66.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 15.%ESC%%RGB%[33m Google Chrome%RGB%[0m        %ESC%[90mบ%ESC%[0m %ESC%[32m 41.%ESC%%RGB%[33m ByClick Downloader%RGB%[0m     %ESC%[90mบ%ESC%%ESC%[32m 67.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 16.%ESC%%RGB%[33m Mozilla Firefox%RGB%[0m      %ESC%[90mบ%ESC%[0m %ESC%[32m 42.%ESC%%RGB%[33m Utorrent%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 68.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[32m 17.%ESC%%RGB%[33m Brave%RGB%[0m                %ESC%[90mบ%ESC%[0m %ESC%[32m 43.%ESC%%RGB%[33m GlassWire%RGB%[0m              %ESC%[90mบ%ESC%%ESC%[32m 69.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m  
echo   %ESC%[90mบ%ESC%%ESC%[32m 18.%ESC%%RGB%[33m Microsoft Edge%RGB%[0m       %ESC%[90mบ%ESC%[0m %ESC%[32m 44.%ESC%%RGB%[33m TeamViewer%RGB%[0m             %ESC%[90mบ%ESC%%ESC%[32m 70.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 19.%ESC%%RGB%[37m ISLC%RGB%[0m                 %ESC%[90mบ%ESC%[0m %ESC%[32m 45.%ESC%%RGB%[33m Hamachi%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 71.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 20.%ESC%%RGB%[37m MemReduct%RGB%[0m            %ESC%[90mบ%ESC%[0m %ESC%[32m 46.%ESC%%RGB%[33m Stremio%RGB%[0m                %ESC%[90mบ%ESC%%ESC%[32m 72.%ESC%%RGB%[36m %RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 21.%ESC%%RGB%[36m Libre Office%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 47.%ESC%%RGB%[36m MSI Afterburner%RGB%[0m        %ESC%[90mบ%ESC%%ESC%[32m 73.%ESC%%RGB%[37m OSU! %RGB%[0m                       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 22.%ESC%%RGB%[36m Adobe Reader%RGB%[0m         %ESC%[90mบ%ESC%[0m %ESC%[32m 48.%ESC%%RGB%[36m Hibit Uninstaller%RGB%[0m      %ESC%[90mบ%ESC%%ESC%[32m 74.%ESC%%RGB%[37m World Of Tanks%RGB%[0m              %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 23.%ESC%%RGB%[36m PDF-XChange Edit”r%RGB%[0m   %ESC%[90mบ%ESC%[0m %ESC%[32m 49.%ESC%%RGB%[36m Wise Care 365%RGB%[0m          %ESC%[90mบ%ESC%%ESC%[32m 75.%ESC%%RGB%[37m Genshin Impact%RGB%[0m              %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 24.%ESC%%RGB%[36m Calibre%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 50.%ESC%%RGB%[36m Unlocker%RGB%[0m               %ESC%[90mบ%ESC%%ESC%[32m 76.%ESC%%RGB%[37m League Of Legends%RGB%[0m           %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 25.%ESC%%RGB%[33m 7 - Zip%RGB%[0m              %ESC%[90mบ%ESC%[0m %ESC%[32m 51.%ESC%%RGB%[36m SSD Booster%RGB%[0m            %ESC%[90mบ%ESC%%ESC%[32m 77.%ESC%%RGB%[37m Blitz%RGB%[0m                       %ESC%[90mบ%ESC%[0m 
echo   %ESC%[90mบ%ESC%%ESC%[32m 26.%ESC%%RGB%[33m WinRAR%RGB%[0m               %ESC%[90mบ%ESC%[0m %ESC%[32m 52.%ESC%%RGB%[36m OpenShell%RGB%[0m              %ESC%[90mบ%ESC%%ESC%[32m 78.%ESC%%RGB%[37m Valorant%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออสอออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m                             %ESC%[32m X.%ESC%%ESC%[33m ^<^<^< Collapse List%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p $multi= %ESC%[96m  Multi Choice %ESC%%ESC%[90mx,y%ESC%[0m :

echo %$multi% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto menu
echo %$multi% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto menu	
(
echo ---------------------------------------------------------------------------------------------------------------------------
echo [%date% - %time%] ^| MultiSelect ^| Choice:"%$multi%"
) >> %location%\Logs
cls
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m OGNITORENKS TOOLBOX %ESC%[0m%ESC%[90m ^|%ESC%%ESC%[32m USER:%ESC%%ESC%[37m%registereduser% %ESC%%ESC%[90m^|%ESC%%ESC%[32m PC-Name:%ESC%%ESC%[37m%pcname%%ESC%[0m	
echo   %ESC%[90mบ%ESC%%ESC%[32m OS:%ESC%%ESC%[37m %caption% %ESC%%ESC%[90m^|%ESC%%ESC%[37m x%osarch% %ESC%%ESC%[90m^|%ESC%%ESC%[37m %ImageBuild% %ESC%[0m%ESC%[90m^|%ESC%%ESC%[37m %versionis% %ESC%%ESC%[90m^|%ESC%%ESC%[32m Power:%ESC%%ESC%[37m %powerchange% %ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo                                         %ESC%[92m Multi Download%ESC%[0m
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo    %RGB%[96m Choice: %$multi%%RGB%[0m
:MultiSelect
FOR %%a in (%$multi%) do (Call :Download%%a)
echo --------------------------------------------------------------------------------------------------------------------------- >> %location%\Logs
goto menu2

:Download1
cls
:: I get the links of the programs from the link.bat file with the FOR loop below.
:: Since I used the link system in the unattended program preparation section, I prepared it as a common system.

::-----------------------
:: Uninstalling partition 

echo %ESC%[1;97m%ESC%%ESC%[42m Uninstalling old versions%ESC%[0m
DEL /F /Q /A "%Logs%\aiodel.txt" > NUL 2>&1

For /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -Class Win32_Product | Select-Object -Property IdentifyingNumber,Name"') do echo %%a >> %Logs%\aiodel.txt

:: 2005 / 2008 / 2010 uninstall
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2005" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2008" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
FOR /F "tokens=1" %%a in ('Findstr /C:"C++ 2010" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: 2012-2013 uninstall
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x86.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\vcredist_x64.exe"') do "%%a" /uninstall /quiet /norestart

:: 2015-2022 uninstall
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x64.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\VC_redist.x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Desktop runtime uninstall
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x64.exe"') do "%%a" /uninstall /quiet /norestart
FOR /F "tokens=*" %%a  in ('dir /b /s "%programdata%\windowsdesktop-runtime-*-win-x86.exe"') do "%%a" /uninstall /quiet /norestart

:: Java uninstall
For /f "tokens=1" %%a in ('Findstr /C:"Java" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn

:: OpenAL uninstall
"%ProgramFiles(x86)%\OpenAL\oalinst.exe" /U /SILENT

:: XNA Framework 4.0 uninstall
FOR /F "tokens=1" %%a in ('Findstr /C:"XNA Framework" %Logs%\aiodel.txt') do msiexec.exe /x %%a /qn
::-----------------------
echo %ESC%[1;97m%ESC%%ESC%[42m Net Framework3.5/4.8/Direct Play activated%ESC%[0m
Dism /Online /Enable-Feature /Featurename:NetFx3 /all /limitaccess /Quiet /NoRestart
Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /Quiet /NoRestart
Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /Quiet /NoRestart
::-----------------------
:: Install partition
FOR /F "tokens=1" %%i in ('FIND "05x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 05x86.exe /Q
FOR /F "tokens=1" %%i in ('FIND "05x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 05x64.exe /Q

FOR /F "tokens=1" %%i in ('FIND "08x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 08x86.exe /q
FOR /F "tokens=1" %%i in ('FIND "08x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 08x64.exe /q

FOR /F "tokens=1" %%i in ('FIND "10x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 10x86.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "10x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 10x64.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "12x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 12x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "12x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 12x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "13x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 13x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "13x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 13x64.exe "/install /quiet /norestart"

FOR /F "tokens=1" %%i in ('FIND "15x86.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 15x86.exe "/install /quiet /norestart"
FOR /F "tokens=1" %%i in ('FIND "15x64.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 15x64.exe "/install /quiet /norestart" 

FOR /F "tokens=1" %%i in ('FIND "javax64" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" javax64.exe "INSTALL_SILENT=Enable SPONSORS=Disable WEB_ANALYTICS=Disable REBOOT=Disable WEB_JAVA=Disable REMOVEOUTOFDATEJRES=1"

FOR /F "tokens=1" %%i in ('FIND "xnafx40" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" xnafx40.msi /qn

FOR /F "tokens=1" %%i in ('FIND "oal.zip" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" oal.zip
Call :ZipExport oal.zip
"%download%\oal\oalinst.exe" /SILENT

FOR /F "tokens=1" %%i in ('FIND "Desktop5x64" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x64.exe "/q /norestart"
FOR /F "tokens=1" %%i in ('FIND "Desktop5x86" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Desktop5x86.exe "/q /norestart"

FOR /F "tokens=1" %%i in ('FIND "DirectX" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" DirectX.exe
%location%\Download\DirectX.exe /Q /C /T:"%location%\Download\DirectX\"
"%location%\Download\DirectX\DXSETUP.exe" /silent
goto :eof

:Download2
FOR /F "tokens=1" %%i in ('FIND "Discord" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Discord.exe -s
goto :eof

:Download3
FOR /F "tokens=1" %%i in ('FIND "WhatsApp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" WhatsApp.exe --silent 
goto :eof

:Download4
FOR /F "tokens=1" %%i in ('FIND "Signal" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Signal.exe /S
goto :eof

:Download5
FOR /F "tokens=1" %%i in ('FIND "Telegram" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Telegram.exe "/VERYSILENT /NORESTART"
goto :eof

:Download6
FOR /F "tokens=1" %%i in ('FIND "Teams" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Teams.exe -s
goto :eof

:Download7
FOR /F "tokens=1" %%i in ('FIND "Zoom" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Zoom.msi /qn
goto :eof

:Download8
FOR /F "tokens=1" %%i in ('FIND "EpicGames" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" EpicGames.msi "/qn /norestart"
goto :eof

:Download9
FOR /F "tokens=1" %%i in ('FIND "Steam" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Steam.exe /S
goto :eof

:Download10
FOR /F "tokens=1" %%i in ('FIND "GOG.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" GOG.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download11
FOR /F "tokens=1" %%i in ('FIND "Uplay" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Uplay.exe /S
goto :eof

:Download12
FOR /F "tokens=1" %%i in ('FIND "Origin" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Origin.exe /SILENT
goto :eof

:Download13
FOR /F "tokens=1" %%i in ('FIND "CheatEngine" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" CheatEngine.exe /SILENT
goto :eof

:Download14
FOR /F "tokens=1" %%i in ('FIND "Wemod" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Wemod.exe --silent
goto :eof

:Download15
FOR /F "tokens=1" %%i in ('FIND "Chrome" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" Chrome.zip /qn
Call :ZipExport Chrome.zip
"%download%\Chrome\Installers\GoogleChromeStandaloneEnterprise64.msi" /qn
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Download16
FOR /F "tokens=1" %%i in ('FIND "Firefox" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Firefox.exe /S
goto :eof

:Download17
FOR /F "tokens=1" %%i in ('FIND "Brave" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Brave.exe "--install --silent --system-level"
REM UBlock Origin
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM HTTPS Everywhere
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\gcbommkclmclpchllfjekcdonpmejbdp" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
REM Clear URL's
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Google\Chrome\Extensions\lckanjgmijmafbedllaakclkaicjfmnk" /v "update_url" /t REG_SZ /d "https://clients2.google.com/service/update2/crx" /f > NUL 2>&1
goto :eof 

:Download18
FOR /F "tokens=1" %%i in ('FIND "edge.msi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" edge.msi /qn
goto :eof

:Download19
Powershell -command "Expand-Archive -Force '%location%\Files\ISLC.zip' 'C:\'"
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\%username%\Desktop' -Name 'ISLC' -Value 'C:\ISLC\Intelligent standby list cleaner ISLC.exe'"
goto :eof

:Download20
FOR /F "tokens=1" %%i in ('FIND "MemReduct.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" MemReduct.exe /S
goto :eof

:Download21
FOR /F "tokens=1" %%i in ('FIND "LibreOffice.msi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" LibreOffice.msi "/qn /norestart ALLUSERS=1 CREATEDESKTOPLINK=0 REGISTER_ALL_MSO_TYPES=0 REGISTER_NO_MSO_TYPES=1 ISCHECKFORPRODUCTUPDATES=0 QUICKSTART=1 ADDLOCAL=ALL"
goto :eof

:Download22
FOR /F "tokens=1" %%i in ('FIND "AdobeReader.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" "AdobeReader.exe" "/sPB /rs /msi"
goto :eof

:Download23
FOR /F "tokens=1" %%i in ('FIND "PdfXchange.msi" %location%\Extra\Links.bat') do set link=%%i
::Call :wget "%link%" AdobeReader.exe "/sPB /rs /msi"
Call :wget "%link%" PdfXchange.msi "/quiet /norestart"
goto :eof

:Download24
FOR /F "tokens=1" %%i in ('FIND "Calibre" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Calibre.msi /qn
goto :eof

:Download25
FOR /F "tokens=1" %%i in ('FIND "7-Zip" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" 7-Zip.msi /qn
goto :eof

:Download26
FOR /F "tokens=1" %%i in ('FIND "Winrar" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Winrar.exe /S
goto :eof

:Download27
FOR /F "tokens=1" %%i in ('FIND "Kdenlive" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Kdenlive.exe /S
goto :eof

:Download28
FOR /F "tokens=1" %%i in ('FIND "Openshot.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Openshot.exe /VERYSILENT /NORESTART
goto :eof

:Download29
FOR /F "tokens=1" %%i in ('FIND "Shotcut.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Shotcut.exe /S
goto :eof

:Download30
FOR /F "tokens=1" %%i in ('FIND "Krita" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Krita.exe /S
goto :eof

:Download31
FOR /F "tokens=1" %%i in ('FIND "Gimp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Gimp.exe "/VERYSILENT /NORESTART /MERGETASKS=desktopicon /ALLUSERS"
goto :eof

:Download32
FOR /F "tokens=1" %%i in ('FIND "OBS" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" OBS.exe /S
goto :eof

:Download33
FOR /F "tokens=1" %%i in ('FIND "ShareX" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" ShareX.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download34
FOR /F "tokens=1" %%i in ('FIND "Audacity" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Audacity.exe "/VERYSILENT /NORESTART"
goto :eof

:Download35
FOR /F "tokens=1" %%i in ('FIND "Klite" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Klite.exe /verysilent
goto :eof

:Download36
FOR /F "tokens=1" %%i in ('FIND "VLCMediaPlayer" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" VLCMediaPlayer.exe "/L=1055 /S"
goto :eof

:Download37
FOR /F "tokens=1" %%i in ('FIND "Aimp" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Aimp.exe "/AUTO /SILENT"
goto :eof

:Download38
FOR /F "tokens=1" %%i in ('FIND "AnyVideoConverter" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" AnyVideoConverter.exe /S
Powershell -command "New-Item -ItemType SymbolicLink -Path 'C:\Users\OgnitorenKs\Desktop' -Name 'Any Video Converter' -Value 'C:\Program Files (x86)\Anvsoft\Any Video Converter\AVCFree.exe'"
goto :eof

:Download39
FOR /F "tokens=1" %%i in ('FIND "FreeDownloadManager" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" FreeDownloadManager.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download40
FOR /F "tokens=1" %%i in ('FIND "idm.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" idm.exe /skipdlgs
goto :eof

:Download41
FOR /F "tokens=1" %%i in ('FIND "ByClick" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" ByClick.exe /q
goto :eof

:Download42
FOR /F "tokens=1" %%i in ('FIND "Utorrent" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Utorrent.exe /S
goto :eof

:Download43
FOR /F "tokens=1" %%i in ('FIND "GlassWire" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" GlassWire.exe /S
goto :eof

:Download44
FOR /F "tokens=1" %%i in ('FIND "TeamViewer" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" TeamViewer.exe /S
goto :eof

:Download45
FOR /F "tokens=1" %%i in ('FIND "Hamachi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Hamachi.msi /q
goto :eof

:Download46
FOR /F "tokens=1" %%i in ('FIND "Stremio" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Stremio.exe /S
goto :eof

:Download47
FOR /F "tokens=1" %%i in ('FIND "MSIAfterburner" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" MSIAfterburner.zip /S
Call :ZipExport MSIAfterburner.zip 
for /f %%i in ('"dir /b %download%\MSIAfterburner\*.exe"') do "%download%\MSIAfterburner\%%i" /S
goto :eof

:Download48
FOR /F "tokens=1" %%i in ('FIND "Hibit" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Hibit.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download49
FOR /F "tokens=1" %%i in ('FIND "WiseCare365.zip" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" WiseCare365.zip
powershell -command "Expand-Archive -Force '%download%\WiseCare365.zip' '%download%'"
"%download%\WiseCare365.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
DEL /F /Q /A "%download%\WiseCare365.zip"
goto :eof

:Download50
FOR /F "tokens=1" %%i in ('FIND "Unlocker.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Unlocker.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download51
FOR /F "tokens=1" %%i in ('FIND "SSDBooster" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\SSDBooster.exe"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\SSDBooster.exe'"
goto :eof

:Download52
FOR /F "tokens=1" %%i in ('FIND "OpenShell" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" OpenShell.exe "/quiet /norestart ADDLOCAL=StartMenu"
goto :eof

:Download53
FOR /F "tokens=1" %%i in ('FIND "Everything" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Everything.exe /S
goto :eof

:Download54
FOR /F "tokens=1" %%i in ('FIND "TaskbarX" %location%\Extra\Links.bat') do set link=%%i
Call :wgetspecial "%link%" TaskbarX.zip 
powershell -command "Expand-Archive -Force '%download%\TaskbarX.zip' 'C:\Users\%username%\Desktop\TaskbarX'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX Configurator.exe'"
powershell -command "Start-Process 'C:\Users\%username%\Desktop\TaskbarX\TaskbarX.exe'"
goto :eof

:Download55
FOR /F "tokens=1" %%i in ('FIND "Stellarium.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Stellarium.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download56
FOR /F "tokens=1" %%i in ('FIND "Recuva.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Recuva.exe /S
goto :eof

:Download57
FOR /F "tokens=1" %%i in ('FIND "AOMEI.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" AOMEI.exe "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
goto :eof

:Download58
FOR /F "tokens=1" %%i in ('FIND "Python.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Python.exe "/quiet InstallAllUsers=1 PrependPath=1"
goto :eof

:Download59
FOR /F "tokens=1" %%i in ('FIND "PyCharm.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" PyCharm.exe "/S /CONFIG=%download%\silent.config /D=C:\PyCharm
goto :eof

:Download60
FOR /F "tokens=1" %%i in ('FIND "Notepad" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Notepad.exe /S
goto :eof

:Download61
FOR /F "tokens=1" %%i in ('FIND "VisualStudioCode.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" VisualStudioCode.exe "/VERYSILENT /NORESTART /MERGETASKS=!runcode"
goto :eof

:Download62
FOR /F "tokens=1" %%i in ('FIND "Github.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Github.exe -s
goto :eof

:Download63
FOR /F "tokens=1" %%i in ('FIND "Git.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Git.exe "/VERYSILENT /NORESTART"
goto :eof

:Download64
FOR /F "tokens=1" %%i in ('FIND "Blender.msi" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Blender.msi "ALLUSERS=1 /qn"
goto :eof

:Download73
FOR /F "tokens=1" %%i in ('FIND "osu.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\osu.exe" 
goto :eof

:Download74
FOR /F "tokens=1" %%i in ('FIND "WorldOfTanks.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\WorldOfTanks.exe" 
goto :eof

:Download75
FOR /F "tokens=1" %%i in ('FIND "GenshinImpact.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\GenshinImpact.exe" 
goto :eof

:Download76
FOR /F "tokens=1" %%i in ('FIND "LeagueOfLegends.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\LeagueOfLegends.exe" 
goto :eof

:Download77
FOR /F "tokens=1" %%i in ('FIND "Blitz" %location%\Extra\Links.bat') do set link=%%i
Call :wget "%link%" Blitz.exe /S
goto :eof

:Download78
FOR /F "tokens=1" %%i in ('FIND "Valorant.exe" %location%\Extra\Links.bat') do set link=%%i
Call :wgetdesktop "%link%" "C:\users\%username%\Desktop\Valorant.exe" 
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsRepair
cls
mode con cols=80 lines=30

Call :Logss "WindowsRepair" "Windows repair run."

echo %ESC%[92m   Sfc /scannow running command...%ESC%[0m
sfc /scannow
echo %ESC%[92m   DISM /Cleanup-Image /RestoreHealth running command...%ESC%[0m
DISM /Online /Cleanup-Image /RestoreHealth
echo %ESC%[92m   WinSxS Clean...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup 
echo %ESC%[92m   SoftwareDistribution Cleaning...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1
echo %ESC%[92m   Store registry repair...%ESC%[0m
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /f /v "RemoveWindowsStore" /t REG_DWORD /d 0 > NUL 2>&1
:: AppX Deployment Service
echo %ESC%[92m   Store services start...%ESC%[0m
:: AppX Deployment Service
sc config AppXSvc start= demand > NUL 2>&1
net start AppXSvc > NUL 2>&1
:: Capability Access Manager Service
sc config camsvc start= demand > NUL 2>&1
net start camsvc > NUL 2>&1
:: Cryptographic Services
sc config cryptsvc start= auto > NUL 2>&1
net start cryptsvc > NUL 2>&1
:: Windows Update
sc config wuauserv start= demand > NUL 2>&1
net start wuauserv > NUL 2>&1
:: Storage Service
sc config StorSvc start= demand > NUL 2>&1
net start StorSvc > NUL 2>&1
:: Background Intelligent Transfer Service
sc config bits start= auto > NUL 2>&1
net start bits > NUL 2>&1
:: Windows Modules Installer
sc config trustedinstaller start= demand > NUL 2>&1
net start trustedinstaller > NUL 2>&1
:: Client License Service
net start ClipSVC > NUL 2>&1
echo %ESC%[92m   DLL files are checked...%ESC%[0m
regsvr32 softpub.dll /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 dssenh.dll /s&regsvr32 rsaenh.dll /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 slbcsp.dll /s&regsvr32 mssip32.dll /s&regsvr32 cryptdlg.dll /s&regsvr32 msxml3.dll /s&regsvr32 comcat.dll /s&Regsvr32 Msxml.dll /s&Regsvr32 Msxml2.dll /s&regsvr32 mshtml.dll /s&regsvr32 shdocvw.dll /s&regsvr32 browseui.dll /s&regsvr32 msjava.dll /s&regsvr32 shdoc401.dll /s&regsvr32 cdm.dll /s&regsvr32 shdoc401.dll /i /s&regsvr32 gpkcsp.dll /s&regsvr32 sccbase.dll /s&regsvr32 asctrls.ocx /s&regsvr32 wintrust.dll /s&regsvr32 initpki.dll /s&regsvr32 softpub.dll /s&regsvr32 oleaut32.dll /s&regsvr32 shdocvw.dll /I /s&regsvr32 Shell32.dll /s&regsvr32 browseui.dll /s&regsvr32 browseui.dll /I /s&regsvr32 msrating.dll /s&regsvr32 mlang.dll /s&regsvr32 hlink.dll /s&regsvr32 mshtmled.dll /s&regsvr32 urlmon.dll /s&regsvr32 urlmon.dll /i /s&regsvr32 plugin.ocx /s&regsvr32 sendmail.dll /s&regsvr32 scrobj.dll /s&regsvr32 mmefxe.ocx /s&regsvr32 corpol.dll /s&regsvr32 jscript.dll /s&regsvr32 imgutil.dll /s&regsvr32 thumbvw.dll /s&regsvr32 cryptext.dll /s&regsvr32 rsabase.dll /s&regsvr32 inseng.dll /s&regsvr32 iesetup.dll /i /s&regsvr32 actxprxy.dll /s&regsvr32 dispex.dll /s&regsvr32 occache.dll /s&regsvr32 occache.dll /i /s&regsvr32 iepeers.dll /s&regsvr32 cdfview.dll /s&regsvr32 webcheck.dll /s&regsvr32 mobsync.dll /s&regsvr32 pngfilt.dll /s&regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s&regsvr32 hhctrl.ocx /s&regsvr32 inetcfg.dll /s&regsvr32 tdc.ocx /s&regsvr32 MSR2C.DLL /s&regsvr32 msident.dll /s&regsvr32 msieftp.dll /s&regsvr32 xmsconf.ocx /s&regsvr32 ils.dll /s&regsvr32 msoeacct.dll /s&regsvr32 inetcomm.dll /s&regsvr32 msdxm.ocx /s&regsvr32 dxmasf.dll /s&regsvr32 l3codecx.ax /s&regsvr32 acelpdec.ax /s&regsvr32 mpg4ds32.ax /s&regsvr32 voxmsdec.ax /s&regsvr32 danim.dll /s&regsvr32 Daxctle.ocx /s&regsvr32 lmrt.dll /s&regsvr32 datime.dll /s&regsvr32 dxtrans.dll /s&regsvr32 dxtmsft.dll /s&regsvr32 WEBPOST.DLL /s&regsvr32 WPWIZDLL.DLL /s&regsvr32 POSTWPP.DLL /s&regsvr32 CRSWPP.DLL /s&regsvr32 FTPWPP.DLL /s&regsvr32 FPWPP.DLL /s&regsvr32 WUAPI.DLL /s&regsvr32 wups2.dll /S&regsvr32 WUAUENG.DLL /s&regsvr32 ATL.DLL /s&regsvr32 WUCLTUI.DLL /s&regsvr32 WUPS.DLL /s&regsvr32 WUWEB.DLL /s&regsvr32 wshom.ocx /s&regsvr32 wshext.dll /s&regsvr32 vbscript.dll /s&regsvr32 scrrun.dll mstinit.exe /setup /s&regsvr32 msnsspc.dll /SspcCreateSspiReg /s&regsvr32 msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m Process completed.%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PCClean
cls
Call :Logss "PCClean" "PC Clean run."
echo %ESC%[92m   Clearing file history...%ESC%[0m
FhManagew.exe -cleanup 360 -quiet > NUL 2>&1

echo %ESC%[92m   Clearing ico and thumbnail memory...%ESC%[0m
taskkill /f /IM explorer.exe > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
Start explorer.exe > NUL 2>&1

echo %ESC%[92m   Clearing temp files...%ESC%[0m
RD /S /Q %temp%\* > NUL 2>&1
DEL /F /Q /A %windir%\temp\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Temp\* > NUL 2>&1

echo %ESC%[92m   Clearing SoftwareDistribution...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q  %windir%\SoftwareDistribution > NUL 2>&1
net start wuauserv > NUL 2>&1

echo %ESC%[92m   Clearing Prefetch...%ESC%[0m
DEL /F /Q /A %windir%\prefetch\* > NUL 2>&1

echo %ESC%[92m   Clearing Adobe Reader cache...%ESC%[0m
DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Adobe\Acrobat\DC\*.lst > NUL 2>&1

echo %ESC%[92m   Clearing Microsoft Edge cache ...%ESC%[0m
DEL /F /Q /A %programfiles(x86)%\Microsoft\Edge\User Data\Default\Cache\* > NUL 2>&1
DEL /F /Q /A %localappdata%\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\* > NUL 2>&1

echo %ESC%[92m   Clearing GPU remnants...%ESC%[0m
RD /S /Q %systemdrive%\AMD > NUL 2>&1
RD /S /Q %systemdrive%\NVIDIA > NUL 2>&1

echo %ESC%[92m   Clearing log files...%ESC%[0m
DEL /F /Q /A %windir%\System32\LogFiles\* > NUL 2>&1

echo %ESC%[92m   Clearing font cache...%ESC%[0m
DEL /F /Q /A %windir%\System32\FNTCACHE.DAT > NUL 2>&1

echo %ESC%[92m   Clearing System Cache...%ESC%[0m
DEL /F /Q /A %windir%\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\* > NUL 2>&1

echo %ESC%[92m   Clearing the Windows installer cache...%ESC%[0m
DEL /F /Q /A %windir%\Installer\$PatchCache$\Managed\* > NUL 2>&1

echo %ESC%[92m   Clearing report files...%ESC%[0m
DEL /F /Q /A %programdata%\Microsoft\Windows\WER\ReportQueue\* > NUL 2>&1

echo %ESC%[92m   Clearing WinSxS...%ESC%[0m
Dism /Online /Cleanup-Image /StartComponentCleanup

echo %ESC%[92m   Clearing disk...%ESC%[0m
cleanmgr /verylowdisk /sagerun:5

echo %ESC%[92m   Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Fat32toNTFS
mode con cols=63 lines=25
title Fat32 to NTFS conversion / OgnitorenKs
echo   %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                      Fat32 to NTFS                       %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo       %RGB%[32mLetter    Name%RGB%[0m
for /f "skip=3 tokens=*" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID,VolumeName"') do (
   echo       %%a)
echo   %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[32m  Choice disk letter:%RGB%[0m
	if %value%==X GOTO menu
	if %value%==x GOTO menu
Call :Logss "Fat32toNTFS" "%value% disk conversion NTFS."
convert %value%: /fs:NTFS /v
goto :eof

:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:Slmgrvbs
cls
mode con cols=55 lines=16
title License Management \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m         License Management / SLMGR.VBS          %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 1.%ESC%%RGB%[33m License Enter %RGB%%RGB%[90m[ipk]%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 2.%ESC%%RGB%[33m License status %RGB%%RGB%[90m[dli]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 3.%ESC%%RGB%[33m License status detailed %RGB%%RGB%[90m[dlv]%RGB%[0m              %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 4.%ESC%%RGB%[33m License Term %RGB%%RGB%[90m[xpr]%RGB%[0m                         %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 5.%ESC%%RGB%[33m License Delete %RGB%%RGB%[90m[upk]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m 6.%ESC%%RGB%[33m License Reset %RGB%%RGB%[90m[rearm]%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mบ%ESC%[0m  %ESC%[32m X.%ESC%%ESC%[36m Main menu%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==1 (Call :slmgrlisans)
	if %value%==2 (Call :Logss "SLMGR.VBS" "License status checked."
				   slmgr /dli&goto Slmgrvbs)		   
	if %value%==3 (Call :Logss "SLMGR.VBS" "License status detailed checked."
				   slmgr /dlv&goto Slmgrvbs)
	if %value%==4 (Call :Logss "SLMGR.VBS" "License Term checked."
				   slmgr /xpr&goto Slmgrvbs)
	if %value%==5 (Call :Logss "SLMGR.VBS" "License Delete run."
				   slmgr /upk&goto Slmgrvbs)
	if %value%==6 (Call :Logss "SLMGR.VBS" "License Reset run."
				   slmgr /rearm&goto Slmgrvbs)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Slmgrvbs

:slmgrlisans
cls
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                 License Enter                   %ESC%[0m%ESC%%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
set /p value= %ESC%[92m   License : %ESC%[0m
	if %value%==X (goto :eof)
	if %value%==x (goto :eof)
echo [%date% - %time%] ^| Slmgr.vbs ^| License Enter, Windows activated >> %location%\Logs
slmgr /ipk %value%

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof
:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:icofix
cls
Call :location
echo [%date% - %time%] ^| icofix ^| ICO fix run. >> %location%\Logs
echo %ESC%[92m ICO fix...%ESC%[0m
ie4uinit.exe -show
taskkill /f /im explorer.exe
DEL /F /Q /A "%localappdata%\IconCache.db" > NUL 2>&1
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%location%\Files\ReIconCache.exe"
powershell -command "Start-Process '%windir%\explorer.exe'"
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:servicemanagement
cls
mode con cols=55 lines=32
Call :PowerRun
title Service Management / OgnitorenKs
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Service Management                  %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Bluetooth service%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Printer service%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Printing service%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Phone service%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Data Usage service%RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m IP Helper (IPv6) service%RGB%[0m               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Hotspot service%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Radio and Airplane Mode service%RGB%[0m        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 9%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Remote Desktop/Streaming/Network serv%RGB%[0m  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 10%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m WPS service%RGB%[0m                            %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 11%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Scanner service%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 12%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Camera service%RGB%[0m                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 13%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Insider service%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 14%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Biometric service%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 15%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Pen and Touch service%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 16%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m System Restore service%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 17%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Sysmain (Fast Fetch)%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 18%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Hibernate%RGB%[0m                              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 19%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Location service%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 20%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Windows Media Player%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 21%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Hyper-V service%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 22%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Xbox service%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 23%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m BitLocker Drive Encryption service%RGB%[0m     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m  %ESC%[32m 24%ESC%%RGB%[90m[%RGB%%RGB%[36mE%RGB%%RGB%[90m/%RGB%%RGB%[36mD%RGB%%RGB%[90m]%RGB%%ESC%[32m.%ESC%%RGB%[33m Mixed Reality service (VR)%RGB%[0m             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m        %ESC%[32m X.%ESC%%ESC%[36m Main Menu %ESC%[0m                             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==1e (Call :serv.1.bluetooth start demand activating)
	if %value%==1E (Call :serv.1.bluetooth start demand activating)
	if %value%==1D (Call :serv.1.bluetooth stop disabled disabling)
	if %value%==1d (Call :serv.1.bluetooth stop disabled disabling)
	if %value%==2e (Call :serv.2.printer start demand auto activating)
	if %value%==2E (Call :serv.2.printer start demand auto activating)
	if %value%==2D (Call :serv.2.printer stop disabled disabled disabling)
	if %value%==2d (Call :serv.2.printer stop disabled disabled disabling)
	if %value%==3e (Call :serv.3.printing start demand activating)
	if %value%==3E (Call :serv.3.printing start demand activating)
	if %value%==3D (Call :serv.3.printing stop disabled disabling)
	if %value%==3d (Call :serv.3.printing stop disabled disabling)
	if %value%==4e (Call :serv.4.phone start demand activating)
	if %value%==4E (Call :serv.4.phone start demand activating)
	if %value%==4D (Call :serv.4.phone stop disabled disabling)
	if %value%==4d (Call :serv.4.phone stop disabled disabling)
	if %value%==5e (Call :serv.5.datausage start auto activating)
	if %value%==5E (Call :serv.5.datausage start auto activating)
	if %value%==5D (Call :serv.5.datausage stop disabled disabling)
	if %value%==5d (Call :serv.5.datausage stop disabled disabling)
	if %value%==6e (Call :serv.6.iphelper start demand auto activating)
	if %value%==6E (Call :serv.6.iphelper start demand auto activating)
	if %value%==6D (Call :serv.6.iphelper stop disabled disabled disabling)
	if %value%==6d (Call :serv.6.iphelper stop disabled disabled disabling)
	if %value%==7e (Call :serv.7.hotspot start demand activating)
	if %value%==7E (Call :serv.7.hotspot start demand activating)
	if %value%==7D (Call :serv.7.hotspot stop disabled disabling)
	if %value%==7d (Call :serv.7.hotspot stop disabled disabling)
	if %value%==8e (Call :serv.8.radio start demand activating)
	if %value%==8E (Call :serv.8.radio start demand activating)
	if %value%==8D (Call :serv.8.radio stop disabled disabling)
	if %value%==8d (Call :serv.8.radio stop disabled disabling)
	if %value%==9e (Call :serv.9.network.remote start demand activating)
	if %value%==9E (Call :serv.9.network.remote start demand activating)
	if %value%==9D (Call :serv.9.network.remote stop disabled disabling)
	if %value%==9d (Call :serv.9.network.remote stop disabled disabling)
	if %value%==10e (Call :serv.10.wps start demand activating)
	if %value%==10E (Call :serv.10.wps start demand activating)
	if %value%==10D (Call :serv.10.wps stop disabled disabling)
	if %value%==10d (Call :serv.10.wps stop disabled disabling)
	if %value%==11e (Call :serv.11.scanner start demand activating)
	if %value%==11E (Call :serv.11.scanner start demand activating)
	if %value%==11D (Call :serv.11.scanner stop disabled disabling)
	if %value%==11D (Call :serv.11.scanner stop disabled disabling)
	if %value%==12e (Call :serv.12.camera start demand activating)
	if %value%==12E (Call :serv.12.camera start demand activating)
	if %value%==12D (Call :serv.12.camera stop disabled disabling)
	if %value%==12d (Call :serv.12.camera stop disabled disabling)
	if %value%==13e (Call :serv.13.insider start demand activating)
	if %value%==13E (Call :serv.13.insider start demand activating)
	if %value%==13D (Call :serv.13.insider stop disabled disabling)
	if %value%==13d (Call :serv.13.insider stop disabled disabling)
	if %value%==14e (Call :serv.14.biometric start demand activating)
	if %value%==14E (Call :serv.14.biometric start demand activating)
	if %value%==14D (Call :serv.14.biometric stop disabled disabling)
	if %value%==14d (Call :serv.14.biometric stop disabled disabling)
	if %value%==15e (Call :serv.15.pentouch start demand activating)
	if %value%==15E (Call :serv.15.pentouch start demand activating)
	if %value%==15D (Call :serv.15.pentouch stop disabled disabling)
	if %value%==15d (Call :serv.15.pentouch stop disabled disabling)
	if %value%==16e (Call :serv.16.systemrestore start demand ENABLE 0 activating)
	if %value%==16E (Call :serv.16.systemrestore start demand ENABLE 0 activating)
	if %value%==16D (Call :serv.16.systemrestore stop disabled DISABLE 1 disabling)
	if %value%==16d (Call :serv.16.systemrestore stop disabled DISABLE 1 disabling)
	if %value%==17e (Call :serv.17.sysmain start auto activating)
	if %value%==17E (Call :serv.17.sysmain start auto activating)
	if %value%==17D (Call :serv.17.sysmain stop disabled disabling)
	if %value%==17d (Call :serv.17.sysmain stop disabled disabling)
	if %value%==18e (Call :serv.18.hibernate on 1 activating)
	if %value%==18E (Call :serv.18.hibernate on 1 activating)
	if %value%==18D (Call :serv.18.hibernate off 0 disabling)
	if %value%==18d (Call :serv.18.hibernate off 0 disabling)
	if %value%==19e (Call :serv.19.location start demand Allow 1 delete "/v "DisableLocation" /f" activating)
	if %value%==19E (Call :serv.19.location start demand Allow 1 delete "/v "DisableLocation" /f" activating)
	if %value%==19D (Call :serv.19.location stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" disabling)
	if %value%==19d (Call :serv.19.location stop disabled Deny 0 add "/v "DisableLocation" /t REG_DWORD /d 1 /f" disabling)
	if %value%==20e (Call :serv.20.mediaplayer start demand ENABLE activating)
	if %value%==20E (Call :serv.20.mediaplayer start demand ENABLE activating)
	if %value%==20D (Call :serv.20.mediaplayer stop disabled DISABLE disabling)
	if %value%==20d (Call :serv.20.mediaplayer stop disabled DISABLE disabling)
	if %value%==21e (Call :serv.21.hyperv demand Enable For activating)
	if %value%==21E (Call :serv.21.hyperv demand Enable For activating)
	if %value%==21D (Call :serv.21.hyperv disabled Disable "::" disabling)
	if %value%==21d (Call :serv.21.hyperv disabled Disable "::" disabling)
	if %value%==22e (Call :serv.22.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" activating)
	if %value%==22E (Call :serv.22.xbox start demand 1 0 delete "/v "AllowGameDVR" /f" activating)
	if %value%==22D (Call :serv.22.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" disabling)
	if %value%==22d (Call :serv.22.xbox stop disabled 0 2 add "/v "AllowGameDVR" /t REG_DWORD /d 0 /f" disabling)
	if %value%==23e (Call :serv.23.bitlocker start demand activating)
	if %value%==23E (Call :serv.23.bitlocker start demand activating)
	if %value%==23D (Call :serv.23.bitlocker stop disabled disabling)
	if %value%==23d (Call :serv.23.bitlocker stop disabled disabling)
	if %value%==24e (Call :serv.24.mixedreality demand activating)
	if %value%==24E (Call :serv.24.mixedreality demand activating)
	if %value%==24D (Call :serv.24.mixedreality disabled disabling)
	if %value%==24d (Call :serv.24.mixedreality disabled disabling)
	if %value%==x goto menu
	if %value%==X goto menu
) else 
	goto servicemanagement

:serv.1.bluetooth
echo [%date% - %time%] ^| Service Management ^| Bluetooth service %3. >> %location%\Logs
echo   %RGB%[96mBluetooth service %3 ...%RGB%[0m
:: Bluetooth (AVCTP service) 
:: This is Audio Video Control Transport Protocol service.
%PowerRun% sc config "BthAvctpSvc" start= %2
%PowerRun% net %1 BthAvctpSvc
:: Bluetooth Support Service
:: It enables the discovery and association of Bluetooth devices. 
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth User Support Service
:: The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Bluetooth Audio Gateway Service
:: Service supporting the audio gateway role of the Bluetooth Handsfree Profile.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.2.printer
echo [%date% - %time%] ^| Service Management ^| Printer service %4. >> %location%\Logs
echo   %RGB%[96mPrinter service %4 ...%RGB%[0m
:: Print Spooler
%PowerRun% sc config "Spooler" start= %3
%PowerRun% net %1 Spooler
DEL /F /Q /A %windir%\System32\spool\PRINTERS\* > NUL 2>&1
:: Remote Desktop Services UserMode Port Redirector
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
::----------------------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : auto     | %4 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabled | %4 : disabling
::----------------------------------------------------------------------
goto :eof

:serv.3.printing
echo [%date% - %time%] ^| Service Management ^| Printing service %3. >> %location%\Logs
echo   %RGB%[96mPrinting service %3 ...%RGB%[0m 
::PrintWorkFlow
%PowerRun% sc config McpManagementService start= %2
%PowerRun% net %1 McpManagementService
%PowerRun% sc config PrintWorkflowUserSvc start= %2
%PowerRun% net %1 PrintWorkflowUserSvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.4.phone
echo [%date% - %time%] ^| Service Management ^| Phone service %3. >> %location%\Logs
echo   %RGB%[96mPhone service %3 ...%RGB%[0m 
:: Telephony
%PowerRun% sc config TapiSrv start= %2
%PowerRun% net %1 TapiSrv
:: Phone Service
%PowerRun% sc config PhoneSvc start= %2
%PowerRun% net %1 PhoneSvc
:: Bluetooth (AVCTP service) 
:: This is Audio Video Control Transport Protocol service.
%PowerRun% sc config "BthAvctpSvc" start= %2
%PowerRun% net %1 BthAvctpSvc
:: Bluetooth Support Service
:: It enables the discovery and association of Bluetooth devices. 
%PowerRun% sc config "bthserv" start= %2
%PowerRun% net %1 bthserv
:: Bluetooth User Support Service
:: The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.
%PowerRun% sc config "BluetoothUserService" start= %2
%PowerRun% net %1 BluetoothUserService
:: Bluetooth Audio Gateway Service
:: Service supporting the audio gateway role of the Bluetooth Handsfree Profile.
%PowerRun% sc config "BTAGService" start= %2
%PowerRun% net %1 BTAGService
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.5.datausage
echo [%date% - %time%] ^| Service Management ^| Data Usage service %3. >> %location%\Logs
echo   %RGB%[96mData Usage service %3 ...%RGB%[0m
:: Data Usage
:: Network data usage, data limit, restrict background data, metered networks.
%PowerRun% sc config DusmSvc start= %2
%PowerRun% net %1 DusmSvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : auto     | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.6.iphelper
echo [%date% - %time%] ^| Service Management ^| IP helper service %4. >> %location%\Logs
echo   %RGB%[96mIP helper service %4 ...%RGB%[0m
:: Provides tunnel connectivity using IPv6 transition technologies (6to4, ISATAP, Port Proxy, and Teredo), and IP-HTTPS. If this service is stopped, the computer will not have the enhanced connectivity benefits that these technologies offer.
%PowerRun% sc config iphlpsvc start= %3
%PowerRun% net %1 iphlpsvc
:: IP Translation Configuration Service
:: Configures and enables translation from v4 to v6 and vice versa.
%PowerRun% sc config IpxlatCfgSvc start= %2
%PowerRun% net %1 IpxlatCfgSvc
::----------------------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : auto     | %4 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabled | %4 : disabling
::----------------------------------------------------------------------
goto :eof

:serv.7.hotspot
echo [%date% - %time%] ^| Service Management ^| Hotspot service %3. >> %location%\Logs
echo   %RGB%[96mHotspot service %3 ...%RGB%[0m
:: Windows Mobile Hotspot Service 
%PowerRun% sc config icssvc start= %2
%PowerRun% net %1 icssvc
:: Internet Connection Sharing (ICS)
%PowerRun% sc config SharedAccess start= %2
%PowerRun% net %1 SharedAccess
:: Application Layer Gateway Service
%PowerRun% sc config ALG start= %2
%PowerRun% net %1 ALG
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.8.radio
echo [%date% - %time%] ^| Service Management ^| Radio and Airplane Mode service %3. >> %location%\Logs
echo   %RGB%[96mRadio and Airplane Mode service %3 ...%RGB%[0m
:: Radio Management and Airplane Mode Service.
%PowerRun% sc config RMSvc start= %2
%PowerRun% net %1 RMSvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.9.network.remote
echo [%date% - %time%] ^| Service Management ^| Remote Desktop, DevicesFlow, Network service %3. >> %location%\Logs
echo   %RGB%[96mRemote Desktop, DevicesFlow, Network service %3 ...%RGB%[0m
:: ConsentUX
::  >> Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
%PowerRun% sc config ConsentUxUserSvc start= %2
%PowerRun% net %1 ConsentUxUserSvc
:: DevicePicker
::  >> This user service is used for managing the Miracast, DLNA, and DIAL UI.
%PowerRun% sc config DevicePickerUserSvc start= %2
%PowerRun% net %1 DevicePickerUserSvc
:: DevicesFlow
::  >> Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
%PowerRun% sc config DevicesFlowUserSvc start= %2
%PowerRun% net %1 DevicesFlowUserSvc
:: Windows Media Player Network Sharing Service
::  >> Shares Windows Media Player libraries to other networked players and media devices using Universal Plug and Play.
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
:: PNRP Machine Name Publication Service
::  >> This service publishes a machine name using the Peer Name Resolution Protocol. Configuration is managed via the netsh context 'p2p pnrp peer'.
%PowerRun% sc config PNRPAutoReg start= %2
%PowerRun% net %1 PNRPAutoReg
:: Peer Name Resolution Protocol
::  >> Enables serverless peer name resolution over the Internet using the Peer Name Resolution Protocol (PNRP). If disabled, some peer-to-peer and collaborative applications, such as Remote Assistance, may not function.
%PowerRun% sc config PNRPsvc start= %2
%PowerRun% net %1 PNRPsvc
:: Peer Networking Grouping
::  >> Enables multi-party communication using Peer-to-Peer Grouping. If disabled, some applications, such as HomeGroup, may not function.
%PowerRun% sc config p2psvc start= %2
%PowerRun% net %1 p2psvc
:: Peer Networking Identity Manager
::  >> Provides identity services for the Peer Name Resolution Protocol (PNRP) and Peer-to-Peer Grouping services. If disabled, the Peer Name Resolution Protocol (PNRP) and Peer-to-Peer Grouping services may not function, and some applications, such as HomeGroup and Remote Assistance, may not function correctly.
%PowerRun% sc config p2pimsvc start= %2
%PowerRun% net %1 p2pimsvc
:: UPnP Device Host
::  >> Allows UPnP devices to be hosted on your computer. If this service is stopped, any hosted UPnP devices will stop functioning and no additional hosted devices can be added. If this service is disabled, any services that explicitly depend on it will fail to start.
%PowerRun% sc config upnphost start= %2
%PowerRun% net %1 upnphost
:: SSDP Discovery
::  >> Discovers networked devices and services that use the SSDP discovery protocol, such as UPnP devices. Also announces SSDP devices and services running on the local computer. If this service is stopped, SSDP-based devices will not be discovered. If this service is disabled, any services that explicitly depend on it will fail to start.
%PowerRun% sc config SSDPSRV start= %2
%PowerRun% net %1 SSDPSRV
:: Remote Desktop Services
::  >> Allows users to connect interactively to a remote computer. Remote Desktop and Remote Desktop Session Host Server depend on this service. To prevent remote use of your computer, clear the checkboxes on the Remote tab of the System properties control panel item.
%PowerRun% sc config TermService start= %2
%PowerRun% net %1 TermService
:: Remote Desktop Services UserMode Port Redirector
:: Allows the redirection of Printers/Drives/Ports for RDP connections.
%PowerRun% sc config UmRdpService start= %2
%PowerRun% net %1 UmRdpService
:: Remote Desktop Configuration
:: Remote Desktop Configuration service (RDCS) is responsible for all Remote Desktop Services and Remote Desktop related configuration and session maintenance activities that require SYSTEM context. These include per-session temporary folders, RD themes, and RD certificates.
%PowerRun% sc config SessionEnv start= %2
%PowerRun% net %1 SessionEnv
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.10.wps
echo [%date% - %time%] ^| Service Management ^| WPS service %3. >> %location%\Logs
echo   %RGB%[96mWPS service %3 ...%RGB%[0m
:: Windows Connect Now
::  >> WCNCSVC hosts the Windows Connect Now Configuration which is Microsoft's Implementation of Wireless Protected Setup (WPS) protocol. This is used to configure Wireless LAN settings for an Access Point (AP) or a Wireless Device. The service is started programmatically as needed.
%PowerRun% sc config wcncsvc start= %2
%PowerRun% net %1 wcncsvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.11.scanner
echo [%date% - %time%] ^| Service Management ^| Scanner service %3. >> %location%\Logs
echo   %RGB%[96mScanner service %3 ...%RGB%[0m
:: Still Image Acquisition Events
::  >> Launches applications associated with still image acquisition events.
%PowerRun% sc config WiaRpc start= %2
%PowerRun% net %1 WiaRpc
:: Windows Image Acquisition (WIA)
::  >> Provides image acquisition services for scanners and cameras.
%PowerRun% sc config StiSvc start= %2
%PowerRun% net %1 StiSvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.12.camera
echo [%date% - %time%] ^| Service Management ^| Camera service %3. >> %location%\Logs
echo   %RGB%[96mCamera service %3 ...%RGB%[0m
:: Windows Camera Frame Server
%PowerRun% sc config FrameServer start= %2
%PowerRun% net %1 FrameServer
:: Windows Camera Frame Server Monitor
%PowerRun% sc config FrameServerMonitor start= %2
%PowerRun% net %1 FrameServerMonitor
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.13.insider
echo [%date% - %time%] ^| Service Management ^| Insider service %3. >> %location%\Logs
echo   %RGB%[96mWindows Insider service %3 ...%RGB%[0m
:: Windows Insider Hizmeti
%PowerRun% sc config wisvc start= %2
%PowerRun% net %1 wisvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.14.biometric
echo [%date% - %time%] ^| Service Management ^| Biometric service %3. >> %location%\Logs
echo   %RGB%[96mWindows Biometric service %3 ...%RGB%[0m
:: Windows Biometric Service
:: The Windows biometric service gives client applications the ability to capture, compare, manipulate, and store biometric data without gaining direct access to any biometric hardware or samples. The service is hosted in a privileged SVCHOST process.
%PowerRun% sc config WbioSrvc start= %2
%PowerRun% net %1 WbioSrvc
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.15.pentouch
echo [%date% - %time%] ^| Service Management ^| Pen and Touch service %3. >> %location%\Logs
echo   %RGB%[96mPen and Touch service %3 ...%RGB%[0m
:: Pen Sevice
%PowerRun% sc config PenService start= %2
%PowerRun% net %1 PenService
:: Touch Keyboard and Handwriting Panel Service
%PowerRun% sc config TabletInputService start= %2
%PowerRun% net %1 TabletInputService
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.16.systemrestore
echo [%date% - %time%] ^| Service Management ^| System Restore service %5. >> %location%\Logs
echo   %RGB%[96mSystem Restore service %5 ...%RGB%[0m
:: Windows Backup
%PowerRun% sc config SDRSVC start= %2
%PowerRun% net %1 SDRSVC
:: Volume Shadow Copy
%PowerRun% sc config VSS start= %2
%PowerRun% net %1 VSS
:: Microsoft Software Shadow Copy Provider
%PowerRun% sc config swprv start= %2
%PowerRun% net %1 swprv
:: Block Level Backup Engine Service
%PowerRun% sc config wbengine start= %2
%PowerRun% net %1 wbengine
:: File History Service
%PowerRun% sc config fhsvc start= %2
%PowerRun% net %1 fhsvc
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /%3 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /f /v "DisableSR" /t REG_DWORD /d %4 > NUL 2>&1
::-------------------------------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : 0 | %5 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : 1 | %5 : disabling
::-------------------------------------------------------------------------------
goto :eof

:serv.17.sysmain
echo [%date% - %time%] ^| Service Management ^| Super Fetch - Sysmain service %3. >> %location%\Logs
echo   %RGB%[96mSuper Fetch - Sysmain service %3 ...%RGB%[0m
%PowerRun% sc config SysMain start= %2
%PowerRun% net %1 SysMain
::-------------------------------------------------------
::  Open = %1 : start | %2 : auto     | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.18.hibernate
echo [%date% - %time%] ^| Service Management ^| Hibernate service %3. >> %location%\Logs
echo   %RGB%[96mHibernate service %3 ...%RGB%[0m
powercfg /hibernate %1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d %2 /f > NUL 2>&1
::-------------------------------------------------------
::  Open = %1 : On  | %2 : 1  | %3 : activating
:: Close = %1 : Off | %2 : 0  | %3 : disabling
::-------------------------------------------------------
goto :eof

:serv.19.location
echo [%date% - %time%] ^| Service Management ^| Location service %7. >> %location%\Logs
echo   %RGB%[96mLocation service %7 ...%RGB%[0m
reg %5 "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" %~6 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "%3" /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowLocation" /t REG_DWORD /d %4 /f > NUL 2>&1
:: Natural Authentication
%PowerRun% sc config NaturalAuthentication start= %2
%PowerRun% net %1 NaturalAuthentication
:: Geolocation Service
%PowerRun% sc config lfsvc start= %2
%PowerRun% net %1 lfsvc
::----------------------------------------------------------------------------------------------------------------------------------------------
::  Open = %1 : start  | %2 : demand    | %3 : Allow |  %4 : 1 | %5 : delete | %6 : /v "DisableLocation" /f                   | %7 : activating
:: Close = %1 : stop   | %2 : disabled  | %3 : Deny  |  %4 : 0 | %5 : add    | %6 : /v "DisableLocation" /t REG_DWORD /d 1 /f | %7 : disabling
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.20.mediaplayer
echo [%date% - %time%] ^| Service Management ^| Windows Media Player %4. >> %location%\Logs
echo   %RGB%[96mWindows Media Player %4 ...%RGB%[0m
Dism /Online /%3-Feature /FeatureName:MediaPlayback /Quiet /NoRestart
:: Windows Media Player Network Sharing Service
%PowerRun% sc config WMPNetworkSvc start= %2
%PowerRun% net %1 WMPNetworkSvc
::---------------------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : ENABLE  | %4 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : DISABLE | %4 : disabling
::---------------------------------------------------------------------
goto :eof

:serv.21.hyperv
echo [%date% - %time%] ^| Service Management ^| Hyper-V hizmeti %4. >> %location%\Logs
echo   %RGB%[96mHyper-V hizmeti %4 ...%RGB%[0m
:: Hyper-V Guest Service Interface
%PowerRun% sc config HvHost start= %1
:: Hyper-V Volume Shadow Copy Requestor
%PowerRun% sc config vmicvss start= %1
:: Hyper-V Guest Service Interface
%PowerRun% sc config vmicguestinterface start= %1
:: Hyper-V Guest Shutdown Service
%PowerRun% sc config vmicshutdown start= %1
:: Hyper-V PowerShell Direct Service
%PowerRun% sc config vmicvmsession start= %1
:: Hyper-V Heartbeat Service
%PowerRun% sc config vmicheartbeat start= %1
:: Hyper-V Remote Desktop Virtualization Service
%PowerRun% sc config vmicrdv start= %1
:: Hyper-V Data Exchange Service
%PowerRun% sc config vmickvpexchange start= %1
:: Hyper-V Time Synchronization Service
%PowerRun% sc config vmictimesync start= %1
:: Hyper-V Virtual Machine Management
%PowerRun% sc config vmms start= %1
:: Hyper-V Host Compute Service
%PowerRun% sc config vmcompute start= %1
%~3 /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-All /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Tools-All /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Services /Quiet /NoRestart
DISM /Online /%2-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients /Quiet /NoRestart
::------------------------------------------
::  Open = %1 : demand    | %2 : Enable  | %~3 : For | %4 : activating   
:: Close = %1 : disabled  | %2 : Disable | %~3 : ::  | %4 : disabling
::------------------------------------------
goto :eof

:serv.22.xbox
echo [%date% - %time%] ^| Service Management ^| Xbox service %7. >> %location%\Logs
echo   %RGB%[96mXbox service %7 ...%RGB%[0m
:: GameDVR and Broadcast User Service
%PowerRun% sc config BcastDVRUserService start= %2
%PowerRun% net %1 BcastDVRUserService
:: Xbox Accessory Management Service
%PowerRun% sc config XboxGipSvc start= %2
%PowerRun% net %1 XboxGipSvc
:: Xbox Live Networking Service
%PowerRun% sc config XboxNetApiSvc start= %2
%PowerRun% net %1 XboxNetApiSvc
:: Xbox Live Auth Manager 
%PowerRun% sc config XblAuthManager start= %2
%PowerRun% net %1 XblAuthManager
:: Xbox Live Game Save
%PowerRun% sc config XblGameSave start= %2
%PowerRun% net %1 XblGameSave
:: Delivery Optimization
%PowerRun% sc config DoSvc start= %2
%PowerRun% net %1 DoSvc
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_SZ /d "%3" /f > NUL 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_SZ /d "%4" /f > NUL 2>&1
reg %5 "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" %6 > NUL 2>&1
::----------------------------------------------------------------------------------------------------------------------------------------------
::  Open = %1 : start  | %2 : demand    | %3 : 1  |  %4 : 0 | %5 : delete | %6 : /v "AllowGameDVR" /f                     | %7 : activating
:: Close = %1 : stop   | %2 : disabled  | %3 : 0  |  %4 : 2 | %5 : add    | %6 : /v "AllowGameDVR" /t REG_DWORD /d 0 /f   | %7 : disabling
::----------------------------------------------------------------------------------------------------------------------------------------------
goto :eof

:serv.23.bitlocker
echo [%date% - %time%] ^| Service Management ^| Bitlocker service %3. >> %location%\Logs
echo   %RGB%[96mBitlocker service %3 ...%RGB%[0m
:: BitLocker Drive Encryption Service
%PowerRun% sc config BDESVC start= %2
%PowerRun% net %1 BDESVC
::-------------------------------------------------------
::  Open = %1 : start | %2 : demand   | %3 : activating
:: Close = %1 : stop  | %2 : disabled | %3 : disabling
::------------------------------------------------------
goto :eof

:serv.24.mixedreality
echo [%date% - %time%] ^| Service Management ^| Mixed Reality service %2. >> %location%\Logs
echo   %RGB%[96mMixed Reality service %2 ...%RGB%[0m
:: Spatial Data Service
%PowerRun% sc config SharedRealitySvc start= %1
:: Volumetric Audio Compositor Service
%PowerRun% sc config VacSvc start= %1
:: Windows Perception Simulation Service
%PowerRun% sc config perceptionsimulation start= %1
:: Windows Perception Service
%PowerRun% sc config spectrum start= %1
::Windows Mixed Reality OpenXR Service
%PowerRun% sc config MixedRealityOpenXRSvc start= %1
::------------------------------------------
::  Open = %1 : demand    | %2 : activating   
:: Close = %1 : disabled  | %2 : disabling
::------------------------------------------
goto :eof

:stop
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:wificrackarchley
mode con cols=65 lines=45
title Wireless Password Cracker / (Archley)
echo [%date% - %time%] ^| WifiCrack ^| Wifi Crack run. >> %location%\Logs
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                   Wireless Password Cracker                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          (Archley)                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
FOR /F "tokens=5" %%a in ('netsh wlan show profil ^| find "All"') do (
	FOR /F "tokens=4" %%b in ('netsh wlan show profile "%%a" key^=clear ^| find "Content"') do (
		echo    %ESC%[36m%%a :%ESC%%ESC%[33m %%b%ESC%[0m
		echo   
		)
	)
)
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo %ESC%[32m  Press any key to return to the menu%ESC%[0m
pause > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:takeownership
cls
mode con cols=55 lines=15
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m         Right Click Take Ownership Menu           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Add%RGB%[0m                                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Remove%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %ESC%[92m  Choice : %ESC%[0m
	if %value%==1 (title Take Ownership adding... / OgnitorenKs
				   echo [%date% - %time%] ^| takeownership ^| Right Click Take Ownership added. >> %location%\Logs
				   reg add "HKCR\*\shell\runas" /f /ve /t REG_SZ /d "Take Ownership" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" && ica \"%%^1\" /grant administrators:F" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /ve /t REG_SZ /d "Take Ownership" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "Icon" /t REG_SZ /d "imageres.dll,73" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d "" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   reg add "HKCR\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%^1\" /r /d y && ica \"%%^1\" /grant administrators:F /t" > NUL 2>&1
				   echo %ESC%[92m Process completed%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==2 (title Take Ownership removed... / OgnitorenKs
				   echo [%date% - %time%] ^| takeownership ^| Right Click Take Ownership removed. >> %location%\Logs
				   reg delete "HKCR\*\shell\runas" /f > NUL 2>&1
				   reg delete "HKCR\Directory\shell\runas" /f > NUL 2>&1
				   echo %ESC%[92m Process completed%ESC%[0m
				   timeout /t 1 /nobreak > NUL
				   goto :eof)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	goto WinSahiplik

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:WinCompactOS
cls
mode con cols=55 lines=15
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           CompactOS (Windows Compression)         %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[Enable]%RGB%[0m                         %ESC%[0mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m CompactOS %RGB%%RGB%[90m[Disable]%RGB%[0m                        %ESC%[0mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice :%RGB%[0m
	if %value%==1 (Call :CompactOn)
	if %value%==2 (Call :CompactOff)
	if %value%==x GOTO kontroll
	if %value%==X GOTO kontroll
) else
	GOTO WinCompactOS

:CompactOn
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS=Enable. >> %location%\Logs
echo %RGB%[96m CompactOS activating...%RGB%[0m
Compact.exe /CompactOS:always
goto :eof

:CompactOff
echo 
echo [%date% - %time%] ^| CompactOS ^| CompactOS=Disable. >> %location%\Logs
echo %RGB%[96m CompactOS disabling...%RGB%[0m
Compact.exe /CompactOS:never
goto :eof
:stop

:gpedit
Call :Logs
echo [%date% - %time%] ^| Gpedit ^| Gpedit.msc added. >> %location%\Logs
echo %RGB%[96m Gpedit.msc activating...%RGB%[0m
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
FOR /f %%a IN ('"dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum"') DO (DISM /Online /NoRestart /Add-Package:"%SystemRoot%\servicing\Packages\%%a" > NUL 2>&1)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:Win11SettingsMenu
cls
Call :location
call :PowerRun
mode con cols=55 lines=17
title Windows 11 Customize / OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Windows 11 Customize                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Taskbar Size %RGB%%RGB%[90m[Small/Big]%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Taskbar Location %RGB%%RGB%[90m[Bottom/Upper]%RGB%[0m             %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Taskbar Icon Position %RGB%%RGB%[90m[Left/Middle]%RGB%[0m         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Right-Click Menu %RGB%%RGB%[90m[Old/New]%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Right-Click Terminal %RGB%%RGB%[90m[Add/Remove]%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Right-Click Take Ownership %RGB%%RGB%[90m[Add/Removed]%RGB%[0m    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m CompactOS (Compression) %RGB%%RGB%[90m[Enable/Disable]%RGB%[0m    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m Gpedit.msc (Local Group policy)%RGB%%RGB%[90m[Add]%RGB%[0m        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==1 (Call :Win11MenuSize)
	if %value%==2 (Call :Win11MenuLocation)
	if %value%==3 (Call :Win11MenuIconPosition)
	if %value%==4 (Call :Win11RC)
	if %value%==5 (Call :Win11RCTerminal)
	if %value%==6 (Call :takeownership)
	if %value%==7 (Call :WinCompactOS)
	if %value%==8 (Call :gpedit)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Win11SettingsMenu

	
:Win11MenuSize
cls
mode con cols=55 lines=15
title Taskbar Size Change / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Taskbar Size Setting                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Small %RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Default %RGB%[0m                                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Big %RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuSize ^| Taskbar Size "%value%" changed. >> %location%\Logs	
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarSi" /t REG_DWORD /d %value%
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11MenuLocation
cls
mode con cols=55 lines=15
title Taskbar Location / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Taskbar Location Setting             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Bottom%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Upper%RGB%[0m                                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==x goto win11settingsmenu
	if %value%==X goto win11settingsmenu

echo [%date% - %time%] ^| Win11MenuLocation ^| Taskbar Location "%value%" changed. >> %location%\Logs
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3" /v "Settings" /t REG_BINARY /d "30000000feffffff7af400000%value%0000003000000030000000000000000804000080070000380400006000000001000000" /f
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof


:Win11MenuIconPosition
cls
mode con cols=55 lines=15
title Taskbar Icon Location / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Taskbar Icon Location Setting           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Left%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Middle%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu

echo [%date% - %time%] ^| Win11MenuIconPosition ^| Taskbar Icon Position "%value%" changed. >> %location%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAl" /t REG_DWORD /d %value%
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win11RC
cls
mode con cols=55 lines=15
title Right-Click Menu / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Right-Click Menu Setting             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Old%RGB%[0m                                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m New%RGB%[0m                                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 Right-Click Menu old. >> %location%\Logs
				   reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&taskkill /f /im explorer.exe&start explorer.exe&goto :eof)
	if %value%==2 (echo [%date% - %time%] ^| Win11RightClick ^| Windows 11 Right-Click Menu new.>> %location%\Logs
				   reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f&goto :eof)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu	

:Win11RCTerminal
cls
mode con cols=55 lines=15
title Right-Click Terminal / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Right-Click Terminal Setting            %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [Removed]%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Terminal%RGB%%RGB%[90m [Add]%RGB%[0m                              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m Choice : %RGB%[0m
	if %value%==1 (echo [%date% - %time%] ^| Win11RCTerminal ^| Windows 11 Right-Click Terminal removed. >> %location%\Logs
				   reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f&taskkill /f /im "explorer.exe"&start explorer.exe&goto :eof)
	if %value%==2 (echo [%date% - %time%] ^| Win11RCTerminal ^| Windows 11 Right-Click Terminal eklendi. >> %location%\Logs
				   reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /f&goto :eof)
	if %value%==x goto Win11SettingsMenu
	if %value%==X goto Win11SettingsMenu
) else
	goto Win11SettingsMenu
:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:Win10SettingsMenu
cls
mode con cols=55 lines=17
title Windows 10 Customize / OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m               Windows 10 Customize                %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Taskbar Notification area icons%RGB%%RGB%[90m [Show/Hide]%RGB%[0m %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Notification area%RGB%%RGB%[90m [Show/Hide]%RGB%[0m               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Take Ownership%RGB%%RGB%[90m [Add/Removed]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m Taskbar Weather%RGB%%RGB%[90m [Show/Hide]%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m Microsoft Store%RGB%%RGB%[90m [ReInstall/Remove]%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m CompactOS (Compression)%RGB%%RGB%[90m [Enable/Disable]%RGB%[0m    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Gpedit.msc (Local Group policy)%RGB%%RGB%[90m [Add]%RGB%[0m       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 8.%ESC%%RGB%[33m Icon Change%RGB%%RGB%[90m [Old/New]%RGB%[0m                       %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Main Menu%ESC%[0m                                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==1 (Call :Win10NotificationIco)
	if %value%==2 (Call :Win10Notification)
	if %value%==3 (Call :takeownership)
	if %value%==4 (Call :Win10Weather)
	if %value%==5 (Call :Win10StoreDelIns)
	if %value%==6 (Call :WinCompactOS)
	if %value%==7 (Call :gpedit)
	if %value%==8 GOTO icochangemenu
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto Win10SettingsMenu
	
:: 
	
:Win10NotificationIco
cls
mode con cols=55 lines=15
title Taskbar Notification area icons... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m         Taskbar Notification area icons           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Show all%RGB%%RGB%[90m [Enable]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Hide all%RGB%%RGB%[90m [Disable]%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10NotificationIco ^| Windows 10 Taskbar Notification area icons "%value%" changed. >> %location%\Logs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /f /v "EnableAutoTray" /t REG_DWORD /d %value% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10Notification
cls
mode con cols=55 lines=15
title Notification Area / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m             Notification Area Setting             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Enable%RGB%[0m                                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Disable%RGB%[0m                                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m  Choice : %RGB%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu

echo [%date% - %time%] ^| Win10Bildirim ^| Notification Area "%value%" changed. >> %location%\Logs
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %value% > NUL 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v "DisableNotificationCenter" /t REG_DWORD /d %value% > NUL 2>&1
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:: 

:Win10Weather
cls
mode con cols=55 lines=15
title Taskbar Weather... / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m           Taskbar Weather Setting                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 0.%ESC%%RGB%[33m Hide%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Show%RGB%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value= %RGB%[92m  Choice : %RGB%[0m
	if %value%==x goto Win10SettingsMenu
	if %value%==X goto Win10SettingsMenu
	
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d %value% /f 
Call :ExplorerReset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:Win10StoreDelIns
cls
mode con cols=55 lines=15
title Microsoft Store Management / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Microsoft Store Management           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Microsoft Store%RGB%%RGB%[90m [Remove]%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Microsoft Store%RGB%%RGB%[90m [Re-Install]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==1 (Call :Win10StoreDel)
	if %value%==2 (Call :Win10StoreIns)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto Win10.Store.Del.Ins

:Win10StoreDel
cls
mode con cols=109 lines=35
title Microsoft Store remove... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Microsoft Store removed. >> %location%\Logs
echo %ESC%[92m Microsoft Store removing...%ESC%[0m

powershell -command "Get-AppXPackage | Remove-AppxPackage"

echo %ESC%[92m Microsoft Store services stopping...%ESC%[0m
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution" > NUL 2>&1
net start wuauserv > NUL 2>&1
:: AppX Deployment Service
%PowerRun% sc config AppXSvc start= disabled
%PowerRun% net stop AppXSvc
:: Capability Access Manager Service
%PowerRun% sc config camsvc start= disabled
%PowerRun% net stop camsvc
:: Storage Service
%PowerRun% sc config StorSvc start= disabled
%PowerRun% net stop StorSvc
:: Client License Service
%PowerRun% sc config ClipSVC start= disabled
%PowerRun% net stop ClipSVC
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak
goto :eof

:Win10StoreIns
cls
mode con cols=109 lines=35
title Microsoft Store reinstalling... / OgnitorenKs
echo [%date% - %time%] ^| Win10StoreDelIns ^| Windows 10 Microsoft Store reinstalled. >> %location%\Logs
echo %ESC%[92m Microsoft Store installing...%ESC%[0m
powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $Env:%windir%\SystemApps\*\AppxManifest.xml"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "" /t REG_SZ /d /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "DisableSubscription" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "InactivityShutdownDelay" /t REG_DWORD /d 0x0000012c /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "RefreshRequired" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%SystemRoot%\System32\ClipSVC.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 0 /f

echo %ESC%[92m Microsoft Store services starting...%ESC%[0m
:: AppX Deployment Service
%PowerRun% sc config AppXSvc start= demand
%PowerRun% net start AppXSvc
:: Capability Access Manager Service
%PowerRun% sc config camsvc start= demand
%PowerRun% net start camsvc
:: Cryptographic Services
%PowerRun% sc config cryptsvc start= auto
%PowerRun% net start cryptsvc
:: Windows Update
%PowerRun% sc config wuauserv start= demand
%PowerRun% net start wuauserv
:: Storage Service
%PowerRun% sc config StorSvc start= demand
%PowerRun% net start StorSvc
:: Background Intelligent Transfer Service
%PowerRun% sc config bits start= auto
%PowerRun% net start bits
:: Windows Modules Installer
%PowerRun% sc config trustedinstaller start= demand
%PowerRun% net start trustedinstaller
:: Client License Service
%PowerRun% sc config ClipSVC start= demand
%PowerRun% net start ClipSVC
net stop wuauserv > NUL 2>&1
RD /S /Q "%windir%\SoftwareDistribution"
net start wuauserv > NUL 2>&1

echo %ESC%[92m DLL files checked...%ESC%[0m
regsvr32  softpub.dll /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  dssenh.dll /s&regsvr32  rsaenh.dll /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  slbcsp.dll /s&regsvr32  mssip32.dll /s&regsvr32  cryptdlg.dll /s&regsvr32  msxml3.dll /s&regsvr32  comcat.dll /s&Regsvr32  Msxml.dll /s&Regsvr32  Msxml2.dll /s&regsvr32  mshtml.dll /s&regsvr32  shdocvw.dll /s&regsvr32  browseui.dll /s&regsvr32  msjava.dll /s&regsvr32  shdoc401.dll /s&regsvr32  cdm.dll /s&regsvr32  shdoc401.dll /i /s&regsvr32  gpkcsp.dll /s&regsvr32  sccbase.dll /s&regsvr32  asctrls.ocx /s&regsvr32  wintrust.dll /s&regsvr32  initpki.dll /s&regsvr32  softpub.dll /s&regsvr32  oleaut32.dll /s&regsvr32  shdocvw.dll /I /s&regsvr32  Shell32.dll /s&regsvr32  browseui.dll /s&regsvr32  browseui.dll /I /s&regsvr32  msrating.dll /s&regsvr32  mlang.dll /s&regsvr32  hlink.dll /s&regsvr32  mshtmled.dll /s&regsvr32  urlmon.dll /s&regsvr32  urlmon.dll /i /s&regsvr32  plugin.ocx /s&regsvr32  sendmail.dll /s&regsvr32  scrobj.dll /s&regsvr32  mmefxe.ocx /s&regsvr32  corpol.dll /s&regsvr32  jscript.dll /s&regsvr32  imgutil.dll /s&regsvr32  thumbvw.dll /s&regsvr32  cryptext.dll /s&regsvr32  rsabase.dll /s&regsvr32  inseng.dll /s&regsvr32  iesetup.dll /i /s&regsvr32  actxprxy.dll /s&regsvr32  dispex.dll /s&regsvr32  occache.dll /s&regsvr32  occache.dll /i /s&regsvr32  iepeers.dll /s&regsvr32  cdfview.dll /s&regsvr32  webcheck.dll /s&regsvr32  mobsync.dll /s&regsvr32  pngfilt.dll /s&regsvr32  licmgr10.dll /s
regsvr32  icmfilter.dll /s&regsvr32  hhctrl.ocx /s&regsvr32  inetcfg.dll /s&regsvr32  tdc.ocx /s&regsvr32  MSR2C.DLL /s&regsvr32  msident.dll /s&regsvr32  msieftp.dll /s&regsvr32  xmsconf.ocx /s&regsvr32  ils.dll /s&regsvr32  msoeacct.dll /s&regsvr32  inetcomm.dll /s&regsvr32  msdxm.ocx /s&regsvr32  dxmasf.dll /s&regsvr32  l3codecx.ax /s&regsvr32  acelpdec.ax /s&regsvr32  mpg4ds32.ax /s&regsvr32  voxmsdec.ax /s&regsvr32  danim.dll /s&regsvr32  Daxctle.ocx /s&regsvr32  lmrt.dll /s&regsvr32  datime.dll /s&regsvr32  dxtrans.dll /s&regsvr32  dxtmsft.dll /s&regsvr32  WEBPOST.DLL /s&regsvr32  WPWIZDLL.DLL /s&regsvr32  POSTWPP.DLL /s&regsvr32  CRSWPP.DLL /s&regsvr32  FTPWPP.DLL /s&regsvr32  FPWPP.DLL /s&regsvr32  WUAPI.DLL /s&regsvr32  wups2.dll /S&regsvr32  WUAUENG.DLL /s&regsvr32  ATL.DLL /s&regsvr32  WUCLTUI.DLL /s&regsvr32  WUPS.DLL /s&regsvr32  WUWEB.DLL /s&regsvr32  wshom.ocx /s&regsvr32  wshext.dll /s&regsvr32  vbscript.dll /s&regsvr32  scrrun.dll mstinit.exe /setup /s&regsvr32  msnsspc.dll /SspcCreateSspiReg /s&regsvr32  msapsspc.dll /SspcCreateSspiReg /s
wsreset
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak
goto :eof

:stop
:icochangemenu
cls
mode con cols=55 lines=15
title Icon Management / OgnitorenKs
echo 
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                  Icon Management                  %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Old ICO%RGB%%RGB%[90m [Install]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m New ICO%RGB%%RGB%[90m [Install]%RGB%[0m                           %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Menu%ESC%[0m                                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  Choice : %RGB%[0m
	if %value%==1 (Call :icochange Oldico)
	if %value%==2 (Call :icochange Newico)
	if %value%==x GOTO Win10SettingsMenu
	if %value%==X GOTO Win10SettingsMenu
) else
	goto icochange

:icochange
cls
Call :PowerRun
Call :location
echo [%date% - %time%] ^| icochangemenu ^| "%~1" ico installed. >> %location%\Logs
dir /b %location%\Files\Oldico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :oldicodown)
title "%~1" ICO install / OgnitorenKs
taskkill /f /im "explorer.exe" > NUL 2>&1
echo %ESC%%ESC%[1;97m%ESC%%ESC%[42m %1 icon installing...%ESC%[0m
%PowerRun% Powershell -command "Expand-Archive -Force '%location%\Files\%~1.zip' 'C:\'"
timeout /t 20 /nobreak > NUL
DEL /F /Q /A %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.* > NUL 2>&1
DEL /F /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db > NUL 2>&1
"%location%\Files\ReIconCache.exe"
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto Win10SettingsMenu

:oldicodown
echo %ESC%[96m ICO files downloading...%ESC%[0m
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m                No Internet connection              %ESC%[0m
						echo  %ESC%[1;97m%ESC%%ESC%[41m            Press any key after connecting          %ESC%[0m
						Call :Logss "oldicodown" "ERROR! No Internet connection."
						pause > NUL
						goto oldicodown)

echo [%date% - %time%] ^| oldicodown ^| ICO files download. >> %location%\Logs
%location%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=18kwIyPhIpk0wS-LbwMhsi4ocXJk0R-rG" -O %location%\Files\Oldico.zip
%location%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1D6TR20HEo6diHH_g53GxPL5Tpdg3cT2m" -O %location%\Files\Newico.zip
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:UserAccountManagement
cls
mode con cols=55 lines=17
title User Account Management \ OgnitorenKs
echo 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              User Account Management              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 1.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [Enable]%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 2.%ESC%%RGB%[33m Administrator%RGB%%RGB%[90m [Disable]%RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 3.%ESC%%RGB%[33m Add user to Admin group%RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 4.%ESC%%RGB%[33m User%RGB%%RGB%[90m [Add]%RGB%[0m                                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 5.%ESC%%RGB%[33m User%RGB%%RGB%[90m [Delete]%RGB%[0m                               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 6.%ESC%%RGB%[33m Forgot password - Change%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m 7.%ESC%%RGB%[33m Show Current Users%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m   %ESC%[32m X.%ESC%%ESC%[36m Main Menu%ESC%[0m                                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m Choice : %RGB%[0m
	if %value%==1 GOTO Tweak1AdminEnable
	if %value%==2 GOTO Tweak2AdminDisable
	if %value%==3 GOTO Tweak3GroupAdmin
	if %value%==4 GOTO Tweak4NewUsers
	if %value%==5 GOTO Tweak5DelUsers
	if %value%==6 GOTO Tweak6UsersKey
	if %value%==7 (start cmd /k Powershell -command "Get-LocalUser"&goto UserAccountManagement)
	if %value%==x GOTO menu
	if %value%==X GOTO menu
) else
	goto UserAccountManagement

:Tweak1AdminEnable
cls
mode con cols=55 lines=20
title Administrator Enable \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m            Administrator activating             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| UserAccountManagement ^| Administrator activated. >> %location%\Logs
net user administrator /active:yes
net user administrator *
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 1 /nobreak > NUL
goto UserAccountManagement

:Tweak2AdminDisable
cls
mode con cols=55 lines=20
title Administrator Disable \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m            Administrator disabling              %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| UserAccountManagement ^| Administrator disabled. >> %location%\Logs
net user Administrator /active:no
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 1 /nobreak > NUL
goto UserAccountManagement

:Tweak3GroupAdmin
cls
mode con cols=55 lines=20
title Add user to Admin group \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m             Add User to Admin Group             %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  User Name : %RGB%[0m  
	if %value%==x GOTO UserAccountManagement
	if %value%==X GOTO UserAccountManagement
echo [%date% - %time%] ^| UserAccountManagement ^| Admin Group %value% added. >> %location%\Logs
net localgroup Administrators %value% /add 
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto UserAccountManagement

:Tweak4NewUsers
cls
mode con cols=55 lines=20
title New User Add \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                  New User Add                   %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  User Name : %RGB%[0m
	if %value%==x GOTO UserAccountManagement
	if %value%==X GOTO UserAccountManagement
echo [%date% - %time%] ^| UserAccountManagement ^| New User="%value%" added. >> %location%\Logs
net user %value% * /add

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto UserAccountManagement

:Tweak5DelUsers
cls
mode con cols=55 lines=20
title User Delete \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                   User Delete                   %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  User Name : %RGB%[0m
	if %value%==x GOTO UserAccountManagement
	if %value%==X GOTO UserAccountManagement
echo [%date% - %time%] ^| UserAccountManagement ^| User="%value%" deleted. >> %location%\Logs
net user %value% /delete

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto UserAccountManagement

:Tweak6UsersKey
cls
mode con cols=55 lines=20
title Forgot Password - Change \ OgnitorenKs
echo 
echo   %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m              Forgot Password - Change           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo   %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p value=%RGB%[92m  User Name : %RGB%[0m
	if %value%==x GOTO UserAccountManagement
	if %value%==X GOTO UserAccountManagement
echo [%date% - %time%] ^| UserAccountManagement ^| User "%value%" password changed. >> %location%\Logs
net user %value% *

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto UserAccountManagement


:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:stop
:UpdateAfter
cls
Call :PowerRun
echo [%date% - %time%] ^| UpdateAfter ^| Uptade After run. >> %location%\Logs
echo %ESC%[92m Cleaning up after update%ESC%[0m
set /p defdel= %ESC%[92m Defender removed? [Y/N] : %ESC%[0m:
	if %defdel%==y goto defdel
	if %defdel%==Y goto defdel
	if %defdel%==N goto servicesfix
	if %defdel%==n goto servicesfix
:defdel
%PowerRun% DEL /F /Q /A "%windir%\System32\CompatTelRunner.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\MsSecFlt.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdBoot.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdFilter.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\drivers\WdNisDrv.sys"
%PowerRun% DEL /F /Q /A "%windir%\System32\smartscreen.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthhost.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthservice.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\securityhealthsystray.exe"
%PowerRun% DEL /F /Q /A "%windir%\System32\SgrmBroker.exe"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Defender"
%PowerRun% DEL /F /Q /A "%programfiles%\Windows Security"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Security"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender"
%PowerRun% DEL /F /Q /A "%programfiles(x86)%\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Security Health"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender Advanced Threat Protection"
%PowerRun% DEL /F /Q /A "%programdata%\Microsoft\Windows Defender"
%PowerRun% DEL /F /Q /A "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy"
echo %ESC%[92m Defender services shutting down.%ESC%[0m
%PowerRun% net stop SecurityHealthService
%PowerRun% sc delete SecurityHealthService
%PowerRun% net stop Sense
%PowerRun% sc delete Sense
%PowerRun% net stop SgrmBroker
%PowerRun% sc delete SgrmBroker
%PowerRun% net stop WdNisSvc
%PowerRun% sc delete WdNisSvc
%PowerRun% net stop WinDefend
%PowerRun% sc delete WinDefend 
%PowerRun% net stop wscsvc
%PowerRun% sc delete wscsvc
:: Defender
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows Security Health\State" /v "AccountProtection_MicrosoftAccount_Disconnected" /t REG_DWORD /d "0" /f >nul 2>&1
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "1" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d "0" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtectionSource" /t REG_DWORD /d "2" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Signature Updates" /v "FirstAuGracePeriod" /t REG_DWORD /d "0" /f
%PowerRun% Reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "DisablePrivacyMode" /t REG_DWORD /d "1" /f
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /t REG_BINARY /d "030000000000000000000000" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v "HideSystray" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "RandomizeScheduleTaskTimes" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" /v "DisableAutoExclusions" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "LocalSettingOverridePurgeItemsAfterDelay" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Quarantine" /v "PurgeItemsAfterDelay" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleDay" /t REG_DWORD /d "8" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "AdditionalActionTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "CriticalFailureTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d 1 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "NonCriticalTimeOut" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "AvgCPULoadFactor" /t REG_DWORD /d "10" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableArchiveScanning" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupFullScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupQuickScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRemovableDriveScanning" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableRestorePoint" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningMappedNetworkDrivesForFullScan" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningNetworkFiles" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "PurgeItemsAfterDelay" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanOnlyIfIdle" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScanParameters" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleDay" /t REG_DWORD /d 8 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableUpdateOnStartupWithoutEngine" /t REG_DWORD /d 1 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleDay" /t REG_DWORD /d 8 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleTime" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureUpdateCatchupInterval" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SpyNet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "LocalSettingOverrideSpynetReporting" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReportingLocation" /t REG_MULTI_SZ /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f >nul 2>&1
timeout /t 2 /nobreak > NUL
:: SmartScreen
::for /f "tokens=* USEBACKQ" %i in (`wmic.exe useraccount where "name="%username%"" get sid ^| findstr "S-"`) do set currentusername=%i
::set currentusername=%currentusername:~0,-3%
For /f "tokens=2" %%a in ('Powershell -command "Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property Name,SID" ^| Find "%username%"') do set currentusername=%%a
Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKU\%currentusername%\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKU\%currentusername%\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows Security Health\State" /v "AppAndBrowser_StoreAppsSmartScreenOff" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d 0 /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f >nul 2>&1
Reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /f /v "ContentEvaluation" /t REG_DWORD /d 0 > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /DISABLE > NUL 2>&1
:servicesfix 
echo %ESC%[92m Fixing services...%ESC%[0m
:: Smart Card
%PowerRun% sc config SCardSvr start= disabled
%PowerRun% net stop SCardSvr
:: Smart Card Device Enumeration Service
%PowerRun% sc config ScDeviceEnum start= disabled
%PowerRun% net stop ScDeviceEnum
:: Smart Card Removal Policy
%PowerRun% sc config SCPolicySvc start= disabled
%PowerRun% net stop SCPolicySvc
:: Certificate Propagation
%PowerRun% sc config CertPropSvc start= disabled
%PowerRun% net stop CertPropSvc
:: AllJoyn Router Service
%PowerRun% sc config AJRouter start= disabled
%PowerRun% net stop AJRouter
:: BrancCache
%PowerRun% sc config PeerDistSvc start= disabled
%PowerRun% net stop PeerDistSvc
:: Geolocation Service
::%PowerRun% sc config Ifsvc start= disabled
::%PowerRun% net stop Ifsvc
:: Wallet Service
%PowerRun% sc config WalletService start= disabled
%PowerRun% net stop WalletService
:: Distributed Link Tracking Client
%PowerRun% sc config TrkWks start= disabled
%PowerRun% net stop TrkWks
:: Connected user experiences and Telemetry 
%PowerRun% net stop DiagTrack
%PowerRun% sc delete DiagTrack
%PowerRun% net stop dmwappushservice
%PowerRun% sc delete dmwappushservice
%PowerRun% net stop diagnosticshub.standartcollector.service
%PowerRun% sc delete diagnosticshub.standartcollector.service
%PowerRun% net stop diagsvc
%PowerRun% sc delete diagsvc
:: File History Service
%PowerRun% sc config fhsvc start= disabled
%PowerRun% net stop fhsvc
:: Parental Controls
%PowerRun% sc config WpcMonSvc start= disabled
%PowerRun% net stop WpcMonSvc
:: Fax
%PowerRun% sc config fax start= disabled
%PowerRun% net stop fax
:: Contact Data 
%PowerRun% sc config PimIndexMaintenanceSvc start= disabled
%PowerRun% net stop PimIndexMaintenanceSvc
:: Enterprise App Management Service
%PowerRun% sc config EntAppSvc start= disabled
%PowerRun% net stop EntAppSvc
:: Edge update service
%PowerRun% net stop edgeupdate
%PowerRun% net stop edgeupdatem
%PowerRun% sc config edgeupdate start= disabled
%PowerRun% sc config edgeupdatem start= disabled
:: Retail Demo Service
%PowerRun% sc config RetailDemo start= disabled
%PowerRun% net stop RetailDemo
:: Program Compatibility Assistant Service
%PowerRun% sc config PcaSvc start= disabled
%PowerRun% net stop PcaSvc
:: Diagnostic Policy Service
%PowerRun% sc config DPS start= disabled
%PowerRun% net stop DPS
:: Mixed Reality
%PowerRun% sc config SharedRealitySvc start= disabled
%PowerRun% net stop SharedRealitySvc
%PowerRun% sc config VacSvc start= disabled
%PowerRun% net stop VacSvc
%PowerRun% sc config perceptionsimulation start= disabled
%PowerRun% net stop perceptionsimulation
%PowerRun% sc config spectrum start= disabled
%PowerRun% net stop spectrum
%PowerRun% net stop MixedRealityOpenXRSvc
%PowerRun% sc config MixedRealityOpenXRSvc start= disabled
:: Windows Error Reporting Service
%PowerRun% sc config WerSvc start= disabled
%PowerRun% net stop WerSvc
:: Windows Search
%PowerRun% net stop WSearch
%PowerRun% sc config WSearch start= disabled
:: Offline Files
%PowerRun% sc config CscService start= disabled
%PowerRun% net stop CscService
:: Payments and NFC/SE Manager
%PowerRun% sc config SEMgrSvc start= disabled
%PowerRun% net stop SEMgrSvc
:: Recommended Troubleshooting Service
%PowerRun% net stop TroubleshootingSvc
%PowerRun% sc config TroubleshootingSvc start= disabled
:: Downloaded Maps Manager
%PowerRun% net stop MapsBroker
%PowerRun% sc config MapsBroker start= disabled
:: Natural Authentication 
%PowerRun% net stop NaturalAuthentication
%PowerRun% sc config NaturalAuthentication start= disabled
:: Still Image Acquisition Events
%PowerRun% net stop WiaRpc
%PowerRun% sc config WiaRpc start= disabled
:: Windows Image Acquisition (WIA) 
%PowerRun% net stop StiSvc
%PowerRun% sc config StiSvc start= disabled
:: Themes
%PowerRun% net stop Themes
%PowerRun% sc config Themes start= disabled
:: Work Folders
%PowerRun% net stop workfolderssvc
%PowerRun% sc config workfolderssvc start= disabled
:: Secondary Logon
%PowerRun% sc config seclogon start= disabled
timeout /t 5 /nobreak > NUL
echo %ESC%[92m Editing regedit records%ESC%[0m
::Other 
:: Disable the computer as soon as possible when the update needs to be installed 
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "IsExpedited" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling post-update reboot notification... 
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f /v "RestartNotificationsAllowed2" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling updates of speech models... 
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "ModelDownloadAllowed" /t REG_DWORD /d 0 > NUL 2>&1
:: Setting Delivery Optimization as BITS service... 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /f /v "DODownloadMode" /t REG_DWORD /d "100" > NUL 2>&1
:: If the drivers are not installed, they are set to be installed... 
:: reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" /f /v "SearchOrderConfig" /t REG_DWORD /d 2 > NUL 2>&1
:: Updates are done manually... 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "NoAutoUpdate" /t REG_DWORD /d "0" > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f /v "AUOptions" /t REG_DWORD /d "2" > NUL 2>&1
:: Explorer is set to "This PC"...
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "LaunchTo" /t REG_DWORD /d 1 > NUL 2>&1
:: Setting to show more details in file copy dialog... 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /f /v "EnthusiastMode" /t REG_DWORD /d 1 > NUL 2>&1
:: Removing the Task View Icon... 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowTaskViewButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Activating file extensions...
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "HideFileExt" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off autoplay... 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /f /v "DisableAutoplay" /t REG_DWORD /d 1 > NUL 2>&1
:: Closing history of recently opened documents... 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoRecentDocsHistory" /t REG_DWORD /d 0 > NUL 2>&1
:: Activating clear history of newly opened documents when shutting down windows... 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 /f > NUL 2>&1
:: Preventing recently used files from being displayed in quick access... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowRecent" /t REG_DWORD /d 0 > NUL 2>&1
:: Removing Favorite folders from Quick Access
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "ShowFrequent" /t REG_DWORD /d 0 > NUL 2>&1
:: Show Taskbar and all icons on all monitors 
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarEnabled" /t REG_DWORD /d 1 > NUL 2>&1
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "MMTaskbarMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Removing the shortcut text...
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f /v "Link" /t REG_BINARY /d "00000000" > NUL 2>&1
:: The search on the internet option is removed from the Open with option... 
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoInternetOpenWith" /t REG_DWORD /d 1 > NUL 2>&1
:: Disable taskbar transparent feature... 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /f /v "EnableTransparency" /t REG_DWORD /d 0 > NUL 2>&1
:: Search section is iconized 
:: reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "SearchboxTaskbarMode" /t REG_DWORD /d 1 > NUL 2>&1

:: Windows Search APP
:: Web search is shutting down. 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Do not search the web or display web results in Search
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 > NUL 2>&1
:: Removing permission to index encrypted files.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off search and Cortana's permission to use location. 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Always use automatic language detection when indexing content and features.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AlwaysUseAutoLangDetection" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana permission is turned off. 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t REG_DWORD /d 0 > NUL 2>&1
:: Closing Cortana Ambient mode. 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaInAmbientMode" /t REG_DWORD /d 0 > NUL 2>&1
:: The search section is prevented from using location.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off safe search mode.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /f /v "SafeSearchMode" /t REG_DWORD /d 0 > NUL 2>&1
:: Turn off display of recent search entries in File Explorer search box 
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 > NUL 2>&1
:: Do not search the web or display web results when searching over metered connections 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 > NUL 2>&1
:: Cloud search is turned off. 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCloudSearch" /t REG_DWORD /d 0 > NUL 2>&1
:: The privacy policy is disabled. 
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Voice activation is turned off. 
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationDefaultOn" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off Voice Activation Above Lock Screen.
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /f /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d 0 > NUL 2>&1
:: Sound activation is turned off. 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /f /v "DisableVoice" /t REG_DWORD /d 1 > NUL 2>&1
:: Turning off Search - Include Bing web results... 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t REG_DWORD /d 0 > NUL 2>&1

:: Privacy 
:: Settings, turning off the app from showing suggested content... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Use Hotspot 2.0 Online sign up to connect shutting down 
reg add "HKLM\SOFTWARE\Microsoft\WlanSvc\AnqpCache" /f /v "OsuRegistrationStatus" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off Allow Windows monitoring application to start to improve startup and search results 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackProgs" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off occasional suggestions in the beginning... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Suggest ways I can complete the setup of my device online is being turned off. 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /f /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: The Programmable Taskbar feature is being disabled.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 > NUL 2>&1
:: Cortana
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Wow6432Node\Microsoft\Windows\Windows Search" /f /v "AllowCortana" /t REG_DWORD /d 0 > NUL 2>&1
:: Cortana - Activity suggestions when switching devices 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /f /v "HistoryViewEnabled" /t REG_DWORD 0 > NUL 2>&1
:: Cortana - Use my signed in devices history 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "DeviceHistoryEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Removing Cortana Button... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ShowCortanaButton" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off Allow experience enhancement program(NVIDIA Driver)... 
reg add "HKCU\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /f /v "OptInOrOutPreference" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off allow experiments 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowExperimentation" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off sending information to Microsoft about how I write to help you improve writing in the future. 
reg add "HKCU\SOFTWARE\Microsoft\Input\TIPC" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Feedback frequency is turned off.
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 > NUL 2>&1
:: Personalize your speaking, writing, and inking input by sending your login data to Microsoft turning off
reg add "HKCU\Software\Microsoft\Personalization\Settings" /f /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts " /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off Location Services... 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /f /v "AllowLocation" /t REG_DWORD /d 0 > NUL 2>&1
:: Websites are prevented from providing locally relevant content by accessing the user language list.
reg add "HKCU\Control Panel\International\User Profile" /f /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 > NUL 2>&1
:: The user is prevented from opening apps from apps on other devices... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartGlass" /f /v "UserAuthPolicy" /t REG_DWORD /d 0 > NUL 2>&1
:: Use page prediction to improve reading, speed up browsing. Blocking Sending Browsing Data to Microsoft... 
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\FlipAhead" /f /v "FPEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling Skype Contacts link... 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE\AppSettings" /f /v "Skype-UserConsentAccepted" /t REG_DWORD /d 0 > NUL 2>&1
:: Automatic installation of sponsored apps (Consumer Experience) 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1
:: Let Microsoft deliver more tailored experiences with relevant tips and recommendations using your diagnostic data. 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Privacy" /f /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling Telemetry... 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0 > NUL 2>&1
:: Preventing apps from running in the background...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "Migrated" /t REG_DWORD /d 4 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /f /v "GlobalUserDisabled" /t REG_DWORD /d 1 > NUL 2>&1
:: Preventing apps from using the user advertising ID for in-app experiences. 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 > NUL 2>&1
:: Contacts collection is being turned off to let Windows and Cortana understand you better. 
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /f /v "HarvestContacts" /t REG_DWORD /d 0 > NUL 2>&1
:: Collect typed text (ink) to let Windows and Cortana understand you better. 
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Collect written text to let Windows and Cortana understand you better. 
reg add "HKCU\Software\Microsoft\InputPersonalization" /f /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 > NUL 2>&1
:: Let Windows collect my activities from this computer (Timeline) 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Turns off Windows' tracking of opened documents to populate jump lists. 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "Start_TrackDocs" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling online speech services...
reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /f /v "AllowInputPersonalization" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off auto-connect to suggested open hotspots. 
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "WiFiSenseOpen" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowAutoConnectToWiFiSenseHotspots" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off automatic connection to access points temporarily to see if paid network services are available. 
reg add "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /f /v "PaidWifi" /t REG_DWORD /d 0 > NUL 2>&1
:: Insightful typing is blocked... 
reg add "HKCU\SOFTWARE\Microsoft\Input\Settings" /f /v "InsightsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling OneDrive Sync... 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 > NUL 2>&1
:: Disabling AutoLogger... 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f > NUL 2>&1
:: Disabling Windows Error Reporting...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f /v "DontSendAdditionalData" /t REG_DWORD /d 1 > NUL 2>&1
:: Disabling Wifi Hotspot Reporting... 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Wifi\AllowWiFiHotSpotReporting" /f /v "value" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling Windows Advertising ID... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f /v "Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling the Customer Experience Program... 
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /f /v "CEIPEnable" /t REG_DWORD /d 0 > NUL 2>&1
:: Removing metadata trace files...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /f > NUL 2>&1
:: Preventing Windows from collecting activities on the computer... 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0 > NUL 2>&1
:: Blocking recently opened items in Jump Lists... 
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /f /v "HideRecentJumplists" /t REG_DWORD /d 1 > NUL 2>&1
:: Turning off feature ad bubble notifications...
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer\NoBalloonFeatureAdvertisements" /f /v "NoBalloonFeatureAdvertisements" /t REG_DWORD /d 1 > NUL 2>&1
:: Hiberboot Disabled 
:: reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /f /v "HiberbootEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling hibernation... 
:: reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /f /v "HibernateEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Shutdown menu - Shutting down Hibernate. 
:: reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /f /v "ShowHibernateOption" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling reserved storage... 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t REG_DWORD /d 0 > NUL 2>&1
:: Prefetch is disabled...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnablePrefetcher" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /f /v "EnableSuperFetch" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling Startup Delay... 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /f /v "StartupDelayInMSec" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling Qos Limit...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /f /v "NonBestEffortLimit" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling the Windows 255 Character Limit...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v "LongPathsEnabled" /t REG_DWORD /d 1 > NUL 2>&1
:: Disabling DiagTrack...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f /v "Start" /t REG_DWORD /d 0 > NUL 2>&1
:: Narrator QuickStart disabled
:: reg add "HKEY_CURRENT_USER\Software\Microsoft\Narrator\QuickStart" /f /v "SkipQuickStart" /t REG_DWORD /d 1 > NUL 2>&1
:: Disabling windows suggestions... 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SoftLandingEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Turning off the Windows welcome experience...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling program compatibility assistant...
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /f /v "DisablePCA" /t REG_DWORD /d 1 > NUL 2>&1
:: Enabling hardware accelerated GPU Scheduling... 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /f /v "HwSchMode" /t REG_DWORD /d 2 > NUL 2>&1
:: Disabling pointer precision... 
:: reg add "HKCU\Control Panel\Mouse" /f /v "MouseSpeed" /t REG_SZ /d 0 > NUL 2>&1
:: If the applications are open during the shutdown process, automatic shutdown and waiting time are reduced. 
reg add "HKCU\Control Panel\Desktop" /f /v "AutoEndTasks" /t REG_SZ /d 1 > NUL 2>&1
:: It shortens the waiting time before pressing the end task option when applications are not responding. 
reg add "HKCU\Control Panel\Desktop" /f /v "HungAppTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: Reduces system wait time for user applications to be closed when shutting down or logging out of the computer. 
reg add "HKCU\Control Panel\Desktop" /f /v "WaitToKillAppTime" /t REG_SZ /d "2000" > NUL 2>&1
:: Reduces system waiting time before unresponsive services are shut down.
reg add "HKCU\Control Panel\Desktop" /f /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" > NUL 2>&1
:: It shortens the waiting time for applications to close when a warning of services to be stopped appears during computer shutdown. 
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /f /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" > NUL 2>&1
:: Menu display reduces waiting time. This way, the menus will come faster when clicked. 
reg add "HKCU\Control Panel\Desktop" /f /v "MenuShowDelay" /t REG_SZ /d "8" > NUL 2>&1
:: Disabling Low Storage warning... 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 > NUL 2>&1
:: Reduces the output time of the comment that appears when you hover your mouse over an object
reg add "HKCU\Control Panel\Mouse" /f /v "MouseHoverTime" /t REG_SZ /d 8 > NUL 2>&1
:: Prevents Windows from wasting time searching for links to shortcuts for programs that don't exist on your computer 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 > NUL 2>&1
:: Prevents Windows from searching disk to fix shortcut connection issue
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveSearch" /t REG_DWORD /d 1 > NUL 2>&1
:: Prevents Windows from using the monitoring feature of the NTFS file system to fix the shortcut link issue 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoResolveTrack" /t REG_DWORD /d 1 > NUL 2>&1
:: Activating Focus Assist 
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours" /f /v "Enable" /t REG_DWORD /d 1 > NUL 2>&1

:: Reinstallation of 3rd Party Market applications is blocked 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "FeatureManagementEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Disabling pre-installed OEM apps...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Pre-installed OEM apps (Minecraft, CandyCrush, Flipboard) are closing. 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Automatically install recommended apps is closing.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-314559Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SubscribedContentEnabled" /t REG_DWORD /d 0 > NUL 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /f /v "SystemPane RecommendionsEnabled" /t REG_DWORD /d 0 > NUL 2>&1
:: Market turns off automatic update.
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f > NUL 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 > NUL 2>&1

Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" 1 & :: Disable sharing of handwritten bug reports  
Call :dword "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" 1 & :: Disable sharing of handwriting data 

bcdedit /deletevalue useplatformclock
bcdedit /set {current} recoveryenabled no
powercfg /h off
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
echo %ESC%[92m Adjustments are made in the task scheduler. %ESC%[0m
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE  > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /DISABLE > NUL 2>&1
schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /DISABLE > NUL 2>&1
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto menu

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PingMeter
Call :location
echo [%date% - %time%] ^| UpdateAfter ^| Ping meter run. >> %location%\Logs
powershell -command "Start-Process '%location%\Extra\PingMeter.bat'"
goto :eof

:SystemInfo
Call :location
echo [%date% - %time%] ^| SystemInfo ^| Sistem info run. >> %location%\Logs
powershell -command "Start-Process '%location%\Extra\System.Info.bat'"
goto :eof

:FoldertoISO
Call :location
echo [%date% - %time%] ^| FoldertoISO ^| Folder to ISO run. >> %location%\Logs
powershell -command "Start-Process '%location%\Files\Folder2Iso\Folder2Iso.exe'"
goto :eof

:AppxManagement
Call :location
echo [%date% - %time%] ^| AppxManagement ^| Appx Manager run. >> %location%\Logs
powershell -command "Start-Process '%location%\Files\WindowsAppBoss.exe'
goto :eof

:WindowsEditing
Call :location
echo [%date% - %time%] ^| WindowsEditing ^| Windows Editing run. >> %location%\Logs
powershell -command "Start-Process '%location%\Extra\Windows.Editing.bat'
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:PowerRun
Call :location
dir /b "%location%\Files\PowerRun.exe" > NUL 2>&1
	if %errorlevel%==1 (echo %ESC%[1;97m%ESC%%ESC%[41m     ERROR! PowerRun.exe file not found. Re-downloading...     %ESC%[0m
						Call :Logss "PowerRun download" "PowerRun.exe file not found. Re-download."
						Call :wgetdesktop "https://docs.google.com/uc?export=download&id=10UikjZGEvcnB9j6gDYmURZhmhruiKbfK" "%location%\Download\PowerRun.zip"
						powershell -command "Expand-Archive -Force '%location%\Download\PowerRun.zip' '%location%\Files"
						timeout /t 2 /nobreak > NUL)
						
set PowerRun=%location%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF

:location
cd /d "%~dp0"
for /f %%a in ('"cd"') do set location=%%a
goto :EOF

:Logs
Call :location
set Logs=%location%\Edit\Logs
goto :eof

:ExplorerReset
taskkill /f /im explorer.exe > NUL 2>&1
powershell -command "Start-Process 'C:\Windows\explorer.exe'"
goto :EOF

:kontroll
cls
FOR /F "tokens=3" %%i in ('FIND "Caption" %Logs%\OS.txt') do SET caption3=%%i
	if %caption3%==11 GOTO Win11settingsmenu
	if %caption3%==10 GOTO Win10settingsmenu
) else
	exit

:: --------------------------------------------------------------------------------------------	
:Logss
echo [%date% - %time%] ^| %~1 ^| %~2 >> %location%\Logs
goto :eof
:: --------------------------------------------------------------------------------------------
:: %~1: Section name | %~2: information
:: --------------------------------------------------------------------------------------------

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: --------------------------------------------------------------------------------------------
:: Thank you to KaanBeyhan (Doggest) who helped with the progress bar.
:: --------------------------------------------------------------------------------------------
:wget
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                   No Internet connection                                   %ESC%[0m
						echo [%date% - %time%] ^| wget ^| ERROR! No Internet connection. Name:%~2 Link:"%~1" Download:%download% >> %location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wget ^| %~2 application download. Link:"%~1" Download:%download% >> %location%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress "%~1" -O %download%\%~2"
"%download%\%~2" %~3
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Download Location  | %~3= Silent setup parameter 
:: ========================================================================================================

:wgetspecial
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                   No Internet connection                                   %ESC%[0m
						echo [%date% - %time%] ^| wgetspecial ^| ERROR! No Internet connection. Name:%~2 Link:"%~1" Download:%download% >> %location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wgetspecial ^| %~2 application download. Link:"%~1" Download:%download% >> %location%\Logs
Files\wget.exe -c -q --no-check-certificate --show-progress %1 -O %download%\%~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Download name 
:: ========================================================================================================

:wgetdesktop
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                   No Internet connection                                   %ESC%[0m
						echo [%date% - %time%] ^| wgetdesktop ^| ERROR! No Internet connection. Name:"%~2" Link:"%~1" >> %location%\Logs
						timeout /t 4 /nobreak > NUL
						goto :eof)
echo [%date% - %time%] ^| wgetdesktop ^| "%~2" application download. Link:"%~1" >> %location%\Logs
Files\wget -c -q --no-check-certificate --show-progress %1 -O %~2
goto :eof

:: ========================================================================================================
:: %1= Link | %~2= Download Location
:: ========================================================================================================

:ZipExport
echo [%date% - %time%] ^| ZipExport ^| %~1 file "%download%\%~n1"  >> %location%\Logs
powershell -command "Expand-Archive -Force '%download%\%~1' '%download%\%~n1'" 
goto :eof

:: ========================================================================================================
:: %~1= File path  | %~n1= File Name
:: ========================================================================================================
 
:netkontrol
ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (echo   %ESC%[1;97m%ESC%%ESC%[41m                                   No Internet connection                                   %ESC%[0m
						echo   %ESC%[1;97m%ESC%%ESC%[41m             Wget.exe could not be downloaded, you will get error on downloads              %ESC%[0m
						echo [%date% - %time%] ^| wgeterror ^| ERROR! Wget.exe could not be downloaded >> %location%\Logs
						timeout /t 5 /nobreak > NUL
						goto :eof)						
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:key
reg add "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:delete
reg delete "%~1" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

:delete2
reg delete "%~1" /v "%~2" /f > NUL 2>&1
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /v "%~2" /f)
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:: ==============================================================================================================================

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:ColorEnd2
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set RGB=%%b
  exit /B 0
)
exit /B 0

