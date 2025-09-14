-- Create database and user for DevOps demo
CREATE DATABASE devops_demo;

CREATE USER 'devops'@'%' IDENTIFIED BY 'StrongPass123';
GRANT ALL PRIVILEGES ON devops_demo.* TO 'devops'@'%';

FLUSH PRIVILEGES;
