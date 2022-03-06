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
mode con cols=48 lines=35
title Ping Meter / OgnitorenKs

:: Color Start
setlocal
Call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set location=%%a
set location=%location:~0,-6%

:pinginterface
cls
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :pingmeter www.youtube.com
echo                  %ESC%[92mYoutube:%ESC%[0m %ping%
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
Call :pingmeter www.twitter.com
echo                  %ESC%[92mTwitter:%ESC%[0m %ping%
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
Call :pingmeter www.instagram.com
echo                 %ESC%[92mInstagram:%ESC%[0m %ping%
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo                        %ESC%[91mDNS%ESC%[0m
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
Call :pingmeter 1.1.1.1
echo                 %ESC%[92mCloudflare:%ESC%[0m %ping%
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
Call :pingmeter 8.8.8.8
echo                   %ESC%[92mGoogle:%ESC%[0m %ping%
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p pingolc=%ESC%[92m  Ping Meter : %ESC%[0m 
echo [%date% - %time%] ^| PingMeter ^| ping status of address "%pingolc%". Ping="%ping%" >> %location%\Logs
Call :pingmeter %pingolc%
echo                       %ping%  
pause > NUL
goto ping1

:pingmeter
for /f "tokens=9" %%a in ('ping -n 1 %~1') do SET ping=%%a
set ping=%ping:~0,-2% %ESC%[96mMS%ESC%[0m
goto :eof

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0