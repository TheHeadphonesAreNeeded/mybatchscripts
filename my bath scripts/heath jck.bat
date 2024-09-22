@echo off
setlocal enabledelayedexpansion

set "report_file=C:\HealthCheck\system_health_report.txt"

echo System Health Report > %report_file%
echo --------------------- >> %report_file%
echo Date and Time: %date% %time% >> %report_file%
echo. >> %report_file%

echo CPU Usage: >> %report_file%
wmic cpu get loadpercentage >> %report_file%
echo. >> %report_file%

echo Memory Usage: >> %report_file%
wmic os get freephysicalmemory, totalvisiblememorysize >> %report_file%
echo. >> %report_file%

echo Disk Usage: >> %report_file%
wmic logicaldisk get caption, freespacesize, size >> %report_file%
echo. >> %report_file%

echo Report generated at %report_file%
pause