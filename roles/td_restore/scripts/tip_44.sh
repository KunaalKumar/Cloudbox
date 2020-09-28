#/bin/bash
cd /mnt/remote
cp team* /etc/systemd/system/
cp merger* /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl restart team*
sudo systemctl enable team*
sudo systemctl restart mergerfs.service
sudo systemctl enable mergerfs.service
docker restart $(docker ps -q)
