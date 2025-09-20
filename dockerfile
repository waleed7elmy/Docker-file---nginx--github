FROM nginx:alpine

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom HTML
COPY index.html /usr/share/nginx/html/

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
