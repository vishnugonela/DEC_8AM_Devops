# Step 1: Use official nginx image
FROM nginx:latest

# Step 2: Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Create a new index.html file
RUN echo "<html><body><h1>Hello Docker from Krishna</h1></body></html>" \
    > /usr/share/nginx/html/index.html

# Step 4: Expose port 80
EXPOSE 80
