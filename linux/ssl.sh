# sudo apt install -y certbot python3-certbot-nginx
sudo apt install -y letsencrypt
sudo certbot certonly --standalone --agree-tos --preferred-challenges http \
    -d www.online \
    -d mq.www.online -d docker.www.online \
    -d dashboard.www.online