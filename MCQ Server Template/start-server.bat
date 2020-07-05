@echo off
title MCQ Server
cls
:loop
  java -Xmx4096M -Xms4096M -jar server.jar nogui
  echo Opniew starten over 5 seconden...
  timeout /T 5
  goto loop

