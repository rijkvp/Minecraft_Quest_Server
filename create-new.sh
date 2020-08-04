# Perms in this directory
sudo chmod u+r+x *

# Make sure the JRE is installed
sudo apt install default-jre

# Delete the old server copy
./delete-server.sh

# Create a copy of the template
echo Copying templete...
cp -R -T server-template server-copy

# Go to the copied folder
cd ./server-copy

# Give perms
sudo chmod u+r+x *

echo Starting server...
./start.sh

#Vannila/Paper
if  [ $1 == 0 ]
then
echo "starting with Vannila"
./start.sh 0 #Vanilla
./datapack.sh #Copying the newest Datapack
rm ./server-template/plugins/ViaVersion-3.0.1.jar
rm ./server-template/plugins/ViaBackwards-3.0.1.jar
rm ./server-template/plugins/ViaRewind-1.5.0.jar

elif [ $1 == 1 ]
then
echo "starting with Paper and SuperVanish"
rm ./server-template/plugins/ViaVersion-3.0.1.jar
rm ./server-template/plugins/ViaBackwards-3.0.1.jar
rm ./server-template/plugins/ViaRewind-1.5.0.jar
./start.sh 1 #Paper
./datapack.sh #Copying the newest Datapack

elif [ $1 == 2 ]
then
echo "starting with Paper and Viaversion & SuperVanish"
cp -R -T ./server-template/viaversion ./server-template/plugins
./start.sh 1 #Paper
./datapack.sh #Copying the newest Datapack
fi

