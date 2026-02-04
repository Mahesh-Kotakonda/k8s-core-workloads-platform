#!/bin/sh

cat <<EOF > /usr/share/nginx/html/env.js
const FRONTEND_VERSION = "${FRONTEND_VERSION}";
const ENVIRONMENT = "${ENVIRONMENT}";
EOF

nginx -g 'daemon off;'
