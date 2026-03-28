@echo off
setlocal enabledelayedexpansion

echo Starting Network Packet Sniffer...
echo.

if not exist lib\jpcap.jar (
    echo ERROR: jpcap.jar not found in lib\ folder
    echo Please download Jpcap and place jpcap.jar in the lib\ folder
    echo See JPCAP_SETUP.md for instructions
    pause
    exit /b 1
)

if not exist bin (
    echo bin\ folder not found. Compiling...
    call compile_only.bat
    if !errorlevel! neq 0 exit /b 1
)

echo.
java -cp "bin;lib\jpcap.jar;lib\net.sourceforge.jpcap-0.01.16.jar;lib\fooware_CommandLine-1.0.jar;lib\javadoc_net.sourceforge.jpcap-0.01.16.jar;lib\dev-classes_net.ultrametrics-0.03.jar" -Djava.library.path="lib\jpcap-0.01.16-win32\lib" netpacsniff.NetPackSniff

if !errorlevel! neq 0 (
    echo.
    echo ERROR: Failed to run application
    echo Make sure:
    echo 1. Npcap is installed (https://npcap.com/)
    echo 2. Running as Administrator
    echo 3. jpcap.jar is in lib\ folder
    pause
)
