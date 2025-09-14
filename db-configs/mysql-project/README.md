# MySQL Guide

This repository contains notes and commands for **MySQL basics, configuration, and usage.**

## What is MySQL?

MySQL is an open-source **Relational Database Management System (RDBMS)** that uses **Structured Query Language (SQL)** to manage and manipulate data.

It is widely used in web applications, DevOps, and enterprise-level systems.
## Installation
**On Ubuntu/Debian**
```
sudo apt update
sudo apt install mysql-server -y
```
**On CentOS/RHEL**
```
sudo yum install mysql-server -y
sudo systemctl start mysqld
```
## Basic Commands
**Start / Stop / Restart Service**
```
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
```
**Check Status**
```
sudo systemctl status mysql
```
## MySQL Access
**Login as root**  
```
mysql -u root -p
```
**Show Databases**  
```
SHOW DATABASES;
```
**Create a Database**  
```
CREATE DATABASE mydb;
```
**Create a User and Grant Privileges**
```
CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'localhost';
FLUSH PRIVILEGES;
```
## Configuration File

**Main configuration file:**
```
/etc/mysql/my.cnf
```

**Common settings:**
```
[mysqld]
port = 3306
bind-address = 127.0.0.1
datadir = /var/lib/mysql
```
## Backup & Restore
**Backup a Database**
```
mysqldump -u root -p mydb > mydb_backup.sql
```
**Restore a Database**
```
mysql -u root -p mydb < mydb_backup.sql
```
## Security Best Practices

- Run `mysql_secure_installation` after installation.

- Use **strong passwords** for all users.

- Restrict remote root access.

- Regularly back up data.

- Monitor logs:
    ```
    tail -f /var/log/mysql/error.log
    ```
## References

[MySQL Official Docs](https://dev.mysql.com/doc/)

[DigitalOcean MySQL Tutorials](https://www.digitalocean.com/community/tags/mysql)