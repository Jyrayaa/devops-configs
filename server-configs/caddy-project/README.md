# Caddy Demo Project

## Overview
This repository demonstrates a **Caddy web server setup** for DevOps practice.  
Includes:
- Reverse proxy configuration
- Static file hosting
- Automatic HTTPS with Let's Encrypt
- Logging & systemd integration

## Structure
- `Caddyfile` → Main config
- `caddy.service` → Systemd service
- `logs/` → Access & error logs
- `sites/` → Sample frontend & backend
- `docs/` → Explanation of config and setup
## Caddy Configuration Explanation

### Caddyfile
- Defines frontend and backend routes
- Frontend: static file server
- Backend: reverse proxy to localhost:8000
- Logs defined for each service
- TLS enabled for backend with admin@example.com

### caddy.service
- Systemd unit to manage Caddy
- Run as user `caddy`
- Handles start, reload, restart
- Ensures service starts after network

### Logs
- Access and error logs stored in `logs/`
- Useful for debugging and monitoring

### Sites
- `frontend` → React static HTML
- `backend` → Python Flask backend API

## Resources
- [Caddy Official Docs](https://caddyserver.com/docs/)
- [Caddyfile Examples](https://caddyserver.com/docs/caddyfile)
