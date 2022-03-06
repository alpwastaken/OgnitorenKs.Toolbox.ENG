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
title OgnitorenKs Windows Editing

:: Color Start
setlocal
Call :ColorEnd
Call :ColorEnd2

:: ==============================================================================================================================
::  COLOR MAP 
::  -------------
:: %RGB%^[32m > It is used in the information sections of the ISO reading sections. (Green) 
:: %RGB%^[33m > Yellow sections. Yellow sections in the menu 
:: %RGB%^[36m > Blue colored sections. Blue colored sections in the menu 
:: %RGB%^[37m > Used in ISO reading partitions                                                                                                         
:: %RGB%^[90m > Gray sections. Gray sections in the menu (not including frames) 
:: %RGB%^[92m > Variable color (Green). It belongs to the sections where the user is asked to enter a value. 
:: %RGB%^[96m > Second variable or information color (Light Blue) | Information messages reflected in the menu. It belongs to the second variant sections, which will drop on the main screen. 
::
:: %ESC%^[32m > The process (green) is the number color. They are the operation numbers in the menu. 
:: %ESC%^[36m > In the menu, the blue color is the process number color. Also back to the menu is the color setting.
:: %ESC%^[100m > It is the color that fills the background in title sections. 
:: %ESC%^[1;97m > It is the text color inside the fill section in the header. one; makes the section bold. 97m allows to write white color. 
:: %ESC%^[90m > Frames and | Changes the color of the markings. 
:: 
:: ==============================================================================================================================

Call :location2
:: By default the folder path "Toolbox\Edit\Mount" is selected 
set Mount=%location2%\Edit\Mount

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

:WindowsEditMenu
cls
mode con cols=53 lines=40
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                 Windows Editing                 %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 1.%ESC%%RGB%[33m WIM / ESD Reader%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 2.%ESC%%RGB%[33m AIO Windows Maker%RGB%[0m                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 3.%ESC%%RGB%[33m ISO Maker%RGB%[0m                                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 4.%ESC%%RGB%[33m ESD to WIM Convert%RGB%[0m                        %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 5.%ESC%%RGB%[33m WIM Index Delete%RGB%[0m                          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 6.%ESC%%RGB%[33m WIM Mount%RGB%[0m                                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 7.%ESC%%RGB%[33m WIM Remount%RGB%[0m                               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ   %ESC%[32m 8.%ESC%%RGB%[33m WIM Unmount%RGB%[0m                               %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ   %ESC%[36m 9.%ESC%%RGB%[33m Regedit Load%RGB%[0m                              %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[32m 10.%ESC%%RGB%[33m Regedit Unload%RGB%[0m                            %ESC%[90mบ%ESC%[0m 
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[32m 11.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [ONLINE]%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 12.%ESC%%RGB%[33m Dism Update%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                     %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 13.%ESC%%RGB%[33m Appx Installer%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[32m 14.%ESC%%RGB%[33m Appx Installer%RGB%%RGB%[90m [ONLINE]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[32m 15.%ESC%%RGB%[33m Driver Backup%RGB%%RGB%[90m [ONLINE]%RGB%[0m                    %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 16.%ESC%%RGB%[33m Driver Installer%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[32m 17.%ESC%%RGB%[33m Win Setup Edit%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                  %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 18.%ESC%%RGB%[33m Add New Icons%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 19.%ESC%%RGB%[33m Walpaper Change%RGB%%RGB%[90m [OFFLINE]%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 20.%ESC%%RGB%[33m Block telemetry (Hosts)%RGB%%RGB%[90m[OFFLINE]%RGB%[0m          %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 21.%ESC%%RGB%[33m OneDrive Remove %RGB%%RGB%[90m[OFFLINE]%RGB%[0m                 %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 22.%ESC%%RGB%[33m Gpedit.msc add%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                   %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 23.%ESC%%RGB%[33m Hyper-V add%RGB%%RGB%[90m[OFFLINE]%RGB%[0m                      %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 24.%ESC%%RGB%[33m Unattended program-settings maker%RGB%%RGB%[90m[OFFLINE]%RGB%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 25.%ESC%%RGB%[33m Unattended program-settings maker%RGB%%RGB%[90m[ONLINE]%RGB%[0m %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ  %ESC%[36m 26.%ESC%%ESC%[36m Mount(Image) Path%ESC%[0m                         %ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p WindowsEditMenu= %ESC%[92m Choice : %ESC%[0m
	if %WindowsEditMenu%==1 (Call :WimReader)
	if %WindowsEditMenu%==2 (Call :AioImport)
	if %WindowsEditMenu%==3 (Call :ISOMaker)
	if %WindowsEditMenu%==4 (Call :esdtowimexport)
	if %WindowsEditMenu%==5 GOTO WimDelete
	if %WindowsEditMenu%==6 (Call :WimMount)
	if %WindowsEditMenu%==7 (Call :WimRemount)
	if %WindowsEditMenu%==8 (Call :WimUnmount)
	if %WindowsEditMenu%==9 (Call :RegLoad)
	if %WindowsEditMenu%==10 (Call :RegUnload)
	if %WindowsEditMenu%==11 (Call :OnDismUpdate)
	if %WindowsEditMenu%==12 (Call :OffDismUpdate)
	if %WindowsEditMenu%==13 (Call :OffAppx)
	if %WindowsEditMenu%==14 (Call :OnAppx)
	if %WindowsEditMenu%==15 (Call :DriverBackup)
	if %WindowsEditMenu%==16 (Call :DriverInstaller)
	if %WindowsEditMenu%==17 (Call :SetupEdit)
	if %WindowsEditMenu%==18 (Call :Newico)
	if %WindowsEditMenu%==19 (Call :walpaper)
	if %WindowsEditMenu%==20 (Call :Hosts)
	if %WindowsEditMenu%==21 (Call :OneDrivedel)
	if %WindowsEditMenu%==22 (Call :gpeditmsc)
	if %WindowsEditMenu%==23 (Call :HyperV)
	if %WindowsEditMenu%==24 (Call :Unattendedoffline)
	if %WindowsEditMenu%==25 (Call :Unattendedonline)
	if %WindowsEditMenu%==26 (Call :variable3)
else
	goto WindowsEditMenu

:WimReader
cls
mode con cols=70 lines=15
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        WIM / ESD Reader                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :variable1
echo [%date% - %time%] ^| WimReader ^| "%MainWim%" files read. >> %location2%\Logs
mode con cols=99 lines=27
echo  %ESC%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :MainWim
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo                              %ESC%[92m Press any key to return to the menu%ESC%[0m
pause > NUL 
goto :eof

:stop
:AioImport
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        AIO Windows Maker                         %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo   %RGB%[96m Main Release%ESC%[0m 
Call :variable1
:aioimport2
echo   %RGB%[96m Add Release%ESC%[0m 
Call :variable2
cls
mode con cols=99 lines=40
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m                                          Main Version                                       %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
Call :MainWim
echo  %ESC%[90mฬอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[1;97m%ESC%%ESC%[100m                                          Add Version                                        %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[90mบ%ESC%[0m %ESC%[32mINDEX%ESC%[0m %ESC%[90mบ%ESC%[0m %ESC%[32mARCH  %ESC%[0m %ESC%[90mบ%ESC%[0m %ESC%[32m  VERSION%ESC%[0m   %ESC%[90mบ%ESC%[0m  %ESC%[32mLANG.%ESC%[0m %ESC%[90mบ%ESC%[0m    %ESC%[32mEDIT%ESC%[0m     %ESC%[90mบ%ESC%[0m    %ESC%[32mNAME%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%AddWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90mฬอออออออฮออออออออฮอออออออออออออฮออออออออฮอออออออออออออฮอออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
								echo      %ESC%[32m%%a%ESC%[0m      %ESC%[33m%%b%ESC%[0m    %ESC%[36m %%d.%%e%ESC%[0m    %ESC%[33m%%f%ESC%[0m    %ESC%[36m%%h%ESC%[0m  %ESC%[37m %%g%ESC%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p $selectindex= %RGB%[92m Multi Choice : %RGB%[0m

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu

FOR %%a in (%$selectindex%) do ( 
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%AddWim% /Index:%%a ^| FIND "Name"') do (
		    Call :imagexexport "%AddWim%" "%%a" %MainWim% "%%c %%b"
			)
		)
	)
)
cls
echo  %ESC%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :MainWim
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo 
echo %ESC%[92m Merge is complete%ESC%[0m
echo %ESC%[92m Press any key to return to the menu%ESC%[0m
pause > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------
:stop
:ISOMaker
cls
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             ISO MAKER                            %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo  %ESC%[96m Sample:%ESC%%ESC%[33m C:\Windows10Pro%ESC%[0m
set /p MainWim=%RGB%[92m   Image folder path : %RGB%[0m
	if %MainWim%==x GOTO WindowsEditMenu
	if %MainWim%==X GOTO WindowsEditMenu
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
set /p tag=%RGB%[92m   Tag name : %RGB%[0m
	if %tag%==x GOTO WindowsEditMenu
	if %tag%==X GOTO WindowsEditMenu
echo  %ESC%[90mฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo  %ESC%[96m Sample:%ESC%%ESC%[33m OgnitorenKs%ESC%[0m
set /p isosave=%RGB%[92m   ISO name : %RGB%[0m
	if %isosave%==x GOTO WindowsEditMenu
	if %isosave%==X GOTO WindowsEditMenu
 
mode con cols=85 lines=45
echo [%date% - %time%] ^| ISO Maker ^| Image:"%MainWim%" ^| Tag name:"%tag%" ^| ISO name:"%isosave%" comleted. >> %location2%\Logs
::%location2%\Files\oscdimg.exe -b%MainWim%\boot\etfsboot.com -h -u2 -m -l%tag% %MainWim%\ %location2%\Edit\%isosave%.iso
::%location2%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,bd%MainWim%\boot\etfsboot.com#pEF,e,bd%MainWim%\efi\microsoft\boot\efisys.bin %tag% %isosave%.iso
%location2%\Files\oscdimg.exe -m -o -u2 -udfver102 -bootdata:2#p0,e,b%MainWim%\boot\etfsboot.com#pEF,e,b%MainWim%\efi\microsoft\boot\efisys.bin -L%tag% %MainWim%\ %location2%\Edit\%isosave%.iso

powershell -command "Start-Process '%location2%\Edit'"
echo %ESC%[92m Process completed%ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:: ---------------------------------------------------------------------------------------------------------------------------------------------

:esdtowimexport
cls
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m%ESC%
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        ESD / WIM Converter                       %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :variable1
mode con cols=99 lines=30
echo  %ESC%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :MainWim
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p $selectindex= %RGB%[92m Multi Choice : %RGB%[0m

echo %$selectindex% | find "x" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
echo %$selectindex% | find "X" > NUL 2>&1
	if %errorlevel%==0 goto WindowsEditMenu
	
FOR %%a in (%$selectindex%) do (
	FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Architecture"') do (
		FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Name"') do (
			echo [%date% - %time%] ^| ESDtoWIM ^| %MainWim% - %%a - %%c - %%b version released. >> %location2%\Logs
			Call :esdtowim "%MainWim%" "%%a" "%%c" "%%b"
			)
		)
	)
)

powershell -command "Start-Process '%location2%\Edit\ESDtoWIM'"
echo %ESC%[92m Process completed%ESC%[0m 
timeout /t 3 /nobreak > NUL
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:WimDelete
cls
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Delete                           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :variable1
mode con cols=99 lines=30
:WimDell
echo  %ESC%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :MainWim
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p selectindex=%RGB%[92m Choice : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
echo [%date% - %time%] ^| WimDelete ^| Index="%selectindex%" Delete. Wim="%MainWim%" >> %location2%\Logs
Powershell -command "Remove-WindowsImage -ImagePath '%MainWim%' -Index '%selectindex%' -CheckIntegrity"
:: Different methods that can be used
::%location2%\Files\imagex.exe /delete "%MainWim%" %selectindex% /check
::Dism /Delete-Image /ImageFile:%MainWim% /Index:%selectindex% /CheckIntegrity
cls
goto WimDell

:WimMount
cls
mode con cols=70 lines=20
dir /b %location2%\Edit\Mount\Windows > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m Image gathering ...%ESC%[0m 
						Call :WimRemount
						Call :WimUnmount)
RD /S /Q "%location2%\Edit\Mount" > NUL 2>&1
mkdir "%location2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                              WIM MOUNT                           %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :variable1
mode con cols=99 lines=30
echo  %ESC%[90mษอออออออหออออออออหอออออออออออออหออออออออหอออออออออออออหอออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
Call :MainWim
echo  %ESC%[90mศอออออออสออออออออสอออออออออออออสออออออออสอออออออออออออสอออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
set /p selectindex= %RGB%[92m Choice : %RGB%[0m
	if %selectindex%==X goto WindowsEditMenu
	if %selectindex%==x goto WindowsEditMenu
:: The following FOR loops get the system "name" and "architecture". 
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%selectindex% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%selectindex% ^| FIND "Name"') do ( set iname=%%c)
cls
:: Indicates the operation performed. 
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %selectindex% %ESC%%ESC%[32m%ESC%%ESC%[33m (%iname% %iarc%)%ESC%%ESC%[32m loading...%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Dism /Mount-Image /ImageFile:"%MainWim%" /MountDir:"%location2%\Edit\Mount" /Index:%selectindex%
::%location2%\Files\imagex.exe /mountrw %MainWim% %selectindex% "%location2%\Edit\Mount"
echo [%date% - %time%] ^| WimMount ^| Mount "%selectindex%" - "%%c - %%b" version. "%MainWim%" >> %location2%\Logs
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 2 /nobreak > NUL
goto :eof

:WimRemount
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Remount                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| WimRemount ^| Remoun="%Mount%" done. >> %location2%\Logs
Dism /Remount-Image /MountDir:"%location2%\Edit\Mount"
::%location2%\Files\imagex.exe /remount %location2%\Edit\Mount
goto :eof

:WimUnmount
cls
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                             WIM Unmount                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| WimUnmount ^| Unmount="%Mount%" done. >> %location2%\Logs
Dism /UnMount-Image /MountDir:%location2%\Edit\Mount /Commit
	if %errorlevel%==1 (echo  %ESC%[91m COLLECTION FAILED! %ESC%[0m
						echo [%date% - %time%] ^| WimUnmount ^| ERROR! Unmount= %Mount%  >> %location2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
						
::%location2%\Files\imagex.exe /unmount /commit %location2%\Edit\Mount
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:RegLoad
mode con cols=70 lines=20
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                            Regedit Load                          %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m

:Offreg
dir /b %Mount%\Windows\System32\config\SOFTWARE > NUL 2>&1
	if %errorlevel%==1 (echo  %ESC%[1;97m%ESC%%ESC%[41m          The path is wrong! Regedit records not found              %ESC%[0m
						echo [%date% - %time%] ^| RegLoad ^| ERROR! Failed to load regedit records. Mount="%Mount%" >> %location2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)

echo [%date% - %time%] ^| RegLoad ^| %Mount% Loaded regedit records from folder >> %location2%\Logs
reg load HKLM\OG_COMPONENTS "%Mount%\Windows\System32\config\COMPONENTS" >nul
reg load HKLM\OG_DEFAULT "%Mount%\Windows\System32\config\default" >nul
reg load HKLM\OG_NTUSER "%Mount%\Users\Default\ntuser.dat" >nul
reg load HKLM\OG_SOFTWARE "%Mount%\Windows\System32\config\SOFTWARE" >nul
reg load HKLM\OG_SYSTEM "%Mount%\Windows\System32\config\SYSTEM" >nul
goto :eof

:RegUnload
cls
echo [%date% - %time%] ^| RegUnload ^| %Mount% collected regedit records from folder. >> %location2%\Logs
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
:stop

:OnAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Online Appx Installer                     %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
for /f %%i in ('"dir /b %location2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OnlineAppx ^| "%location2%\Edit\Appx\%%i" appx installer. >> %location2%\Logs 
	PowerShell.exe -Command "Add-AppxPackage -Path %location2%\Edit\Appx\%%i"
)

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OffAppx
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                        Offline Appx Installer                    %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m

for /f %%i in ('"dir /b %location2%\Edit\Appx\*"') do (
	echo [%date% - %time%] ^| OfflineAppx ^| "%location2%\Edit\Appx\%%i" appx installer. >> %location2%\Logs 
	DISM /Image:%Mount% /Add-ProvisionedAppxPackage /PackagePath:%location2%\Edit\Appx\%%i /SkipLicense
)
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineAppx ^| HATA! Optimize-ProvisionedAppxPackage ilemi hata verdi. Mount=%Mount% >> %location2%\Logs)
goto :eof

:stop
:OffDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Offline                      %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
	
:OffDism
for /f %%i in ('"dir /b %location2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OfflineDismYukle ^| "%location2%\Edit\Update\%%i" update file installed. Mount=%Mount% >> %location2%\Logs 
	DISM /Image:%Mount% /add-package /packagepath="%location2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS cleaning...%ESC%[0m
DISM /Image:%Mount% /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 (echo %ESC%[91m CLEANING FAILED! %ESC%[0m
						echo [%date% - %time%] ^| OfflineDism ^| ERROR! WinSxS cleaning. Mount=%Mount% >> %location2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
echo %ESC%[92m Appx files optimized...%ESC%[0m
Dism /Image:%Mount% /Optimize-ProvisionedAppxPackage
	if %errorlevel%==1 (echo [%date% - %time%] ^| OfflineDism ^| error in appx optimization. Mount=%Mount% >> %location2%\Logs)
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:OnDismUpdate
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                         DISM Update Online                      %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
for /f %%i in ('"dir /b %location2%\Edit\Update\*"') do (
	echo [%date% - %time%] ^| OnlineDism ^| "%location2%\Edit\Update\%%i" update file installed. >> %location2%\Logs 
	DISM /Online /add-package /packagepath="%location2%\Edit\Update\%%i"
)
echo %ESC%[92m WinSxS cleaning...%ESC%[0m
DISM /Online /Cleanup-Image /StartComponentCleanup
	if %errorlevel%==1 ( echo  %ESC%[91m CLEANING FAILED! %ESC%[0m 
						 timeout /t 5 /nobreak > NUL
						 goto WindowsEditMenu)

echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:stop
:DriverBackup
cls
mode con cols=70 lines=40
RD /S /Q "%location2%\Edit\Driver\Yedek" > NUL 2>&1
mkdir "%location2%\Edit\Driver\Yedek" > NUL 2>&1
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                           Driver Backup                         %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| DriverBackup ^| Driverlar yedeklendi >> %location2%\Logs
Dism /Online /Export-Driver /Destination:%location2%\Edit\Driver\Yedek

powershell -command "Start-Process '%location2%\Edit\Driver\Yedek'"
echo %ESC%[92m Process completed%ESC%[0m
timeout /t 3 /nobreak > NUL
goto :eof

:DriverInstaller
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                     Driver Installer - Offline                  %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| DriverInstaller ^| Driver installer. Mount=%Mount% >> %location2%\Logs
Dism /Image:%Mount% /Add-Driver /Driver:%location2%\Edit\Driver /Recurse
	if %errorlevel%==1 (RD /S /Q "%location2%\Edit\Driver"
						mkdir "%location2%\Edit\Driver"
						echo [%date% - %time%] ^| DriverInstaller ^| ERROR! Error installing driver. Mount=%Mount% >> %location2%\Logs
						goto DriverInstaller)

echo  %ESC%[92m Process completed %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof
:stop
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:SetupEdit
cls
mode con cols=70 lines=40
dir /b %location2%\Files\Setup10.zip > NUL 2>&1
	if %errorlevel%==1 (Call :SetupDownload)
dir /b "%location2%\Edit\Mount\Windows" > NUL 2>&1
	if %errorlevel%==0 (echo %ESC%[32m Collect the installed Mount folder .%ESC%[0m
						echo [%date% - %time%] ^| SetupEdit ^| ERROR! Mount folder has system installed. >> %location2%\Logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
RD /S /Q "%location2%\Edit\Mount" > NUL 2>&1
mkdir "%location2%\Edit\Mount" > NUL 2>&1
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          Win Setup Edit                         %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :variable4

mode con cols=99 lines=30
FOR /F "tokens=3" %%b IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Architecture"') do (set iarc=%%b)
FOR /F "tokens=2 delims=:" %%c IN ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%index% ^| FIND "Name"') do ( set iname=%%c)
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo   %ESC%[92m Index%ESC%%ESC%[33m %index% %ESC%%ESC%[92m%ESC%%ESC%[33m (%iname%)%ESC%%ESC%[92m loading...%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| SetupEdit ^| %MainWim% - %iname% loading. >> %location2%\Logs
Dism /Mount-Image /ImageFile:"%MainWim%" /MountDir:"%location2%\Edit\Mount" /Index:%index%
:: %location2%\Files\imagex.exe /mountrw %MainWim% %index% "%location2%\Edit\Mount"

:: For :RegLoad
set Mount=%location2%\Edit\Mount

Call :PowerRun
cls
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %RGB%[96m Select the Windows version%RGB%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
set /p windowssetup=%ESC%[97m  %ESC%%ESC%[92m [ Windows 11:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m Windows 10:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[92m] : %ESC%[0m
	if %windowssetup%==1 (%PowerRun% powershell -command "Expand-Archive -Force '%location2%\Files\Setup10.zip' '%location2%\Edit\Mount'"
						  %PowerRun% powershell -command "Expand-Archive -Force '%location2%\Files\Setup11.zip' '%location2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 11 setup files have been integrated into the Setup image. >> %location2%\Logs
						  timeout /t 5 /nobreak > NUL)
	if %windowssetup%==2 (%PowerRun% powershell -command "Expand-Archive -Force '%location2%\Files\Setup10.zip' '%location2%\Edit\Mount'"
						  echo [%date% - %time%] ^| SetupEdit ^| Windows 10 setup files have been integrated into the Setup image.  >> %location2%\Logs
						  timeout /t 5 /nobreak > NUL)
echo 
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo    %RGB%[96m Select menu location %RGB%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
set /p barkonum=%ESC%[97m   %ESC%%ESC%[92m[%ESC%%ESC%[92m Left:%ESC%%ESC%[1;97m 1 %ESC%%ESC%[35m/%ESC%%ESC%[92m Top:%ESC%%ESC%[1;97m 2 %ESC%%ESC%[35m/%ESC%%ESC%[92m Right:%ESC%%ESC%[1;97m 3 %ESC%%ESC%[35m/%ESC%%ESC%[92m Under:%ESC%%ESC%[1;97m 4 %ESC%%ESC%[92m] : %ESC%[0m 
	if %barkonum%==1 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==2 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==3 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
	if %barkonum%==4 (Call :SetupBar %barkonum%
					  Call :setupunmount 
					  goto WindowsEditMenu)
:setupunmount
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[92m Collecting setup file...%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Dism /UnMount-Image /MountDir:"%location2%\Edit\Mount" /Commit
::%location2%\Files\imagex.exe /unmount /commit %location2%\Edit\Mount
echo  %ESC%[92m Process completed %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

:SetupBar
echo [%date% - %time%] ^| SetupEdit ^| Lerup Launcher location %~1 selected >> %location2%\Logs
Call :RegUnload
Call :Offreg
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Location" /t REG_SZ /d %~1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeIcons" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "UseLargeMenus" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AlwaysOnTop" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "AutoHide" /t REG_SZ /d 0 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Center" /t REG_SZ /d 1 /f > NUL 2>&1
reg add "HKLM\OG_DEFAULT\SOFTWARE\Peter Lerup\LaunchBar" /v "Buttons" /t REG_SZ /d "" /f > NUL 2>&1
Call :RegUnload
goto :eof
:stop
::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:Newico
cls
mode con cols=70 lines=40
dir /b %location2%\Files\Newico.zip > NUL 2>&1
	if %errorlevel%==1 (Call :icodownload)
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                      Add New Icons - Offline                    %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Newico ^| Add new ico. Mount=%Mount% >> %location2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%location2%\Files\Newico.zip' '%Mount%'"

echo  %ESC%[92m Process completed %ESC%[0m  
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:walpaper
cls
mode con cols=70 lines=40
Call :RegUnload
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                     Walpaper Change - Offline                   %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :PowerRun
echo [%date% - %time%] ^| Walpaper ^| New Walpaper added. Mount=%Mount% >> %location2%\Logs
%PowerRun% Powershell -command "Expand-Archive -Force '%location2%\Files\Walpaper.zip' '%Mount%\Windows\Web'"

echo  %ESC%[92m Process completed %ESC%[0m 
timeout /t 2 /nobreak > NUL
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Hosts
echo [%date% - %time%] ^| Hosts ^| hosts file added. Mount=%Mount% >> %location2%\Logs
%PowerRun% copy /y "%location2%\Files\Hosts" "%Mount%\Windows\System32\Drivers\etc"
goto :eof

::------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:OneDrivedel
cls
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                     OneDrive Remove - Offline                    %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
Call :RegUnload
echo [%date% - %time%] ^| OneDrive ^| OneDrive removed. Mount=%Mount% >> %location2%\Logs
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSetup.exe"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDriveSettingSyncProvider.dll"
%PowerRun% DEL /F /Q /A "%Mount%\Windows\SysWOW64\OneDrive.ico"
Call :Offreg
reg delete "HKLM\OG_SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f >nul 2>&1
Call :RegUnload
goto :eof

:gpeditmsc
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                       Gpedit.Msc - Offline                       %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| Gpedit.msc ^| Gpedit.msc added. Mount=%Mount% >> %location2%\Logs
FOR /f %%a IN ('"dir /b %Mount%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~*.mum"') do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
FOR /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~*.mum") do (Dism /Image:%Mount% /Add-Package:"%SystemRoot%\servicing\Packages\%%a")
goto :eof


:HyperV
mode con cols=70 lines=40
echo  %ESC%[90mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[1;97m%ESC%%ESC%[100m                          Hyper-V Offline                         %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| HyperV ^| Hyper-V added. Mount=%Mount% >> %location2%\Logs
For /f %%a IN ('"dir /b %Mount%\Windows\servicing\Packages\Microsoft-Hyper-V*.mum"') DO (DISM /Image:%Mount% /Add-Package:"%Mount%\Windows\servicing\Packages\%%a")
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Tools-All
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-PowerShell
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Services
DISM /Image:%Mount% /Enable-Feature /FeatureName:Microsoft-Hyper-V-Management-Clients
goto :eof

:: þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:Unattendedonline
powershell -command "Start-Process '%location2%\Extra\On.Unattended.bat'
goto :eof

:Unattendedoffline
powershell -command "Start-Process '%location2%\Extra\Off.Unattended.bat'
goto :eof

:location2
cd /d "%~dp0"
for /f %%a in ('"cd"') do set location2=%%a
set location2=%location2:~0,-6%
goto :EOF

:MainWim
echo  %ESC%[90mบ%ESC%[0m %ESC%[32mINDEX%ESC%[0m %ESC%[90mบ%ESC%[0m %ESC%[32mARCH  %ESC%[0m %ESC%[90mบ%ESC%[0m %ESC%[32m  VERSION%ESC%[0m   %ESC%[90mบ%ESC%[0m  %ESC%[32mLANG.%ESC%[0m %ESC%[90mบ%ESC%[0m    %ESC%[32mEDIT%ESC%[0m     %ESC%[90mบ%ESC%[0m    %ESC%[32mNAME%ESC%[0m
FOR /F "tokens=3" %%a IN ('dism /Get-WimInfo /WimFile:%MainWim% ^| FIND "Index"') DO (
	FOR /F "tokens=3" %%b IN ('dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| FIND "Architecture"') DO (
		FOR /F "tokens=3" %%c in ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| Find "Version"') do (
			FOR /F "tokens=3 delims=." %%d in ('"echo %%c"') do (
				FOR /F "tokens=4" %%e in ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| Find "Build"') do (
					FOR /F "tokens=1" %%f in ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| findstr /i Default') do (
						FOR /F "tokens=2 delims=':'" %%g in ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| findstr /i Name') do (
							FOR /F "tokens=2 delims='-',':' " %%h in ('Dism /Get-WimInfo /WimFile:%MainWim% /Index:%%a ^| findstr /i Modified') do (
								echo  %ESC%[90mฬอออออออฮออออออออฮอออออออออออออฮออออออออฮอออออออออออออฮอออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
								echo      %RGB%[92m%%a%RGB%[0m      %RGB%[33m%%b%RGB%[0m    %RGB%[36m %%d.%%e%RGB%[0m    %RGB%[33m%%f%RGB%[0m    %RGB%[36m%%h%RGB%[0m  %RGB%[37m %%g%RGB%[0m
								)
							)
						)
					)
				)
			)
		)
	)
)
GOTO :EOF

:variable1
set /p MainWim=%RGB%[97m  %RGB%%RGB%[92m Folder or File path : %RGB%[0m
	if %MainWim%==x GOTO menu
	if %MainWim%==X GOTO menu
	
echo %MainWim%\ > %location2%\Edit\Logs\Slash.txt
Find /C /I "\\" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set MainWim=%MainWim:~0,-1%
						echo [%date% - %time%] ^| variable1 ^| ISO path. Path="%MainWim%" >> %location2%\Logs
						DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL)
Find "boot.wim" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| variable1 ^| boot.wim path. Path="%MainWim%" >> %location2%\Logs
						goto :eof)
Find "install" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| variable1 ^| install.wim path. Path="%MainWim%" >> %location2%\Logs
						goto :eof)
dir /b %MainWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set MainWim="%MainWim%\sources\install.wim")
	if %errorlevel%==1 (set MainWim="%MainWim%\sources\install.esd")
echo [%date% - %time%] ^| variable1 ^| Image path added. Path="%MainWim%" >> %location2%\Logs
goto :eof

:variable2
set /p AddWim=%RGB%[97m  %RGB%%RGB%[92m Folder or File path : %RGB%[0m
	if %AddWim%==x GOTO menu
	if %AddWim%==X GOTO menu

echo %AddWim%\ > %location2%\Edit\Logs\Slash.txt
Find /C /I "\\" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set AddWim=%AddWim:~0,-1%
						echo [%date% - %time%] ^| variable2 ^| ISO path. Path="%AddWim%" >> %location2%\Logs
						DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL)
Find "install" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (set AddWim=%AddWim%
						echo [%date% - %time%] ^| variable2 ^| install.wim path. Path="%AddWim%" >> %location2%\Logs
						DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL
						goto :eof)
dir /b %AddWim%\sources\install.wim > NUL 2>&1
	if %errorlevel%==0 (set AddWim="%AddWim%\sources\install.wim")
	if %errorlevel%==1 (set AddWim="%AddWim%\sources\install.esd")
echo [%date% - %time%] ^| variable2 ^| Image folder path. Path="%AddWim%" >> %location2%\Logs
goto :eof

:variable3
mode con cols=90 lines=20
echo 
echo  %RGB%[96m Sample:%RGB%%RGB%[33m "C:\OgnitorenKs.Toolbox\Edit\Mount"%RGB%[0m
set /p Mount=%ESC%[97m  %ESC%%ESC%[92m Folder path : %ESC%[0m
	if %Mount%==x GOTO WindowsEditMenu
	if %Mount%==X GOTO WindowsEditMenu
echo [%date% - %time%] ^| variable3 ^| Image path. Mount="%Mount%" >> %location2%\Logs
goto :eof

:variable4
set /p MainWim=%RGB%[97m  %RGB%%RGB%[92m Folder or File path : %RGB%[0m
	if %MainWim%==x GOTO menu
	if %MainWim%==X GOTO menu
	
echo %MainWim%\ > %location2%\Edit\Logs\Slash.txt
Find /C /I "\\" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (echo %ESC%[91m ERROR! ISO path.%ESC%[0m
						echo %ESC%[92m Try extracting it to the folder..%ESC%[0m
						echo [%date% - %time%] ^| variable4 ^| ERROR! ISO path. MainWim="%MainWim%" >> %location2%\logs
						timeout /t 5 /nobreak > NUL
						goto WindowsEditMenu)
Find "boot.wim" %location2%\Edit\Logs\Slash.txt > NUL
	if %errorlevel%==0 (DEL /F /Q /A "%location2%\Edit\Logs\Slash.txt" > NUL
						echo [%date% - %time%] ^| variable4 ^| boot.wim path. MainWim="%MainWim%" >> %location2%\logs
						goto :eof)
dir /b %MainWim%\sources\boot.wim > NUL 2>&1
	if %errorlevel%==0 (set MainWim="%MainWim%\sources\boot.wim")
	if %errorlevel%==1 (set MainWim="%MainWim%\boot.wim")
echo [%date% - %time%] ^| variable4 ^| Image path. MainWim="%MainWim%" >> %location2%\logs
Dism /Get-WimInfo /WimFile:%MainWim% /Index:1 > %location2%\Edit\Logs\setupindex.txt
FIND "Setup" %location2%\Edit\Logs\setupindex.txt > NUL 2>&1
	if %errorlevel%==0 (set index=1)
	if %errorlevel%==1 (set index=2)
echo [%date% - %time%] ^| variable4 ^| Setup index "%index%" detected. MainWim="%MainWim%" >> %location2%\logs
DEL /F /Q /A "%location2%\Edit\Logs\setupindex.txt" > NUL 2>&1
cls
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
:PowerRun
set PowerRun=%location2%\Files\PowerRun.exe /SW:0 %SystemRoot%\system32\cmd.exe /c
goto :EOF


:SetupDownload
%location2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1Fw7Z61gQ9gw6KX4F1tWZtZlrk45JMrLe" -O %location2%\Download\Setup.zip
powershell -command "Expand-Archive -Force '%location2%\Download\Setup.zip' '%location2%\Files'"
echo [%date% - %time%] ^| SetupDownload ^| Setup.zip download. >> %location2%\logs
goto :eof

:icodownload
echo 
%location2%\Files\wget -c -q --no-check-certificate --show-progress "https://docs.google.com/uc?export=download&id=1D6TR20HEo6diHH_g53GxPL5Tpdg3cT2m" -O %location2%\Files\Newico.zip
echo [%date% - %time%] ^| icodownload ^|  Newico.zip download. >> %location2%\logs
goto :eof

:: ========================================================================================================================================================
:imagexexport
mode con cols=99 lines=30
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[33m (%~4 %~5)%ESC%%ESC%[32m merging, please wait...%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
echo [%date% - %time%] ^| AIO Maker ^| "%~3" files "%~1" files "%~4 %~5" added. >> %location2%\Logs
Dism /Export-Image /SourceImageFile:%~1 /SourceIndex:%~2 /DestinationImageFile:%~3 /DestinationName:"%~4" /Compress:Max
::%location2%\Files\imagex.exe /export "%~1" %~2 "%~3" "%~4 %~5"
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: AddWim | %~2: %%a(index) | %~3: (MainWim) | %~4: %%c(Version Name) | %~5: %%b(Version Arch) |
:: ========================================================================================================================================================

:esdtowim
cls
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo    %ESC%[32m Index%ESC%%ESC%[33m %~2 %ESC%%ESC%[32m%ESC%%ESC%[33m (%~3 %~4)%ESC%%ESC%[32m converter...%ESC%[0m
echo  %ESC%[90mศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ%ESC%[0m
dir /b %location2%\Edit\ESDtoWIM\install.wim > NUL 2>&1
	if %errorlevel%==0 (echo ESDtoWIM ^| ERROR! Added over existing install.wim file %~1 %~2 %~3 %~4 >> %location2%\logs)
Dism /Export-Image /SourceImageFile:"%~1" /SourceIndex:%~2 /DestinationImageFile:%location2%\Edit\ESDtoWIM\install.wim /Compress:max /CheckIntegrity
timeout /t 1 /nobreak > NUL
goto :eof
::---------------------------------------------------------------------------------------------------------------------------------------------------------
::  %~1: MainWim | %~2: %%a(index) | %~3: %%c(Version Name) | %~4: %%b(Version Arch)" |
:: ========================================================================================================================================================

:key
reg add "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /f)
goto :eof

:dword
reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_DWORD /d "%~3" /f)
goto :eof

:binary
reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_BINARY /d "%~3" /f)
goto :eof

:sz
reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_SZ /d "%~3" /f)
goto :eof

:vesz
reg add "%~1" /ve /t REG_SZ /d "%~2" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /ve /t REG_SZ /d "%~2" /f)
goto :eof

:multisz
reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f
	if %errorlevel%==1 (%PowerRun% reg add "%~1" /v "%~2" /t REG_MULTI_SZ /d "%~3" /f)
goto :eof

:delete
reg delete "%~1" /f
	if %errorlevel%==1 (%PowerRun% reg delete "%~1" /f)
goto :eof

::---------------------------------------------------------------------------------------------------------------------------------------------------------

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

