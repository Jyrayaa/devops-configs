# 📘 Nginx Learning Journey for DevOps
Welcome to my Nginx Learning Repo 🚀   
Here, I document everything I learn about Nginx as a DevOps Engineer — from basics to production-grade setups. A structured repository documenting my journey of learning and practicing **Nginx** as a DevOps Engineer.  
Includes real-world examples, configs, and best practices for **Web Server, Reverse Proxy, Load Balancer, and SSL/TLS setup**.


## 📌 Overview
- Understand and configure Nginx for **multiple use cases**  
- Practice configs with **Node.js, Python, and static apps**  
- Learn production-ready concepts like **SSL, logging, monitoring, and security hardening**  

## ⚙️ Setup Guide
**Install Nginx**  
```
sudo apt update && sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
```
**Test Configuration**   
```
sudo nginx -t
sudo systemctl reload nginx
```
## 📂 Repo Structure
```
nginx-project/
├── nginx.conf
├── conf.d/
│   ├── reverse-proxy.conf
│   ├── load-balancer.conf
│   └── ssl.conf
├── sites-available/
│   ├── example-app.conf
│   ├── node-service.conf
│   └── django-service.conf
├── sites-enabled/   # (symlinked configs go here)
├── mime.types
└── README.md

```
📝 Topics I Have Learned
------------------------

### 🔹 1. Basics

*   What is Nginx?
    
*   Why use Nginx as a **Web Server** and **Reverse Proxy**
    
*   File structure (/etc/nginx/) overview
    

### 🔹 2. Core Config Files

*   **nginx.conf** → Main entry point for all configs
    
*   **conf.d/** → Small reusable configs (e.g., gzip, logging, caching)
    
*   **sites-available/** → Store all site configs (inactive by default)
    
*   **sites-enabled/** → Active sites via symlink
    
*   **mime.types** → Mapping file extensions to MIME types
    

### 🔹 3. Virtual Hosts & Reverse Proxy

*   Hosting multiple apps on different domains/subdomains
    
*   Reverse proxy to Node.js, Python (Flask/Django), etc.
    
*   Port-based microservice routing
    

### 🔹 4. SSL/TLS (HTTPS)

*   Generating self-signed certificates
    
*   Configuring free SSL with Let’s Encrypt (certbot)
    
*   Enforcing HTTPS redirection
    

### 🔹 5. Load Balancing

*   Using upstream {} to distribute traffic across services
    
*   Methods: Round-robin, Least connections, IP hash
    

### 🔹 6. Caching & Compression

*   Static content caching (images, CSS, JS)
    
*   Gzip/Brotli compression for faster performance
    

### 🔹 7. Security

*   Restrict access using IP allow/deny
    
*   Enable rate limiting
    
*   Secure headers (CORS, HSTS, etc.)
    
*   Hide Nginx version
    

### 🔹 8. Logging & Monitoring

*   Access logs & error logs
    
*   Custom log formats
    
*   Integration with CloudWatch
    

### 🔹 9. Advanced Setup

*   High Availability with Keepalived
    
*   Blue-Green / Zero Downtime Deployments
    
*   Automation with Terraform

## 📖 Resources  

- [Nginx Official Docs](https://nginx.org/en/docs/)  
- [DigitalOcean Nginx Tutorials](https://www.digitalocean.com/community/tags/nginx)  
- [Certbot SSL Guide](https://certbot.eff.org/instructions)  

## ⭐ Contribution

This repository is mainly for **learning and professional practice**.
Feel free to fork, explore, and suggest improvements.