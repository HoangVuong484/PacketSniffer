# Jpcap Setup Instructions

## Step 1: Install Npcap (Native Library for Windows)
1. Download Npcap from: https://npcap.com/
2. Run the installer and complete the installation
3. Choose "Install Npcap in WinPcap API-compatible Mode" when prompted

## Step 2: Download Jpcap JAR
1. Download Jpcap from one of these sources:
   - SourceForge: https://sourceforge.net/projects/jpcap/files/
   - Or search "jpcap.jar" online
   
2. Extract the ZIP file

3. **Copy `jpcap.jar` to the `lib` folder** in this project directory
   - Path: `Network Packet Sniffer Coding\lib\jpcap.jar`

## Step 3: Compile and Run
Run the `compile_and_run.bat` or `compile_only.bat` scripts in this directory.

Alternatively, from command line:
```
javac -cp "lib\jpcap.jar" -d bin src\*.java src\netpacksniff\analyzer\*.java src\netpacksniff\stat\*.java src\netpacksniff\ui\*.java
java -cp "bin;lib\jpcap.jar" netpacsniff.NetPackSniff
```

## Note
- Run as Administrator for packet capture to work
- Make sure Npcap is installed before running
