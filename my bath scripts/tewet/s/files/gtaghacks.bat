@echo off
chcp 65001 >nul
mode 70,45
:start
title main menu - By @the_headphones.dll
cls
echo [38;5;70m 	██████╗ ████████╗ ███╗   ███╗ ██████╗ ██████╗ ███████[97m
echo [38;5;71m  	██╔════╝╚══██╔══╝████╗ ████║██╔═══██╗██╔══██╗██╔════╝[97m
echo [38;5;72m	██║  ███╗  ██║   ██╔████╔██║██║   ██║██║  ██║███████╗[97m
echo [38;5;73m 	██║   ██║  ██║   ██║╚██╔╝██║██║   ██║██║  ██║╚════██║[97m
echo [38;5;74m 	╚██████╔╝  ██║   ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████║[97m
echo [38;5;75m 	 ╚═════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝[97m
echo [43mTIP[37;40m: type help for commands
echo [43mTIP[37;40m: use the command setdir before using install
set /p input=">[36m"
if /I "%input%"=="help" goto help
if /I "%input%"=="install" goto install
if /I "%input%"=="setdir" goto setdir
if /I "%input%"=="openplugins" goto openplugins


echo  [41;91menter a valid response[37;40m
pause
goto start



:help
title help - By @the_headphones.dll
cls
echo [38;5;70m 	██████╗ ████████╗ ███╗   ███╗ ██████╗ ██████╗ ███████[97m
echo [38;5;71m  	██╔════╝╚══██╔══╝████╗ ████║██╔═══██╗██╔══██╗██╔════╝[97m
echo [38;5;72m	██║  ███╗  ██║   ██╔████╔██║██║   ██║██║  ██║███████╗[97m
echo [38;5;73m 	██║   ██║  ██║   ██║╚██╔╝██║██║   ██║██║  ██║╚════██║[97m
echo [38;5;74m 	╚██████╔╝  ██║   ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████║[97m
echo [38;5;75m 	 ╚═════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝[97m
echo [36minstall [37;40m- installs gtag mods
echo [36msetdir [37;40m- set your gtag dir
echo [36mopenplugins [37;40m- opens your gtag plugin
pause >nul
goto start
:setdir
cls
echo [38;5;70m 	██████╗ ████████╗ ███╗   ███╗ ██████╗ ██████╗ ███████[97m
echo [38;5;71m  	██╔════╝╚══██╔══╝████╗ ████║██╔═══██╗██╔══██╗██╔════╝[97m
echo [38;5;72m	██║  ███╗  ██║   ██╔████╔██║██║   ██║██║  ██║███████╗[97m
echo [38;5;73m 	██║   ██║  ██║   ██║╚██╔╝██║██║   ██║██║  ██║╚════██║[97m
echo [38;5;74m 	╚██████╔╝  ██║   ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████║[97m
echo [38;5;75m 	 ╚═════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝[97m
title setdir - By @the_headphones.dll
set /p outputFolder=dir:
echo [42mdirectorty saved[37;40m
pause
mkdir Assets
echo %dir% > Assets\dire.txt
goto start
:install
title install - By @the_headphones.dll
cls
echo [38;5;70m 	██████╗ ████████╗ ███╗   ███╗ ██████╗ ██████╗ ███████[97m
echo [38;5;71m  	██╔════╝╚══██╔══╝████╗ ████║██╔═══██╗██╔══██╗██╔════╝[97m
echo [38;5;72m	██║  ███╗  ██║   ██╔████╔██║██║   ██║██║  ██║███████╗[97m
echo [38;5;73m 	██║   ██║  ██║   ██║╚██╔╝██║██║   ██║██║  ██║╚════██║[97m
echo [38;5;74m 	╚██████╔╝  ██║   ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████║[97m
echo [38;5;75m 	 ╚═════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝[97m
set "url=https://github.com/BepInEx/BepInEx/releases/download/v5.4.23.2/BepInEx_win_x64_5.4.23.2.zip"   :: Replace with your ZIP file URL
set "zipFile=BepInEx_win_x64_5.4.23.2.zip"

echo [37;40mDownloading ZIP file...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %zipFile%"

:: Check if the file was downloaded
if not exist "%zipFile%" (
    echo Failed to download the ZIP file.
    pause
    goto start
)

:: Create the output folder if it doesn't exist
if not exist "%outputFolder%" (
    echo Creating output folder...
    mkdir "%outputFolder%"
)

:: Extract the ZIP file (using tar in Windows 10+)
echo Extracting ZIP file...
tar -xf "%zipFile%" -C "%outputFolder%"

:: Check if extraction was successful
if %errorlevel% neq 0 (
    echo Failed to extract the ZIP file.
	pause
    goto start
)

echo Extraction successful.
pause
goto start
:openplugins
set "folder_path1=%dir%\BepInEx


REM Check if the folder exists
if not exist "%folder_path1%" (
    echo pls intsall mods
   pause
   goto start
)
set "folder_path=%dir%\BepInEx\plugins

REM Check if the folder exists
if not exist "%folder_path%" (
    echo Folder not found, creating it...
    mkdir "%folder_path%"
)
explorer "%folder_path%"
goto start
