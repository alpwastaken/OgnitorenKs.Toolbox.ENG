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
title      System Info / OgnitorenKs
mode con cols=95 lines=44

:: Color Start
setlocal
Call :ColorEnd

:: ==============================================================================================================================
::  Color Map
::  -------------
:: %ESC%^[32m > It is used in the information sections. Green. 
:: %ESC%^[37m > System hardware information color. White.
:: %ESC%^[100m > It is the color that fills the background in title sections. Grey.
:: %ESC%^[1;97m > It is the text color inside the fill section in the header. one; makes the section bold. 97m allows to write white color. 
:: %ESC%^[90m > Frames and | Changes the color of the markings .
:: 
:: ==============================================================================================================================

:Logs
cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a
set konum=%konum:~0,-6%
set Logs=%konum%\Edit\Logs
echo [%date% - %time%] ^| Systeminfo ^| System info run. >> %konum%\Logs
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo                             %ESC%[92mGetting system and hardware information %ESC%[0m
echo 
echo                                         %ESC%[92m Please wait...%ESC%[0m
echo 
echo 
echo             	      %ESC%[33mþþ  þþþþ þ   þ þ þþþ  þþ  þþþþ  þþþ þ   þ   þ þþþþ%ESC%[0m
echo             	     %ESC%[33mþ  þ þ    þþ  þ þ  þ  þ  þ þ  þ  þ   þþ  þ  þ  þ   %ESC%[0m
echo             	     %ESC%[33mþ  þ þ þþ þ þ þ þ  þ  þ  þ þ þ   þþ  þ þ þ þ   þþþþ%ESC%[0m
echo             	     %ESC%[33mþ  þ þ  þ þ  þþ þ  þ  þ  þ þ  þ  þ   þ  þþ  þ     þ%ESC%[0m
echo             	      %ESC%[33mþþ  þþþþ þ   þ þ  þ   þþ  þ   þ þþþ þ   þ   þ þþþþ%ESC%[0m 

:Information
bcdedit > %Logs%\Bcdedit.txt
Powershell -command "Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | format-list" > %Logs%\OS.txt
Powershell -command "Get-CimInstance -ClassName Win32_computerSystem | Select-Object -Property Name,Model,Manufacturer,PrimaryOwnerName,TotalPhysicalMemory | format-list" > %Logs%\ComputerSystem.txt
Powershell -command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -Property Name | format-list" > %Logs%\Bios.txt
Powershell -command "Get-CimInstance -ClassName Win32_Processor | Select-Object -Property Name,CurrentClockSpeed,SocketDesignation,L2CacheSize,L3CacheSize,NumberOfCores,NumberOfLogicalProcessors | format-list" > %Logs%\CPU.txt
Powershell -command "Get-CimInstance -ClassName CIM_VideoController | Select-Object -Property Name,CurrentHorizontalResolution,CurrentVerticalResolution,CurrentRefreshRate,AdapterRAM,DriverDate,DriverVersion | format-list" > %Logs%\GPU.txt
Powershell -command "Get-CimInstance -ClassName Win32_DesktopMonitor | Select-Object -Property Name | format-list" > %Logs%\Monitor.txt
Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Speed,SMBIOSMemoryType | format-list" > %Logs%\Ram.txt
Powershell -command "Get-CimInstance -ClassName Win32_TimeZone | Select-Object -Property Caption | format-list" > %Logs%\utc.txt

:Arayuz
cls
echo  %ESC%[90mษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป%ESC%[0m
echo  %ESC%[90mบ%ESC%%ESC%[97m%ESC%%ESC%[100m                                         System Info                                       %ESC%[0m%ESC%[90mบ%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
FOR /F "tokens=3" %%a in ('FIND "RegisteredUser" %Logs%\OS.txt') do (
	FOR /F "tokens=3" %%b in ('FIND "CSName" %Logs%\OS.txt') do (
		echo   %ESC%[32m PC Name:%ESC%%ESC%[37m %%b %ESC%[0m
		echo   %ESC%[32m User Name :%ESC%%ESC%[37m %%a %ESC%[0m    
		)
	)
)
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
:: Format date is retrieved 
FOR /F "tokens=3" %%a in ('FIND "InstallDate" %Logs%\OS.txt') do set format=%%a
FOR /F "tokens=3" %%c in ('FIND "Caption" %Logs%\utc.txt') do set utcc=%%c
echo   %ESC%[32m Format Date:%ESC%%ESC%[37m %format%%ESC%[0m %ESC%[90m / %ESC%%ESC%[32mTime Zone:%ESC%%ESC%[37m %utcc%%ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
:: Has operating system 
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %Logs%\OS.txt') do set caption=%%a
:: The section that says Microsoft is removed.
set caption=%caption:~11%
:: Has system architecture
FOR /F "tokens=3" %%d in ('FIND "OSArchitecture" %Logs%\OS.txt') do set osarch=%%d
:: The system version number is obtained with the OS build number. 
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version"') do set osbuildd=%%f
:: The part that specifies the NT kernel partition is removed. 
set osbuildd=%osbuildd:~5%
:: It determines which disk structure the operating system is installed with. 
FOR /F "tokens=3 delims= " %%e in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" ^| find "DisplayVersion"') do set ImageBuild=%%e
FIND /C /I "winload.efi" %Logs%\Bcdedit.txt > NUL
	if %errorlevel%==0 set uefi=UEFI-GPT
	if %errorlevel%==1 set uefi=BIOS-MBR
:: All values are printed on the command screen.
echo   %ESC%[32m OS:%ESC%%ESC%[37m %caption%%ESC%%ESC%[90m / %ESC%%ESC%[37mx%osarch%%ESC%%ESC%[90m / %ESC%%ESC%[37m%ImageBuild%%ESC%%ESC%[90m / %ESC%%ESC%[37m%osbuildd%%ESC%%ESC%[90m / %ESC%%ESC%[37m%uefi%%ESC%[0m
::  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ

:: Motherboard brand 
FOR /F "tokens=3" %%a in ('FIND "Manufacturer" %Logs%\ComputerSystem.txt') do set boardmarka=%%a
:: There is a motherboard model. 
FOR /F "tokens=2 delims=':'" %%c in ('FIND "Model" %Logs%\ComputerSystem.txt') do set board=%%c
:: The motherboard has a processor socket structure.
FOR /F "tokens=2 delims=':'" %%d in ('FIND "SocketDesignation" %Logs%\CPU.txt') do set boardsoket=%%d
:: The motherboard bios version is learned. 
FOR /F "tokens=2 delims=':'" %%e in ('FIND "Name" %Logs%\Bios.txt') do set bios=%%e
:: All values are printed on the command screen. 
echo   %ESC%[32m MotherBoard:%ESC%%ESC%[37m %boardmarka%%board%%ESC%%ESC%[90m / %ESC%%ESC%[32mSocket:%ESC%%ESC%[37m%boardsoket%%ESC%%ESC%[90m / %ESC%%ESC%[32mBios:%ESC%%ESC%[37m%bios%%ESC%[0m
::  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: The processor model is learned. 
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\CPU.txt') do set cpu=%%a
:: The number of processor cores is learned.
FOR /F "tokens=2 delims=':'" %%b in ('FIND "NumberOfCores" %Logs%\CPU.txt') do set cpucore=%%b
:: The number of processor virtual cores is learned.
FOR /F "tokens=2 delims=':'" %%c in ('FIND "NumberOfLogicalProcessors" %Logs%\CPU.txt') do set cputhreats=%%c
:: The processor L2 cache amount is learned. 
FOR /F "tokens=2 delims=':'" %%d in ('FIND "L2CacheSize" %Logs%\CPU.txt') do set cpuL2=%%d
:: For L2 calculation, 3 digits are dropped from the end. 
set cpuL2=%cpuL2:~0,-3%
:: The processor L3 cache amount is learned.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "L3CacheSize" %Logs%\CPU.txt') do set cpuL3=%%e
:: For L3 calculation, 3 digits are dropped from the end.
set cpuL3=%cpuL3:~0,-3%
:: Processor clock speed.
FOR /F "tokens=2 delims=':'" %%e in ('FIND "CurrentClockSpeed" %Logs%\CPU.txt') do set cpuclock=%%e
:: All values are printed on the command screen.
echo   %ESC%[32m CPU:%ESC%%ESC%[37m%cpu% %ESC%[0m
echo   %ESC%[32m CPU Core:%ESC%%ESC%[37m%cpucore% %ESC%%ESC%[90m/%ESC%%ESC%[32m Threads:%ESC%%ESC%[37m%cputhreats% %ESC%%ESC%[90m/%ESC%%ESC%[32m L2:%ESC%%ESC%[37m%cpuL2%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m L3:%ESC%%ESC%[37m%cpuL3%%ESC%%ESC%[36m MB%ESC%%ESC%[90m /%ESC%%ESC%[32m CPU-MHZ:%ESC%%ESC%[37m%cpuclock%%ESC%[0m
::  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: The video card model is detected.
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\GPU.txt') do set gpu=%%a
:: The amount of VRAM is learned. 
FOR /F "tokens=2 delims=':'" %%b in ('FIND "AdapterRAM" %Logs%\GPU.txt') do set gpuram=%%b
:: The amount of VRAM is regulated in GB.
set gpuram=%gpuram:~0,-9%
:: The installed driver version is learned.  
FOR /F "tokens=2 delims=':'" %%c in ('FIND "DriverVersion" %Logs%\GPU.txt') do set gpudriver=%%c
:: The date of the driver version is learned. 
FOR /F "tokens=3" %%d in ('FIND "DriverDate" %Logs%\GPU.txt') do set gpudate=%%d
:: All values are printed on the command screen. 
echo   %ESC%[32m GPU:%ESC%%ESC%[37m %gpu%%ESC%%ESC%[90m /%ESC%%ESC%[32m VRAM:%ESC%%ESC%[37m%gpuram%%ESC%%ESC%[36m GB%ESC%[0m 
echo   %ESC%[32m GPU Driver:%ESC%%ESC%[37m %gpudriver%%ESC%%ESC%[90m / %ESC%%ESC%[32mDriver Date :%ESC%%ESC%[37m %gpudate%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
:: Monitor model is learned. 
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Name" %Logs%\Monitor.txt') do set monitorr=%%a
:: Monitor resolution is learned. 
FOR /F "tokens=2 delims=':'" %%b in ('FIND "CurrentHorizontalResolution" %Logs%\GPU.txt') do set dikeyc=%%b
FOR /F "tokens=2 delims=':'" %%c in ('FIND "CurrentVerticalResolution" %Logs%\GPU.txt') do set yatayc=%%c
:: Monitor HZ value is learned. 
FOR /F "tokens=2 delims=':'" %%d in ('FIND "CurrentRefreshRate" %Logs%\GPU.txt') do set refresh=%%d
:: All values are printed on the command screen.
echo   %ESC%[32m Monitor:%ESC%%ESC%[37m%monitorr% %ESC%%ESC%[90m/%ESC%%ESC%[37m%refresh% %ESC%%ESC%[36mHZ%ESC%%ESC%[90m / %ESC%%ESC%[37m%dikeyc% %ESC%%ESC%[36mx%ESC%%ESC%[37m%yatayc%%ESC%[0m
REM  þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ	
:: ------------------------------------------------------------------------------------------------------------
:: I would like to thank Eray Turkay for helping me add the ram socket structure. 
:: ------------------------------------------------------------------------------------------------------------
:: Ram socket structure is learned. 
FOR /F "tokens=3" %%b in ('FIND "SMBIOSMemoryType" %Logs%\Ram.txt') do (set RamType=%%b)
	if %RamType%==0 (set RamType=Bilinmiyor)
	if %RamType%==1 (set RamType=Diงer)
	if %RamType%==2 (set RamType=DRAM)
	if %RamType%==3 (set RamType=Senkron Ram)
	if %RamType%==4 (set RamType=Cache Ram)
	if %RamType%==5 (set RamType=EDO)
	if %RamType%==6 (set RamType=EDRAM)
	if %RamType%==7 (set RamType=VRAM)
	if %RamType%==8 (set RamType=SRAM)
	if %RamType%==9 (set RamType=RAM)
	if %RamType%==10 (set RamType=ROM)
	if %RamType%==11 (set RamType=Flash)
	if %RamType%==12 (set RamType=EEPROM)
	if %RamType%==13 (set RamType=FEPR0M)
	if %RamType%==14 (set RamType=EPROM)
	if %RamType%==15 (set RamType=CDRAM)
	if %RamType%==16 (set RamType=3DRAM)
	if %RamType%==17 (set RamType=SDRAM)
	if %RamType%==18 (set RamType=SGRAM)
	if %RamType%==19 (set RamType=RDRAM)
	if %RamType%==20 (set RamType=DDR)
	if %RamType%==21 (set RamType=DDR2)
	if %RamType%==22 (set RamType=DDR2 FB-DIMM)
	if %RamType%==24 (set RamType=DDR3)
	if %RamType%==25 (set RamType=FBD2)
	if %RamType%==26 (set RamType=DDR4)
:: The amount of RAM is learned. 
FOR /F "tokens=3" %%a in ('FIND "TotalPhysicalMemory" %Logs%\ComputerSystem.txt') do set ramtotal=%%a
:: It is organized in GB. 
set ramtotal=%ramtotal:~0,-3%
set /a ramtotal=(%ramtotal%/1024/1024)
:: RAM MHZ speed is learned. 
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Speed" %Logs%\Ram.txt') do set ramspeed=%%a
:: All values are printed on the command screen. 
echo   %ESC%[32m RAM:%ESC%%ESC%[37m %ramtotal% %ESC%[36mGB%ESC%%ESC%[90m / %ESC%%ESC%[37m%ramspeed% %ESC%%ESC%[36m MHZ%ESC%%ESC%[90m / %ESC%%ESC%[32m Socket:%ESC%%ESC%[37m %RamType% %ESC%[0m
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
For /f "skip=3 tokens=*" %%a in ('PowerShell "Get-PhysicalDisk | Select-Object -Property MediaType,FriendlyName,Size | Format-Table"') do (
	echo    %%a)
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
:: The section about RAM is made more detailed. 
echo          %ESC%[32m Brand            Model            Capacity    MHZ%ESC%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Manufacturer,PartNumber,Capacity,Speed"') DO (
	echo.  %ESC%[32m RAM:%ESC%[0m%ESC%[37m %%a%ESC%[0m
)
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
:: The graphics card section is made more detailed.
echo         %ESC%[32m      Model              VRAM         Driver%ESC%[0m
FOR /F "skip=3 tokens=*" %%a IN ('Powershell -command "Get-CimInstance -ClassName win32_videocontroller | Select-Object -Property Name,AdapterRAM,DriverVersion | format-table"') DO (
	echo   %ESC%[32m GPU:%ESC%[0m%ESC%[37m %%a%ESC%[0m
	)
)
echo  %ESC%[90mฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน%ESC%[0m
echo 
echo                                %ESC%[92m Press any key to turn it off%ESC%[0m
pause > NUL
exit

:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0
