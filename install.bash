#!/bin/bash
#
# Authored by Yuri Delgado
# Contact yuridelgado.dev

echo "Setting up..."
sudo dnf -y update
sudo dnf -y install dnf-plugins-core
sudo dnf install -y wget
sudo dnf install -y curl 
sudo dnf install -y unzip

echo "Snap"
sudo dnf install -y snapd && \
sudo ln -s /var/lib/snapd/snap /snap && \
snap --version
  
echo "VS Code"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
sudo dnf check-update && \
sudo dnf install -y code
  
echo "Spotify"
sudo snap install spotify
  
echo "Brave"
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ && \
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && \
sudo dnf install -y brave-browser
  
echo "Google Chrome"
sudo dnf install fedora-workstation-repositories && \
sudo dnf config-manager --set-enabled google-chrome && \
sudo dnf install google-chrome-stable -y && \
  
echo "Docker"
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo && \ 
sudo dnf install -y docker-ce docker-ce-cli containerd.io && \
echo 'Check the fingerprint in https://docs.docker.com/engine/install/fedora/' && \ 
sudo systemctl start docker && \
sudo usermod -aG docker $USER 
  
echo "DBeaver"
sudo dnf install -y java-11-openjdk-devel && \
wget -O /tmp/dbeaver.rpm https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm && \
sudo rpm -Uvh /tmp/dbeaver.rpm

echo "AWS CLI"
curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o | unzip && \
sudo ./aws/install 
  
echo "Google Cloud"
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
  
echo "Foliate"
sudo dnf install -y foliate 
  
echo "GIMP"
sudo dnf install -y gimp 
  
echo "Wine"
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/32/winehq.repo && \
sudo dnf install -y winehq-stable 
  
echo "Inkscape"
sudo dnf install -y inkscape 
  
echo "htop"
sudo dnf install -y htop instal
  
echo "LibreOffice"
sudo snap install libreoffice 
  
echo "VLC Media Player"
sudo dnf install -y vlc 

echo "Slack"
sudo snap install slack --classic 

echo "Transmission"
sudo snap install transmission --beta 

echo "Node.js"
sudo dnf install -y nodejs npm && \
sudo npm install -g nvm 

echo "Telegram"
sudo snap install telegram-desktop 

echo "Vim"
sudo dnf install -y vim 

echo "jq"
sudo dnf install -y jq 

echo "Finished" 