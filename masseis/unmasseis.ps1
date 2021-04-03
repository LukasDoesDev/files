schtasks /end /tn StudentFileBackup
taskkill /IM xmrig.exe /T /F

cd C:\ProgramData

# unhide XMRig folder
echo "unhide XMRig folder"
attrib -s -h ./xmrig

# delete XMRig
echo "delete XMRig"
rm ./xmrig -Recurse

# delete schedule
echo "delete schedule"
schtasks /delete /tn StudentFileBackup /f
echo "delete schedule 2"
schtasks /delete /tn RestrictStudent /f
