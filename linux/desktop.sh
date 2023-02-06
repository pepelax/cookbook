# install gui to ubuntu server
sudo apt update && sudo apt upgrade -y
sudo apt install slim -y
sudo apt install ubuntu-desktop -y
sudo service slim start

sudo apt install -y \
winehq \
wine32 \
winbind

sudo apt install xrdp -y
sudo adduser xrdp ssl-cert
sudo systemctl enable xrdp
sudo ufw allow 3389
sudo systemctl restart xrdp

echo $DISPLAY
# DISPLAY=:0 wine ...