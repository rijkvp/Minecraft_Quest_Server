# Make sure the JRE is installed
sudo apt install default-jre

# Perms in this directory
sudo chmod u+r+x *

# Delete the old server copy
./delete-server.sh

# Create a copy of the template
echo Copying templete...
cp -R -T server-template server-copy

# Download the datapack
./datapack.sh

# Go to the copied folder
cd ./server-copy

# Give perms
sudo chmod u+r+x *

# Update IP
echo Updating IP...
sudo sed -i -E "s/^(server-ip[[:blank:]]*=[[:blank:]]*).*/\1$(hostname -I | awk '{print $1}')/" server.properties

echo Starting server...
./start.sh
