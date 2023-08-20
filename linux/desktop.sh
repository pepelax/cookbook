# install gui to ubuntu server
sudo apt update && sudo apt upgrade -y
sudo apt install -y xfce4 xfce4-goodies xrdp
# sudo apt install ubuntu-desktop -y
# sudo apt install ubuntu-mate-desktop -y
# sudo apt install cinnamon-desktop-environment 
# sudo apt install xfce4 -y
sudo service slim start

echo xfce4-session > ~/.xsession
# echo cinnamon-session > ~/.xsession

sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

# xfce4-panel -r

sudo apt install xrdp -y
sudo adduser xrdp ssl-cert
sudo systemctl enable xrdp
sudo ufw allow 3389
sudo systemctl restart xrdp

# DISPLAY=:0 wine ...

# xfce4 terminal
sudo update-alternatives --config x-terminal-emulator
