@echo off
chcp 65001 >nul
:realstart
goto makefile
cls
:start8
cls
call :logo
pause
echo //[1] getting current info:
echo loading...
timeout /nobreak /t 5 >nul
echo.
wmic bios get manufacturer, version, releaseDate
echo.
timeout /nobreak /t 2 >nul
pause
cls

:start2
call :logo
echo // [2] spoof HWID:
echo loading...
timeout /nobreak /t 2 >nul
pause
echo old softwere
echo.
wmic bios get manufacturer, version, releaseDate
echo.
echo new softwhere
timeout /nobreak /t 2 >nul
echo.
echo Manufacturer              ReleaseDate                Version
echo Cannida Megatrends Inc.  20230313000000.000000+232  ALASKA - 102734
echo.
pause
:makefile
mkdir Assets
echo Installing Assets

echo color 0b > Assets\color.txt
echo wmic bios get manufacturer, version, releaseDate  




echo HWID spoofer >> Assets\color.txt

echo usernumber={528362837} > Assets\usernumber.txt
echo HWID spoofer >> Assets\usernumber.txt
ehco installed assets starting
cls
goto start8





:logo
echo [38;5;231m	███████╗███████╗ ██████╗
echo [38;5;195m	██╔════╝██╔════╝██╔════╝
echo [38;5;159m	█████╗  ███████╗██║     
echo [38;5;123m	██╔══╝  ╚════██║██║     
echo [38;5;87m	███████╗███████║╚██████╗
echo [38;5;51m	╚══════╝╚══════╝ ╚═════╝ [97m
