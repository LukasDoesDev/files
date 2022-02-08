#cd /tmp
#curl -O https://raw.githubusercontent.com/LukasDoesDev/deployarch/master/install_software.sh
#chmod +x install_software.sh
#./install_software.sh

curl -O https://gitlab.com/LukasDoesDev/deployarch/-/archive/master/deployarch-master.zip
pacman -Sy unzip python
unzip deployarch-master.zip
cd deployarch-master
./install_software.sh
