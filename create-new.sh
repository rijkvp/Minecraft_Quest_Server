# Make sure the JRE is installed
sudo apt install default-jre

# Delete the old server copy
./delete-server.sh

# Create a copy of the template
echo Copying templete...
cp -R server-template server-copy

# Run the copied version
cd ./server-copy
./start.sh
