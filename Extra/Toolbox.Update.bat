echo off
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox Updater

:: Color Start
setlocal
Call :ColorEnd

cd /d "%~dp0"
for /f %%a in ('"cd"') do set konum=%%a

ping -n 1 www.bing.com -w 20000 > NUL
	if %errorlevel%==1 (Call :netkontrol&exit)
	
dir /b C:\OgnitorenKs.Toolbox\Files\wget.exe > NUL 2>&1
	if %errorlevel%==1 (Call :wget)	
	
mkdir C:\OgnitorenKs.Toolbox > NUL 2>&1
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Updating...%ESC%[0m
echo             
echo               [������������                                    ]
Call :ogni
C:\OgnitorenKs.Toolbox\Files\wget --no-check-certificate "https://docs.google.com/uc?export=download&id=1g8mbmzrFcXSZT7r5Oiwdqfs9wGNS2xWl" -O C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip > NUL 2>&1
cls
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Updating...%ESC%[0m
echo             
echo               [������������������������                        ]
Call :ogni
powershell -command "Expand-Archive -Force 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip' 'C:\OgnitorenKs.Toolbox'"
move /y "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.lnk" "C:\Users\%username%\Desktop"
cls
Call :space
echo                       %ESC%[92m OgnitorenKs Toolbox Updating...%ESC%[0m
echo             
echo               [������������������������������������            ]
Call :ogni
DEL /F /Q /A "C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.zip" > NUL 2>&1
cls
Call :space
echo                  %ESC%[92m OgnitorenKs Toolbox installation completed%ESC%[0m
echo 
echo               [������������������������������������������������]
Call :ogni
timeout /t 5 /nobreak > NUL
exit

:space
echo 
echo 
echo 
echo 
echo 
echo 
echo 
goto :eof
:ogni
echo 
echo               %ESC%[33m��  ���� �   � � ���  ��  ����  ��� �   �   � ����%ESC%[0m
echo              %ESC%[33m�  � �    ��  � �  �  �  � �  �  �   ��  �  �  �   %ESC%[0m
echo              %ESC%[33m�  � � �� � � � �  �  �  � � �   ��  � � � �   ����%ESC%[0m
echo              %ESC%[33m�  � �  � �  �� �  �  �  � �  �  �   �  ��  �     �%ESC%[0m
echo               %ESC%[33m��  ���� �   � �  �   ��  �   � ��� �   �   � ����%ESC%[0m 
goto :eof
:netkontrol
Call :space
echo                          %ESC%[91m INTERNET CONNECTION FAILED %ESC%[0m
echo  
echo               [################################################]  
Call :ogni
timeout /t 3 /nobreak > NUL
goto :eof
:wget
Call :space
echo                      %ESC%[92m Downloading installation files...%ESC%[0m
echo   
echo               [################################################]  
Call :ogni
mkdir C:\OgnitorenKs.Toolbox\Files > NUL 2>&1
powershell -command "& { iwr https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile C:\OgnitorenKs.Toolbox\Files\wget.exe }"
timeout /t 1 /nobreak > NUL
cls
goto :eof


:ColorEnd
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

