source /root/DEV/NDevShellRC/index.linux.sh

cd /home/neruthes/DEV/NDevCron
git pull origin master -f

cd /home/neruthes/DEV/NDevShellRC
git pull origin master -f

cd /home/neruthes/DEV/NDevMgr
git pull origin master -f
cat /home/neruthes/DEV/NDevMgr/ssh/* > /root/.ssh/authorized_keys
