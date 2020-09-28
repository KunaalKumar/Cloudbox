#/bin/bash
cd /mnt
sudo mkdir -m 775 team-movies team-movies4k team-tv team-tv4k team-music
cd /mnt/remote
sudo cp team* /etc/systemd/system/
sudo cp merger* /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl restart team*
sudo systemctl enable team*
sudo systemctl restart mergerfs.service
sudo systemctl enable mergerfs.service
docker restart $(docker ps -q)
