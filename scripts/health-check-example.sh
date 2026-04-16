#!/usr/bin/env bash
set -euo pipefail

HOST="127.0.0.1"
PORT="80"

if nc -z "$HOST" "$PORT"; then
  echo "[OK] Service is reachable on ${HOST}:${PORT}"
else
  echo "[CRITICAL] Service is not reachable on ${HOST}:${PORT}"
  exit 1
fi