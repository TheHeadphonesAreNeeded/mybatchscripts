@echo off

:userstuff
set /p user="enter user:"
cls
pause
:Menu
cls
mode con cols=102 lines=25
chcp 65001 >nul
cls

pause
echo loading...
timeout /t 3 > nul
echo LOADED
timeout /t 1 > nul
echo starting
timeout /t 1 > nul
cls
call :logo




REM LOGO


title main menu
echo [97m ============================
echo    [96m [1] get IP locoation (you enter someones ip and you get your locoation)
echo    [96m [2]channnel nuker (enter a webhook and send a message)
echo    [96m [3]coumter user info (just info about the users on your PC)
echo    [96m [4]Exit (exit)
echo    [96m [5]page 2 (next page)
echo [97m ============================
echo > settings.txt
echo %user% Choose option (1, 2, 3, 4)
set /p choice=  [34m"$%user%$:"
if "%choice%"=="1" goto getiplocoction
if "%choice%"=="2" goto channelnuker
if "%choice%"=="3" goto number3
if "%choice%"=="4" go
: error thing
echo [97mENTER A VALID CHOICE (restarting)
timeout /t 2 > nul
goto Menu
:getiplocoction
: get ip stuff
echo what is the ip you want to use %user%?
set /p ip=[34m"$%user%:"
pause
curl http://ipinfo.io/%ip%/json

pause
goto Menu
:channelnuker
echo [97menter the webhook %user%
set /p webhook="[34m$%user%&:"
cls
echo [97m%user% enter the message you wanna send
echo [97mTIP: add @everyone or @here
set /p message3=[34m"$%user%&:"
cls
echo [97menter time to wait after sending message (reccmended 5)
echo [97mTIP: less than 5 disord may block it
echo [97mTIP: ENTER A FUCKING NUMBER
set /p time=[34m"$%user%&:"

:loop
echo [97m%message3% | curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message3%\"}" %webhook%
timeout /t %time% > nul
goto :loop
:number3
cls
echo ============================
echo         user stuff
echo ============================
echo 1. users
echo 2. change user passs (RUN AS ADMIN)
echo 3. Exit
echo ============================
echo %user% Choose option (1, 2, 3, 4)
set /p choice1="$%user%&:"
if "%choice1%"=="1" net user
if "%choice1%"=="2" goto changeuserpass
if "%choice1%"=="3" goto gotomenu
echo ENTER VALID CHOICE (1,2,3)
goto number3
pause
:getusers
net user
pause
goto Menu
:changeuserpass
cls
echo enter the user thing 
echo TIP: to get the user thing use the user option and find the first text in the line
echo TIP: to use this run as admin
set /p usertochangepass="$%user%$:"
cls
ehco enter in the password you wanna_change it to
set /p passtochangeto="$%user%$"

net user %usertochangepass% %passtochangeto%
pause
goto Menu
:gotomenu
cls 
goto Menu
:page2
cls
title Main menu page 2
echo ============================
echo         Main Menu (page 2)
echo ============================
echo 1. get IP locoation
echo 2. go back
echo ============================
echo %user% Choose option (1, 2)
set /p choice2="$%user%$:"
if "%choice2%"=="2" goto menu
if "%choice2%"=="2" goto menu
:logo
                                                                                   
echo    [94m██╗  [94m██╗[94m██[94m██[94m███╗ [94m██[94m███╗ [94m██[94m██[94m██╗ [94m██[94m██[94m██╗ [94m██╗  [94m██╗ [94m██[94m██[94m██╗ [94m███╗   [94m██╗[94m██[94m██[94m███╗[94m██[94m██[94m███╗
echo    [94m██║  [94m██║[94m██╔════╝[94m██╔══[94m██╗[94m██╔══[94m██╗[94m██╔══[94m██╗[94m██║  [94m██║[94m██╔═══[94m██╗[94m██[94m██╗  [94m██║[94m██╔════╝[94m██╔════╝
echo    [94m██[94m██[94m███║[94m██[94m███╗  [94m██[94m██[94m███║[94m██║  [94m██║[94m██[94m██[94m██╔╝[94m██[94m██[94m███║[94m██║   [94m██║[94m██╔[94m██╗ [94m██║[94m██[94m███╗  [94m██[94m██[94m███╗
echo    [94m██╔══[94m██║[94m██╔══╝  [94m██╔══[94m██║[94m██║  [94m██║[94m██╔═══╝ [94m██╔══[94m██║[94m██║   [94m██║[94m██║[97m╚[94m██╗[94m██║[94m██╔══╝  [97m╚════[94m██║
echo    [94m██║  [94m██║[94m██[94m██[94m███╗[94m██║  [94m██║[94m██[94m██[94m██╔╝[94m██║     [94m██║  [94m██║[97m╚[94m██[94m██[94m██╔╝[94m██║ [97m╚[94m██[94m██║[94m██[94m██[94m███╗[94m██[94m██[94m███║
echo    [97m╚═╝  [97m╚═╝[97m╚══════╝[97m╚═╝  [97m╚═╝[97m╚═════╝ [97m╚═╝     [97m╚═╝  [97m╚═╝ [97m╚═════╝ [97m╚═╝  [97m╚═══╝[97m╚══════╝[97m╚══════╝