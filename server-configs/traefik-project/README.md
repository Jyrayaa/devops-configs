Traefik Microservices Demo
==========================

A **DevOps-ready project** demonstrating how to run multiple **microservices** with **Traefik** as a reverse proxy, dynamic router, and automatic SSL provider.

This setup shows how Traefik auto-discovers Docker services via labels and routes traffic without writing separate reverse proxy configs.

## 🎯 What I Learned from this Project

- **Traefik as a Reverse Proxy** → How Traefik automatically discovers containers via Docker labels and routes traffic.  
- **Service Routing** → Routing multiple microservices (React frontend, Django backend, Node.js auth service) on the same host using domain/subdomain.  
- **Automatic SSL with Let’s Encrypt** → Configuring Traefik with ACME to generate and renew SSL certificates automatically.  
- **Docker Compose Integration** → Managing multiple services (frontend, backend, auth, db, monitoring) with one docker-compose.yml file.  
- **Networking in Docker** → How Traefik communicates with other containers through Docker networks.  
- **Load Balancing** → Using Traefik to balance requests across multiple backend instances.  
- **Security Best Practices** → Restricting access, SSL redirection, and securing Traefik’s dashboard.  
- **Monitoring & Observability** → Integrating Prometheus and Grafana to monitor services and visualize metrics.  
- **Infrastructure as Code** → Writing reusable and portable config files (traefik.yml, prometheus.yml, grafana provisioning).  
- **Real-world Microservices Workflow** → Understanding how multiple services (frontend, backend, auth, db, monitoring) interact in production-like setups.  

📂 Project Structure
```
traefik-microservices-demo/
├── docker-compose.yml
├── traefik/
│   ├── traefik.yml
│   └── acme.json   # SSL certificate storage
├── frontend/       # React service
│   └── Dockerfile
├── backend/        # Django API service
│   └── Dockerfile
├── auth/           # Node.js Auth service
│   └── Dockerfile
└── monitoring/
    ├── prometheus.yml
    └── grafana-provisioning/

 ```


⚙️ Services
-----------

*   **Traefik** → Reverse Proxy, SSL, Routing, Dashboard
    
*   **Frontend** → React app (port 3000)
    
*   **Backend** → Django API (port 8000)
    
*   **Auth** → Node.js Auth service (port 4000)
    
*   **DB** → PostgreSQL (port 5432)
    
*   **Prometheus** → Metrics collection (port 9090)
    
*   **Grafana** → Monitoring dashboards (port 3000)
    

🐳 Run the Project
------------------
```
docker-compose up -d   
```
### Access Services

*   Traefik Dashboard → [http://localhost:8080](http://localhost:8080)
    
*   Frontend → http://frontend.localhost
    
*   Backend → http://backend.localhost
    
*   Auth → http://auth.localhost
    
*   Prometheus → http://prometheus.localhost
    
*   Grafana → http://grafana.localhost
    

🔐 SSL (Production Ready)
-------------------------

Replace \*.localhost with real domain names.   
Traefik will automatically issue and renew **Let’s Encrypt SSL certificates** using the config in acme.json.
```
chmod 600 traefik/acme.json   
```

📊 Why Traefik?
---------------

*   Automatic service discovery via Docker labels   
*   No manual Nginx/Apache reverse proxy config  
*   Built-in Let’s Encrypt SSL management  
*   Perfect for **Microservices + Kubernetes + Docker** setups   
*   Easy integration with monitoring tools (Prometheus, Grafana)



## 📖 Resources

- [Traefik Official Docs](https://doc.traefik.io/traefik/)  
- [Docker + Traefik Guide (DigitalOcean)](https://www.digitalocean.com/community/tutorials/how-to-use-traefik-as-a-reverse-proxy-for-docker-containers-on-ubuntu-20-04)  
- [Let’s Encrypt & SSL](https://letsencrypt.org/docs/)  
