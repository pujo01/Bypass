@echo off
REM Start
echo Start...
setlocal
time 12:00:00
date 10-03-2023

REM Wait 1m 30s
echo You have 1 minute to start Bkebi!
powershell -Command "Start-Sleep -s 60"

REM Resync time
echo Resync...
w32tm /stripchart /computer:time.windows.com /samples:1 /dataonly /packetinfo
w32tm /resync
set "syncTime=%time%"
set "syncDate=%date%"
echo Sync time: %syncDate% %syncTime%

echo Successfully.
pause