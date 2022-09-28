@echo off
title Server Bungee

echo Server Bungee #0

set BGC=BungeeCord
set JAVA="C:\Program Files\Java\jdk-16.0.1\bin\java.exe"
set JAR=BungeeCord.jar
set RAM=1G
set FLAGS=-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=20 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Daikars.new.flags=true -Dusing.aikars.flags=https://mcflags.emc.gs

echo Starting server...
%JAVA% -Xmx%RAM% -Xms%RAM% %FLAGS% -jar %JAR% -nogui
echo Stop %BGC%
pause > null
cls
./start.bat