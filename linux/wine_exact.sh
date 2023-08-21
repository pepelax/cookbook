wget -nc https://dl.winehq.org/wine-builds/winehq.key

# old way
# sudo apt-key add winehq.key

# new way
sudo gpg --no-default-keyring --keyring /etc/apt/trusted.gpg.d/winehq.gpg --import winehq.key

sudo apt install software-properties-common

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo dpkg --add-architecture i386
sudo apt update

apt-cache policy winehq-stable

sudo apt install -y winehq-stable=6.0.4~bionic-1 wine-stable=6.0.4~bionic-1 wine-stable-amd64=6.0.4~bionic-1 wine-stable-i386=6.0.4~bionic-1

sudo apt-mark hold winehq-stable wine-stable wine-stable-amd64 wine-stable-i386

# sudo apt install -y --install-recommends winehq-stable
