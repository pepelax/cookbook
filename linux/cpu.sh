sudo apt install -y linux-tools-$(uname -r)

lscpu

cat /proc/cpuinfo | grep "MHz"

sudo cpupower frequency-set -g performance
# sudo cpupower frequency-set -g powersave

sudo systemctl enable cpupower
sudo systemctl start cpupower