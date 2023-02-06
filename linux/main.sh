sudo visudo
# ----- init
sudo apt install && sudo apt upgrade -y && sudo apt update

# power off
# sudo poweroff -p

# ----- monitoring tool
# sudo apt install ncdu -y
# sudo apt install htop -y
# sudo apt install lm-sensors hddtemp psensor fancontrol -y

# extra
# sudo apt install net-tools nmap -y
# sudo apt install nmap -y

# sudo apt install gcc -y
# sudo apt install cmake -y
# sudo apt install perl -y
# sudo apt install yasm -y
# sudo apt install build-essential -y
# sudo apt install golang -y

sudo apt install \
ntp \
ncdu \
htop \
lm-sensors \
hddtemp \
fancontrol \
net-tools \
iftop \
iotop \
nmap \
gcc \
clang \
cmake \
perl \
yasm \
build-essential \
golang \
python3-pip \
python3-tk \
python3-apt \
docker.io \
docker-compose \
nodejs \
npm \
libsecret-1-dev \
-y

# apt install golang-go bc git curl httpie jq nano wget bsdmainutils base58 netcat  python2.7  apache2-utils -y

sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# 
# restart or open a new shell/terminal
#
# nvm install node


curl https://sh.rustup.rs -sSf | sh

# ----- ntp
# sudo apt install ntp -y
# check status
# ntpq -p

# ----- xrdp
sudo apt install xrdp -y
sudo adduser xrdp ssl-cert
sudo systemctl enable xrdp
sudo ufw allow 3389
sudo systemctl restart xrdp

# ----- docker
# sudo apt install docker.io -y

# ----- python
# sudo apt -y install python3-pip

# ----- miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x ~/Miniconda3-latest-Linux-x86_64.sh
~/Miniconda3-latest-Linux-x86_64.sh

# python
python3 --version
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
apt list | grep python3.11
sudo apt install python3.11 -y
sudo apt install python3.11-dev -y
sudo apt install python3.11-venv -y

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1

sudo update-alternatives --config python3
sudo update-alternatives --config python

curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11

python -m pip install testresources
python -m pip install cython
python -m pip install mypy
# ----- lean
sudo apt install python3-tk -y

python -m pip install cython

python -m pip install lean
source ~/.profile

python -m pip install websocket-client

conda install pandas -y
conda install matplotlib -y
conda install sqlalchemy -y
conda install -c conda-forge web3 -y
#pip3 install web3

# ----- useful commands
# folder summary size on disk
du -hs ~/ 
df -h

# execution rights
# sudo chmod +x /some/file

# listening ports
netstat -ntlp | grep LISTEN

# check opened ports
# nmap -sT 192.168.1.3

# ----- ssh
# firewall open port
sudo ufw allow 22
sudo iptables -L

sudo apt install openssh-server -y

# wget pub ssh key
mkdir -p ~/.ssh
# echo key >> ~/.ssh/authorized_keys
#echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDU8/7svQBc8AjU5ZVTVHkU9Jvo1cplecfzSqRpgpdAJ71+KTfkgt1IYIxtvPcKtHPCQK09BNq4QOaJHHk1KNDYPteQjLN/MUq/IJcpcluR7hTqMomJrPU2s/tQgpAiIjo2Wck1qJC/F9YKzz8LfYnJ2eUGsM8yN9otDa5IYhG8unQAUynmJNEc6el56EMgpOoK7+GzoZSCHTcpi5yYlKMzKOgqMejfVJvFNkSVMXUDpwQ9M2kL9QxFcVnaJKc+C+2eFEJfknVkqWcWIBYp6i3DT5J9DsjAVYNUoH4srV0+rcIZYANydtf2nMTgbL4tiN+NACqnuvQ7tbtMpdUNQ/i/TRxKlinBudbR/xNlD2zy4qmeSpIMcPrzDSrfb2CJ5WqnLZ57ZZMkVtLrvtbDVPhaGgkQ3tFJNq9Jv6LGUrG3KgwsZi7ailBDyg7pfUd4uhuS/2JHLosPwh6WL2xSTdfErLZn2YvwEf+4Pe24WTErKyeHzpd2PxGIKAsRT/K2s0E= m@zBook >> ~/.ssh/authorized_keys
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKlwEHesR2SKmFykdvKPnCBbBchL7Iw/bj92u248pO4wrpx6ESoduLKb+1yhYGfEjm7zZA1ClzTp2vcKgSndd9vHl66YxVlHvqV2NGAcrUGjEf4PvLw08RdiMlcJ1k03c9CEb2WKliXCpvxbrIWBs9eawhgJWbVUhKar+mwGE6MsO2Uy6jhGo99uJNcguA6C62UkaCRCb7obdk5vKtzLMUftRXnwY3sZn7oaizkTfpII7VQXE5mJasVMlKx/AwkdmQa6k9kXduegyTVZikmbYJ21Mv6HAlClFDxWc2R3el7+I16ps4dUX7eqLG7zaMWBeJIFvETX3q0fpfvUj9K7bf m@zBook >> ~/.ssh/authorized_keys
chmod -R go= ~/.ssh

# allow pub keys
sudo nano /etc/ssh/sshd_config
sudo ufw allow ssh
sudo systemctl restart ssh

echo put acpi_enforce_resources=lax into GRUB_CMDLINE_LINUX_DEFAULT
echo GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_enforce_resources=lax"
sudo nano /etc/default/grub
sudo update-grub

sudo sensors-detect
sudo systemctl enable lm-sensors

sudo pwmconfig
sudo service fancontrol start

# enumerate disks
sudo blkid
sudo lsblk

# sudo mkfs.ext4 /dev/vg01/lv01
# mv subfolder/* subfolder/.* .
# sudo nano /etc/fstab

iptables -t nat -A PREROUTING -p tcp -s 37.140.195.134 --dport 1338 -j DNAT --to-destination 5.141.84.6:1338

# who listens port
lsof -i :8000