FROM nginx:alpine

# Copy SPAs to nginx directory
COPY ./v1/ /usr/share/nginx/html
COPY ./v2/ /usr/share/nginx/html/v2

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf


EXPOSE 80
EXPOSE 8080