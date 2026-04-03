#!/bin/bash

CONTAINER_NAME=$(hostname)
CONTAINER_IP=$(hostname -i)
CURRENT_DATE=$(date)

cat <<EOF > /usr/share/nginx/html/index.html
<html>
<head>
    <title>Container Details</title>
</head>
<body>
    <h2>Container Details</h2>
    <p><b>Container Name:</b> $CONTAINER_NAME</p>
    <p><b>Container IP:</b> $CONTAINER_IP</p>
    <p><b>Date:</b> $CURRENT_DATE</p>
</body>
</html>
EOF

# Start nginx
nginx -g "daemon off;"
