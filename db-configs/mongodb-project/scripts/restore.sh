#!/bin/bash
# Restore database from backup
# Author: <Nahid Hasan>
# Date: 14.09.2025
docker exec -it mongo_devops mongorestore /data/db_backup
echo "✅ Restore completed"
