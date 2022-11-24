#!/bin/bash
echo 'Installing the latest dotnet SDK and all needed dependencies'
#libicu67 works for Debian 11 only, will need a different version for different Debian version install
#libssl1.1 works for Debian versions 9-11.  Will need a different version for different Debian version install
echo 'Installing curl'
sudo apt-get --yes install curl
echo 'Downloading the dotnet-install script'
curl -O https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh
echo 'Modifying dotnet-install to be executable'
chmod +x ./dotnet-install.sh
echo 'Running dotnet-install.sh'
sudo ./dotnet-install.sh
echo 'Installing libc6'
sudo apt-get --yes install libc6
echo 'Installing libgcc-s1'
sudo apt-get --yes install libgcc-s1
echo 'Installing libgssapi-krb5-2'
sudo apt-get --yes install libgssapi-krb5-2
echo 'Installing libicu67 for Debian 11'
sudo apt-get --yes install libicu67 #Debian 11
echo 'Installing libssl1.1'
sudo apt-get --yes install libssl1.1 #Debian 9-11
echo 'Installing libstdc++6'
sudo apt-get --yes install libstdc++6
echo 'Installing zlib1g'
sudo apt-get --yes install zlib1g
echo 'Installing (optional) libgdiplus for System.Drawing.Common use'
sudo apt-get --yes install libgdiplus

