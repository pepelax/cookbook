# Wine version to install: stable or devel
WINE_VERSION="stable"

# Prepare: switch to 32 bit and add Wine key
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Get Ubuntu version and trim to major only
OS_VER=$(lsb_release -r |cut -f2 |cut -d "." -f1)
# Choose repository based on Ubuntu version
if (( $OS_VER >= 23)); then  
  sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/lunar/winehq-lunar.sources
elif (( $OS_VER < 23 )) && (( $OS_VER >= 22 )); then
  sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
elif (( $OS_VER < 22 )) && (( $OS_VER >= 21 )); then
  sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/impish/winehq-impish.sources
elif (( $OS_VER < 21 )) && (( $OS_VER >=20 )); then
  sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources
elif (( $OS_VER < 20 )); then
  sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/bionic/winehq-bionic.sources
fi

# Update package and install Wine
sudo apt update && sudo apt upgrade -y
sudo apt install -y --install-recommends winehq-$WINE_VERSION

# sudo apt install -y \
#   wine \
#   wine32 \
#   wine64 \
#   winbind

echo $DISPLAY
