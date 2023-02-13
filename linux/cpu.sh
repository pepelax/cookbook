lscpu

cat /proc/cpuinfo | grep "MHz"

sudo cpupower frequency-set -g performance
# sudo cpupower frequency-set -g powersave