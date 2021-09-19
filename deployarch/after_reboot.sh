curl -O https://codeload.github.com/LukasDoesDev/deployarch/zip/master
pacman -Sy unzip
unzip master
cd deployarch-master
./after_reboot.sh
