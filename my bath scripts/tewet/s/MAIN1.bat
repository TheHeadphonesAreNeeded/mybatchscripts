@echo off
chcp 65001 >nul
mode 70,45
cd files
set "devmod=false"
:start
title SCRIPTIX cmd version v0.1.0
cls
call :banner
echo [43mTIP[37;40m: type help for commands
set /p input="CMD>[36m"
if /I "%input%"=="help" goto help
if /I "%input%"=="GTM" goto gtagmods
if /I "%input%"=="SSC" goto SSC
if /I "%input%"=="ma" goto ma
if /I "%input%"=="ipp" goto ipp


echo [91m ENTER VALID[37;40m
pause >nul
goto start


:help
cls
call :banner
echo [36mGTM [37;40m- installs gtag mods (Built after this)
echo [36mSSC [37;40m- color settings
echo [36mma [37;40m- shows my solcia medias
echo [36mIPP [37;40m- ip pinger (cant ddos cus you can gte a fine)

pause
goto start
:gtagmods
start "" gtaghacks.bat
exit

:ssc
set /p color="ssc>[36m"
color %color%
goto start
:ma
echo [36my - [37;40myoutube
echo [36md - [37;40mdiscord
set /p media=">[36m"
if /I "%media%"=="y" start "" https://www.youtube.com/@TheHeadphonesAreNeeded
if /I "%media%"=="d" start "" https://discord.gg/eZA38eaKvJ
goto start
:ipp
cls
set /p IP="[37;40mEnter Ip To Ping:[36m"
echo pinging %IP%
set /p COUNT="[37;40mHow Many Times To Ping:[36m"
if errorlevel 1 (
    echo  [91mInvalid number of pings. Please enter a valid number.[37;40m
    timeout /t 5 /nobreak >nul
	goto pinger
)
echo pinging %COUNT%
timeout /t 2 /nobreak >nul
set /p SIZE=[37;40mEnter the number of bytes to send:[36m 
echo Starting
timeout /t 1 /nobreak >nul
echo [45mPinging %IP% %COUNT% times with packet size %SIZE% bytes...
for /L %%i in (1,1,%COUNT%) do (
    echo.
    echo Ping attempt %%i:
    ping %IP% -n 1 -l %SIZE%
    timeout /t 1 >nul
)
if %ERRORLEVEL% EQU 0 (
    echo ip pinged!!
	timeout /t 2 /nobreak >nul
	goto start
) else (
    echo Pinging failed with error code %ERRORLEVEL%.
	timeout /t 2 /nobreak >nul
	goto start
:banner
echo [38;5;71m	███████╗ ██████╗██████╗ ██╗██████╗ ████████╗██╗██╗  ██╗
echo [38;5;72m	██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██║╚██╗██╔╝
echo [38;5;73m	███████╗██║     ██████╔╝██║██████╔╝   ██║   ██║ ╚███╔╝ 
echo [38;5;74m	╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ██║ ██╔██╗ 
echo [38;5;75m	███████║╚██████╗██║  ██║██║██║        ██║   ██║██╔╝ ██╗
echo [38;5;76m	╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚═╝╚═╝  ╚═╝[37;40m