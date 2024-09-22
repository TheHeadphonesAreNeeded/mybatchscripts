@echo off
set /p username="enter username"
echo weclome to monkey hacker
timeout /t 3 /nobreak >nul  
echo monkey hacker assets loading
timeout /t 1 /nobreak >nul  
echo .
timeout /t 1 /nobreak >nul 
echo .
timeout /t 1 /nobreak >nul  
echo .
echo loaded clearing screen
timeout /t 2 /nobreak >nul  
cls
echo ready to hack? (y or n)
choice /c:NY /n /m "Yes or No:"


if errorlevel 1 set "key=N"
if errorlevel 2 set "key=Y"

if "%key%"=="N" (
    echo ok closeing tab
    timeout /t 2 /nobreak >nul
    exit
) else (
cls 
echo ok starting hack
set /p username="what is their discord:" 
timeout /t 2 /nobreak >nul
echo ok hacking %username%
timeout /t 2 /nobreak >nul
echo starting...
timeout /t 2 /nobreak >nul
echo ERROR display name needecd
timeout /t 1 /nobreak >nul
set /p displayname="error fixed enter display name:" 
timeout /t 2 /nobreak >nul
echo disaply name is %disaplyname%
timeout /t 2 /nobreak >nul
echo starting...
timeout /t 2 /nobreak >nul
echo reading names
timeout /t 2 /nobreak >nul
echo ERROR no pass list
timeout /t 2 /nobreak >nul
set /p wordlist="Drag in your pass list as a txt"
echo starting..
timeout /t 2 /nobreak >nul
echo starting pass check in:2 sec
timeout /t 2 /nobreak >nul
for /f %%a in (%wordlist%) do (
echo %%a
)








