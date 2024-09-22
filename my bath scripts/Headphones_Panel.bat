@echo off
color 01 
:start
cls
echo "                                                 Welcome To Headphones Planel                                         " 
echo "                                                    made by THAN | GTH                                                "  
echo "                                                    Instpired By malchi                                               "
echo "                                                                                                                      "
echo "                                                                                                                      "
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
echo "                                             | [1] get mods (:            |                                           "
echo "                                             | [2] Media                  |                                           "
echo "                                             | [3] close                  |                                           "
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
set /p choice="enter choice:" 
echo "                                            Starting %choice%                                                         "
timeout /t 2 /nobreak >nul
if /i "%choice%"=="get mods" goto getmods
if /i "%choice%"=="Media" goto Media
if /i "%choice%"=="close" goto end

:getmods
cls
echo this cant install bepinex it can only install plugins
echo installing bepinex may happen in the futter

set /p "dir=Enter the directory where your gtag plugins are: "
goto ifnotexitdis
timeout /t 2 /nobreak >nul
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
echo "                                             | [1] iis stupit menu        |                                           "
echo "                                             | [2] color name tags        |                                           "
echo "                                             | [3] cam mod                |                                           "
echo "                                             | [4] close                  |                                           "
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
set /p "modchoice=Choose Your Mod(1, 2, 3, 4):"
if /i "%modschoice%"=="1" goto stupitMenu
if /i "%modschoice%"=="2" goto ColorNameTags
if /i "%modschoice%"=="3" goto CamMod
if /i "%modschoice%"=="4" goto exit

goto end

:media
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
echo "                                             | [1] discord                |                                           "
echo "                                             | [2] youtube                |                                           "
echo "                                             | [3] tiktok                 |                                           "
echo "                                             |^^^^^^^^^^^^^^^^^^^^^^^^^^^^|                                           "
set /p mediachoice="enter choice (1, 2, 3):"
echo "                                            opening %mediachoice%                                                     "
timeout /t 2 /nobreak >nul
if /i "%mediachoice%"=="1" goto discord
if /i "%mediachoice%"=="2" goto youtube
if /i "%mediachoice%"=="3" goto tiktok



:tiktok
start "" your tiktok link
goto end
:youtube
start "" your youtube link
goto end
:discord
start "" dicord link here
goto end



:Checkforerror
if %ERRORLEVEL% EQU 0 (
    echo Download completed successfully.
) else (
    echo Download failed with error code %ERRORLEVEL%.
)


:ifnotexitdis
if not exist "%dir%" (
    echo Directory does not exist. restarting
	timeout /t 2 /nobreak >nul
	goto start
    
)
:: mods downloads

:ColorNameTags
echo soon
echo restarting
timeout /t 2 /nobreak >nul
goto start
:stupitMenu
echo soon
echo restarting
timeout /t 2 /nobreak >nul
goto start
:CamMod
echo soon
echo restarting
timeout /t 2 /nobreak >nul
goto start
:end
echo script has ended 
set /p close="do you want to restart (y or N)"
if /i "%close%"=="y" goto start

if /i "%close%"=="n" pause