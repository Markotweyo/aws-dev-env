# Install Nginx
sudo apt-get install -y nginx

# Configure Nginx reverse proxy
sudo nano /etc/nginx/sites-available/default
# Edit the Nginx configuration file with the following content:

server {
    listen 80;
    server_name <DOMAIN_NAME>;

    location / {
        proxy_pass http://localhost:<BACKEND_PORT>;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    location /api/ {
        proxy_pass http://localhost:<BACKEND_PORT>;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-
