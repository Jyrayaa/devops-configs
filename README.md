# DevOps Configuration Repository

This repository is designed to document and practice **Server Configuration** and **Database Configuration** in a structured way.  
It follows a monorepo style where all configs are organized into separate folders for clarity.  


## 📂 Project Structure
```
devops-configs/
│── server-configs/
│ ├── nginx/
│ ├── apache/
│ ├── traefik/
│ └── caddy/
│
│── db-configs/
│ ├── mysql/
│ ├── postgres/
│ └── mongodb/
│
└── README.md
```

## ⚡ Server Configuration

This section contains configuration files and documentation for popular web servers and reverse proxies:

- **Nginx** → Reverse proxy, load balancing, static file serving  
- **Apache** → Traditional web server, PHP support  
- **Caddy** → Easy HTTPS setup with automatic TLS  
- **Traefik** → Cloud-native reverse proxy & load balancer with Docker/K8s support  

👉 Each folder includes:
- Example configuration files  
- Docker setup (if applicable)  
- Documentation on usage  

---

## 🛢️ Database Configuration

This section contains configuration files and setup instructions for commonly used databases:

- **MySQL** → Relational database, SQL-based  
- **PostgreSQL** → Advanced relational database with strong features  
- **MongoDB** → NoSQL document-oriented database  

👉 Each folder includes:
- Configuration files  
- Docker Compose setup  
- Usage & connection examples  

---

## 🎯 Purpose

This repo is built for:
- **Learning** → Documenting different server and DB setups  
- **Practice** → Hands-on Docker & DevOps configurations  
- **Portfolio** → Showcase professional DevOps skills in a structured way  

---

## 🚀 How to Use

1. Clone the repository:
   ```
   git clone https://github.com/NahidCSERU/devops-configs.git
   cd devops-configs
   ```
2. Navigate to the desired config:
    ```
    cd server-configs/nginx
    ```
3. Follow the documentation inside each folder to run and test the setup.

## 📖 Documentation Style
- Each configuration folder contains:

    - `README.md` → Usage guide

    - `docker-compose.yml` (if needed)

    - Example config files (.conf, .cnf, .yaml)

## 🌟 Future Enhancements
- Add **CI/CD examples** for automated deployment

- Add **Terraform/Ansible** examples for infra automation

- Expand with **Redis, ElasticSearch, RabbitMQ** configs

## 👨‍💻 Author
Maintained by Nahid Hasan – Junioe DevOps Engineer   
📧 Contact: nahid.hasancseru@gmail.com
