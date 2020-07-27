@echo off
title Minecraft Quest Server
cls
:loop
  java -Xmx2048M -Xms2048M -jar server.jar nogui
  echo Restarting in 10 seconden...
  timeout /T 10
  goto loop

