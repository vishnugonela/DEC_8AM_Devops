FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

RUN echo '#!/bin/sh' > /start.sh && \
    echo 'CONTAINER_NAME=$(hostname)' >> /start.sh && \
    echo 'CONTAINER_IP=$(hostname -i)' >> /start.sh && \
    echo 'TODAY_DATE=$(date)' >> /start.sh && \
    echo 'echo "<html><body>" > /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'echo "<h1>CONTAINER DETAILS</h1>" >> /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'echo "Container Name: $CONTAINER_NAME<br>" >> /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'echo "Container IP: $CONTAINER_IP<br>" >> /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'echo "Today Date: $TODAY_DATE<br>" >> /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'echo "</body></html>" >> /usr/share/nginx/html/index.html' >> /start.sh && \
    echo 'nginx -g "daemon off;"' >> /start.sh

RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]