# PostgreSQL Config Demo for DevOps

This project demonstrates how DevOps Engineers can configure PostgreSQL using Docker.

##  Features
- Custom `postgresql.conf` for performance tuning.
- Secure authentication via `pg_hba.conf`.
- User mapping with `pg_ident.conf`.
- Easy to run with Docker Compose.

## Setup
```
git clone https://github.com/your-username/postgres-config-demo.git
cd postgres-config-demo
docker-compose up -d
```
## Config Files

- `postgresql.conf` → Main PostgreSQL settings.

- `pg_hba.conf` → Client authentication rules.

- `pg_ident.conf` → Map OS users to DB users.

## Verify
```
docker exec -it postgres_devops psql -U devops -d devdb
```
Now you have a ready-to-use PostgreSQL with custom configuration!