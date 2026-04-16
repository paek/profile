#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="/backup/mysql"
DATE=$(date +%Y%m%d_%H%M%S)
DB_NAME="example_db"

mkdir -p "$BACKUP_DIR"

echo "[INFO] Starting backup"
mysqldump "$DB_NAME" > "${BACKUP_DIR}/${DB_NAME}_${DATE}.sql"

echo "[INFO] Backup completed: ${BACKUP_DIR}/${DB_NAME}_${DATE}.sql"