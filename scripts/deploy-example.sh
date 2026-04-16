#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/opt/app"
BRANCH="main"

echo "[INFO] Moving to application directory"
cd "$APP_DIR"

echo "[INFO] Pulling latest code"
git pull origin "$BRANCH"

echo "[INFO] Restarting service"
systemctl restart nginx

echo "[INFO] Deployment completed successfully"