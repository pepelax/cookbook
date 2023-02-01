# https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-ubuntu

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update

# sdk
sudo apt install -y dotnet-sdk-7.0

# runtime
sudo apt update && sudo apt-get install -y aspnetcore-runtime-7.0

# runtime without ASP
sudo apt install -y dotnet-runtime-7.0

# Learn more about .NET: https://aka.ms/dotnet-docs
# Use 'dotnet --help' to see available commands or visit: https://aka.ms/dotnet-cli-docs

# new app
# dotnet new console --framework net6.0

# install package
# dotnet add package <package>