@echo off
setlocal enabledelayedexpansion

echo Compiling Network Packet Sniffer...
echo.

if not exist lib\jpcap.jar (
    echo ERROR: jpcap.jar not found in lib\ folder
    echo Please download Jpcap and place jpcap.jar in the lib\ folder
    echo See JPCAP_SETUP.md for instructions
    pause
    exit /b 1
)

if not exist bin mkdir bin

for /r src %%f in (*.java) do (
    echo %%f | find /V "src\temp" >nul 2>&1
    if !errorlevel! equ 0 (
        set "files=!files! "%%f""
    )
)

javac -cp "lib\jpcap.jar;lib\net.sourceforge.jpcap-0.01.16.jar;lib\fooware_CommandLine-1.0.jar;lib\javadoc_net.sourceforge.jpcap-0.01.16.jar;lib\dev-classes_net.ultrametrics-0.03.jar" -d bin !files!

if !errorlevel! equ 0 (
    echo.
    echo Compilation successful!
    echo Ready to run: run.bat
) else (
    echo.
    echo Compilation FAILED!
)

pause
