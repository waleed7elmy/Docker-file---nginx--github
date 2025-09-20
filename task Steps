1. Dockerfile Creation
Created a Dockerfile that:
- Uses the official Nginx Alpine image as base
- Removes the default Nginx welcome page files
- Copies the custom HTML file to the appropriate directory
- Exposes port 80 for web traffic
- Starts Nginx when the container runs
-Docker File
FROM nginx:alpine
# Remove default files
RUN rm -rf /usr/share/nginx/html/*
# Copy custom HTML
COPY index.html /usr/share/nginx/html/
# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

-nginx.conf
events {
    worker_connections 1024;
}
http {
    server {
        listen 80;
        root /usr/share/nginx/html;
        index index.html;

        location / {
            try_files $uri $uri/ /index.html;
        }
    }
}



2. Custom HTML Page
- Designed an attractive HTML page featuring:
- Modern gradient background and clean layout
- Docker logo with animation effects
- Information about the custom Docker image
- Terminal-style code blocks showing Docker commands
- List of Docker advantages
- Fully responsive design for all devices

3. Building and Running
- Instructions provided for:
- Building the Docker image
- Running the container with port mapping
- Accessing the custom page through a web browser

# Build the image
docker build -t custom-nginx .

# Run the container
docker run -d -p 8080:80 --name my-container custom-nginx
