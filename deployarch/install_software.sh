#cd /tmp
#curl -O https://raw.githubusercontent.com/LukasDoesDev/deployarch/master/install_software.sh
#chmod +x install_software.sh
#./install_software.sh

curl -O https://codeload.github.com/LukasDoesDev/deployarch/zip/master
pacman -Sy unzip python
unzip master
cd deployarch-master
./install_software.sh
