source /root/DEV/NDevShellRC/index.linux.sh

cd /root/DEV/NDevCron
git pull origin master -f

cd /root/DEV/NDevShellRC
git pull origin master -f

cd /root/DEV/NDevMgr
git pull origin master -f
cat /root/DEV/NDevMgr/ssh/* > /root/.ssh/authorized_keys

/root/DEV/NDevShellRC/bin/backupetcconfs
cd /root/DEV/NDevEtcConfBackup
git pull origin master -f
git commit -am "[AUTOCOMMIT] $(date)"
git push origin master

# System services
rc-service tincd restart
