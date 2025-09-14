#!/bin/bash
# Backup all databases with timestamp
# Author: <Nahid Hasan>
# Date: 14.09.2025

set -e
BACKUP_DIR="$HOME/mysql_backups"
mkdir -p $BACKUP_DIR

FILE="$BACKUP_DIR/db_$(date +%F_%H-%M).sql"

echo "🔹 Taking backup..."
mysqldump -u root -p --all-databases > $FILE

echo "✅ Backup stored at $FILE"
