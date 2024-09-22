@echo off
set /p ip="enter ip:"
echo getting ip
curl http://ipinfo.io/%ip%/json
start "" http://ipinfo.io/%ip%
pause
exit