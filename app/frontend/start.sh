#!/bin/sh
set -e

echo "Generating env.js..."
cat <<EOF > /usr/share/nginx/html/env.js
const FRONTEND_VERSION = "${FRONTEND_VERSION:-unknown}";
const ENVIRONMENT = "${ENVIRONMENT:-unknown}";
EOF

echo "Starting nginx..."
exec nginx -g 'daemon off; error_log /dev/stderr warn;'
