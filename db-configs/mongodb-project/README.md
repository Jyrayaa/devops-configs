# MongoDB DevOps Demo Project 🚀

This project demonstrates how a DevOps Engineer can configure, secure, and manage MongoDB using Docker.

## 📂 Structure
- **config/** → MongoDB configuration file (`mongod.conf`)
- **scripts/** → Automation scripts (setup, create user, backup, restore)
- **logs/** → Example MongoDB logs
- **examples/** → Sample DB initialization script
- **docker-compose.yml** → Run MongoDB container

## 🛠 Usage
```
# Start MongoDB
bash scripts/setup_mongo.sh

# Create admin user
bash scripts/create_user.sh

# Backup databases
bash scripts/backup.sh

# Restore databases
bash scripts/restore.sh
```
## DevOps Scope

- Secure MongoDB with authentication (RBAC)

- Configure network & storage

- Backup & restore

- Monitor logs

- Prepare for replica sets