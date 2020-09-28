#!/bin/bash
cd /opt/sarotate/system
sudo cp /opt/sarotate/system/sarotate.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable sarotate.service
sudo systemctl start sarotate.service

