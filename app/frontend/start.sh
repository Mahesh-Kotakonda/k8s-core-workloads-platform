#!/bin/sh
set -e

echo "Preparing nginx log directories..."
mkdir -p /var/log/nginx

echo "Generating env.js..."
cat <<EOF > /usr/share/nginx/html/env.js
const FRONTEND_VERSION = "${FRONTEND_VERSION:-unknown}";
const ENVIRONMENT = "${ENVIRONMENT:-unknown}";
EOF

echo "Starting nginx..."
exec nginx -g 'daemon off; access_log /var/log/nginx/access.log; error_log /var/log/nginx/error.log warn;'
