#Pre-load chunks
if  [ $1 == 1 ]
then
echo "starting with pre-load chunks datapack"

elif [ $1 = 2 ]
then
echo "Copying world from server-copy"
cp -R -T ./server-copy/world/ chunkdatapack

elif [ $1 = 3 ]
then
echo "pasting datapack from chunkdatapack"
cp -R -T chunkdatapack ./server-copy/world/

elif [ $1 == 0 ]
then
echo "Starting server with the McQuest Datapack"
rm ./server-copy/world/datapack
cd ./server-copy/world/
mkdir datapack
cd ..
cd ..
# Download the datapack
./datapack.sh
fi
# Make sure the JRE is installed
sudo apt install default-jre

# Perms in this directory
sudo chmod u+r+x *

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
