#!/bin/bash
set -e

/build.sh

cat > /root/.ngrok <<EOF
server_addr: ${DOMAIN}${TUNNEL_ADDR}
trust_host_root_certs: false
EOF

exec /ngrok/bin/ngrok "$@"
