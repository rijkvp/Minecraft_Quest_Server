# Perms in this directory
sudo chmod u+r+x *

# Download the datapack
./datapack.sh

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
