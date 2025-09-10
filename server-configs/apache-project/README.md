# Apache Config Demo 🚀

This project is a **demo setup of Apache HTTP Server configuration**, useful for **DevOps Engineers** learning Apache basics.  
It includes **Virtual Hosts, SSL, Rewrite, and Proxy settings**.

---

## 📂 Project Structure

- **apache2.conf** → Main global configuration file.
- **ports.conf** → Defines which ports Apache listens on.
- **envvars** → Environment variables for Apache runtime.
- **conf-available/** → Extra configs (e.g., security settings).
- **mods-available/** → Apache modules (SSL, Rewrite).
- **sites-available/** → All Virtual Host configurations.
- **sites-enabled/** → Enabled Virtual Hosts (symlinked).

---

## 🔧 Setup Instructions

```
# Clone repo
git clone https://github.com/NahidCSERU/devops-configs.git
cd apache-project

# Copy configs to Apache directory
sudo cp -r * /etc/apache2/

# Enable required modules
sudo a2enmod rewrite
sudo a2enmod ssl

# Enable sites
sudo a2ensite example.com.conf
sudo a2ensite api.example.com.conf

# Restart Apache
sudo systemctl restart apache2

```
## 📖 Resources
- [Apache Official Docs](https://httpd.apache.org/docs/)   
- [DigitalOcean Nginx Tutorials](https://www.digitalocean.com/community/tags/nginx)   
- [Certbot SSL Guide](https://certbot.eff.org/instructions)  

