# 1. Write a dockerfile to create nginx image with "hello docker from <Vishnu>"

FROM nginx
RUN rm -f /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
ENTRYPOINT ["/bin/sh", "-c", "/usr/sbin/nginx"]
