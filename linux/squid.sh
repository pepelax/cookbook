sudo apt update
sudo apt install squid
sudo apt install apache2-utils

# Create a password file:
sudo touch /etc/squid/passwd
sudo chown proxy:proxy /etc/squid/passwd
sudo chmod 640 /etc/squid/passwd

# Add users to the password file:
sudo htpasswd -c /etc/squid/passwd username

sudo nano /etc/squid/squid.conf

sudo systemctl restart squid
sudo ufw allow 3128/tcp
