#!/bin/bash

# Start NGINX
sudo systemctl start nginx

# Enable NGINX to start at boot
sudo systemctl enable nginx

# (Optional) Check NGINX status
sudo systemctl status nginx
