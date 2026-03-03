FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
RUN echo "hello world from Jpraveen" > /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]