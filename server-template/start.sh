if  [ $1 == 0 ]
then
echo "starting with Vannila"
java -server -Xms4096M -Xmx32768M -XX:ParallelGCThreads=8 -jar vannila.jar nogui

elif [ $1 = 1 ]
then
echo "starting with Paper"
java -server -Xms4096M -Xmx32768M -XX:ParallelGCThreads=8 -jar paper.jar nogui
fi