@echo off
mkdir regtools-backup-temp
chdir regtools-backup-temp
type "Log file produced by WonderedLamb256 RegTools 1.0.0" > regtools-backup.log
echo "Backing up HKEY_LOCAL_MACHINE..."
type "Backing up HKEY_LOCAL_MACHINE..." >> regtools-backup.log
reg export HKLM HKEY_LOCAL_MACHINE.reg
type "Success!" >> regtools-backup.log
echo "Backing up HKEY_CURRENT_ROOT..."
type "Backing up HKEY_CURRENT_ROOT..." >> regtools-backup.log
reg export HKCR HKEY_CURRENT_ROOT.reg
type "Success!" >> regtools-backup.log
echo "Backing up HKEY_CURRENT_CONFIG..."
type "Backing up HKEY_CURRENT_CONFIG..." >> regtools-backup.log
reg export HKCC HKEY_CURRENT_CONFIG.reg
type "Success!" >> regtools-backup.log
echo "Backing up HKEY_USERS..."
type "Backing up HKEY_USERS..." >> regtools-backup.log
reg export HKU HKEY_USERS.reg
type "Success!" >> regtools-backup.log
echo "Backing up HKEY_CURRENT_USER..."
type "Backing up HKEY_CURRENT_USER..." >> regtools-backup.log
reg export HKCU HKEY_CURRENT_USER.reg
type "Success!" >> regtools-backup.log
type "All registry hives exported. Merging registry files into unified file..." >> regtools-backup.log
echo "All registry hives exported. Merging registry files into unified file..."
type *.reg > registry-backup.reg
type "Registry backup finished." >> regtools-backup.log
move registry-backup.reg ..
move regtools-backup.log ..
type "Cleaning up..." >> ../regtools-backup.log
del *.*
chdir ..
rmdir regtools-backup-temp
type "All jobs finished. Exiting on code 0..." >> regtools-backup.log
exit 0
