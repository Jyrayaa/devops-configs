#!/bin/bash
# Install and secure MySQL
# Author: <Nahid Hasan>
# Date: 14.09.2025
set -e

echo "🔹 Installing MySQL..."
sudo apt update && sudo apt install -y mysql-server

echo "🔹 Starting MySQL service..."
sudo systemctl enable mysql
sudo systemctl start mysql

echo "🔹 Running secure installation..."
sudo mysql_secure_installation

echo "✅ MySQL setup complete."
