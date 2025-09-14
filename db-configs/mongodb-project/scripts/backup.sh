#!/bin/bash
# Backup all databases
# Author: <Nahid Hasan>
# Date: 14.09.2025
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR

docker exec mongo_devops mongodump --out /data/db_backup
docker cp mongo_devops:/data/db_backup $BACKUP_DIR

echo "✅ Backup completed at $BACKUP_DIR/db_backup"
