curl -O https://gitlab.com/LukasDoesDev/deployarch/-/archive/master/deployarch-master.zip
pacman -Sy unzip
unzip deployarch-master.zip
cd deployarch-master
./after_reboot.sh
