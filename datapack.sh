echo Downloading datapack...
sudo mkdir -p server-copy
cd server-copy
sudo mkdir -p world
cd world
sudo mkdir -p datapacks
cd datapacks
sudo rm -rf MCQuest_Datapack
sudo git clone https://github.com/Rijk-van-Putten/MCQuest_Datapack.git
cd ../../..
echo Downloaded datapack!