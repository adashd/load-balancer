#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<h1>This is $(hostname)</h1>" > /var/www/html/index.html