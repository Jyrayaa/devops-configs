#!/bin/bash
# Create admin/root user in MongoDB
# Author: <Nahid Hasan>
# Date: 14.09.2025

docker exec -it mongo_devops mongo admin --eval '
db.createUser({
  user: "devops",
  pwd: "StrongPass123",
  roles: [{role: "root", db: "admin"}]
})'

echo "✅ User 'devops' created with root role."
