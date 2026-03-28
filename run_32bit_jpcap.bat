@echo off
REM Network Packet Sniffer - 32-bit jpcap version

cd /d "%~dp0"

REM Use the original 32-bit jpcap JAR and DLL
set CLASSPATH=bin;lib\jpcap.jar;lib\net.sourceforge.jpcap-0.01.16.jar;lib\fooware_CommandLine-1.0.jar;lib\javadoc_net.sourceforge.jpcap-0.01.16.jar;lib\dev-classes_net.ultrametrics-0.03.jar

REM Run with 32-bit jpcap library path
java -cp %CLASSPATH% -Djava.library.path="lib\jpcap-0.01.16-win32\lib" netpacsniff.NetPackSniff

pause
