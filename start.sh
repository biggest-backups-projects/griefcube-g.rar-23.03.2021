#!/bin/sh
while true
do
#rm -rf world_nether
#/bin/bash

#java -Xmx16G -Xms16G -XX:+UseG1GC -XX:+AlwaysPreTouch -XX:+UseLargePagesInMetaspace -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=50 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -DIReallyKnowWhatIAmDoingISwear -jar server.jar
java -Xms16G -Xmx16G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar server.jar
echo "Если хочешь остановить сервер - жми Ctrl+C до конца отсчёта"
echo "Перезагрузка через:"
for i in 1
do
echo "$i..."
sleep 1
done
echo "Перезагружаем"
done