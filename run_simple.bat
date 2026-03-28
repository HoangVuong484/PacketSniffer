@echo off
REM Network Packet Sniffer - 64-bit version

cd /d "%~dp0"

REM Set the classpath with 64-bit jpcap
set CLASSPATH=bin;lib\jpcap-x64.jar

REM Run with 64-bit library path
java -cp %CLASSPATH% -Djava.library.path="lib" netpacsniff.NetPackSniff

pause
