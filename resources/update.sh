#!/bin/bash

clear

# AppImageD
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja atualizar o AppImageD? (s/n)";;
        esac
    done
}

if promptyn "Você deseja atualizar o AppImageD? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/appimaged_1-alpha-git0f1c320.travis214_amd64.deb
  sudo apt install -y ./appimaged_1-alpha-git0f1c320.travis214_amd64.deb;rm -rfv appimaged*.deb
  sudo cp -rfv /usr/share/applications/appimaged*.desktop /etc/xdg/autostart/
else
  clear
fi

# OCS-URL
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o OCS-URL? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o OCS-URL? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/ocs-url_3.1.0-0ubuntu1_amd64.deb
  sudo apt install -y ./ocs-url_3.1.0-0ubuntu1_amd64.deb;rm -rfv ocs-url*.deb
else
  clear
fi

# GpuTest
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o GpuTest? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o GpuTest? (s/n)"; then
  sudo apt intall -y python-tk
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/GpuTest_Linux_x64_0.7.0.zip
  mkdir -pv $HOME/.local/share/applications
  unzip GpuTest_Linux_x64_0.7.0.zip -d $HOME/.local/share/;rm -rfv GpuTest*.zip
  wget -cO $HOME/.local/share/applications/gputest.desktop https://github.com/rauldipeas/Unity-XP/raw/master/resources/gputest.desktop
else
  clear
fi

# Stacer
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o Stacer? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o Stacer? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/stacer_1.1.0_amd64.deb
  sudo apt install -y ./stacer_1.1.0_amd64.deb;rm -rfv stacer*.deb
else
  clear
fi

# Compiz Plugins
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar os plugins do Compiz? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar os plugins do Compiz? (s/n)"; then
    sudo apt install -y compiz-plugins
else
  clear
fi

# Nemo MIME
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja atualizar as configurações de MIME? (s/n)";;
        esac
    done
}

if promptyn "Você deseja atualizar as configurações de MIME? (s/n)"; then
  sudo sed -i 's/inode\/directory=code.desktop;nemo.desktop;/inode\/directory=nemo.desktop;code.desktop;/g' /usr/share/applications/mimeinfo.cache
else
  clear
fi

# Yaru++ (Papirus Status)
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja mudar os ícones de status para o tema Papirus? (s/n)";;
        esac
    done
}

if promptyn "Você deseja mudar os ícones de status para o tema Papirus? (s/n)"; then
  sudo sed -i 's/Papirus/Yaru/g' /usr/share/icons/Yaru++/index.theme
  sudo sed -i 's/Yaru,/Papirus,/g' /usr/share/icons/Yaru++/index.theme
  sudo rm -rfv /usr/share/icons/Yaru++/status/*
  sudo ln -s /usr/share/icons/Papirus/22x22/panel/ /usr/share/icons/Yaru++/status/24
  gsettings set org.gnome.desktop.interface icon-theme Yaru++
else
  clear
fi

# Diodon
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o Diodon? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o Diodon? (s/n)"; then
  sudo apt install -y diodon
else
  clear
fi

# XanMod
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o kernel XanMod? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o kernel XanMod? (s/n)"; then
  echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
  wget -O- https://dl.xanmod.org/gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/xanmod-kernel.gpg
  sudo apt update
  sudo apt install -y linux-xanmod
else
  clear
fi

# Crow Translate
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o Crow Translate? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o Crow Translate? (s/n)"; then
  wget -c https://github.com/crow-translate/crow-translate/releases/download/2.2.3/crow-translate-2.2.3-amd64.deb
  sudo apt install -y ./crow-translate-2.2.3-amd64.deb;rm -rfv crow-translate*.deb
else
  clear
fi

# Light GTK Greeter
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja mudar o greeter do LightDM para o GTK? (s/n)";;
        esac
    done
}

if promptyn "Você deseja mudar o greeter do LightDM para o GTK? (s/n)"; then
  sudo apt install -y lightdm-gtk-greeter-settings
  sudo wget -O /etc/lightdm/lightdm-gtk-greeter.conf https://github.com/rauldipeas/Unity-XP/raw/master/code/settings/lightdm-gtk-greeter.conf
else
  clear
fi

# Fonts EmojiOne
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja instalar o suporte à emojis? (s/n)";;
        esac
    done
}

if promptyn "Você deseja instalar o suporte à emojis? (s/n)"; then
  sudo apt install -y fonts-emojione
else
  clear
fi

# Placidity Plymouth
promptyn () {
    while true; do
        read -p "$1 " sn
        case $sn in
            [Ss]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Você deseja mudar o tema do Plymouth para o Placidity? (s/n)";;
        esac
    done
}

if promptyn "Você deseja mudar o tema do Plymouth para o Placidity? (s/n)"; then
  wget -c https://github.com/rauldipeas/Unity-XP/raw/master/resources/placidity.tar.gz
  sudo tar -vzxf placidity.tar.gz -C /usr/share/plymouth/themes/;rm -rfv placidity*
  sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth 100
  sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/placidity/placidity.plymouth
  sudo update-initramfs -u -k all
else
  clear
fi
