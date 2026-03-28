@echo off
setlocal enabledelayedexpansion

call compile_only.bat
if !errorlevel! neq 0 exit /b 1

echo.
echo Starting application...
echo.

java -cp "bin;lib\jpcap.jar" netpacsniff.NetPackSniff

if !errorlevel! neq 0 (
    echo.
    echo ERROR: Failed to run application
    echo Make sure:
    echo 1. Npcap is installed (https://npcap.com/)
    echo 2. Running as Administrator
    echo 3. jpcap.jar is in lib\ folder
    pause
)
