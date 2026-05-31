#!/bin/sh
set -e

/usr/bin/entrypoint &
GITEA_PID=$!

echo "Waiting for Gitea to initialize..."
sleep 15

su git -c 'gitea admin user create --username "${GITEA_ADMIN_USER:-admin}" --password "${GITEA_ADMIN_PASSWORD:-admin}" --email "${GITEA_ADMIN_EMAIL:-admin@local}" --admin' || true
su git -c 'gitea admin user create --username "${GITEA_DEV_USER:-dev}" --password "${GITEA_DEV_PASSWORD:-dev}" --email "${GITEA_DEV_EMAIL:-dev@local}" --must-change-password=false' || true

wait "$GITEA_PID"
