![Bash](https://img.shields.io/badge/Bash-Script-green)

# Bash MySQL Tools

# Description
This project demonstrates how Bash scripts can be used to interact with a MySQL/MariaDB database.  
It includes user authentication via database queries and automated database backup functionality.

# Technologies
- Bash
- MySQL / MariaDB
- Linux (mysqldump, mysql CLI)

# Architecture project

Developer
↓
Bash Scripts
↓
.env Configuration
↓
MySQL / MariaDB
↓
Database (users)
↓
Output (Terminal / Backup files)

## Project Structure

.
├── select_users.sh
├── backup.sh
├── .env.example
└── README.md

# How to run

1. Clone repository:
https://github.com/romanchernukha8-ctrl/bash-mysql-tools.git

2. Create .env file:
```bash
cp .env.example .env
nano .env
