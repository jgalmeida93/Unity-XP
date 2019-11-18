### [Bash-it](https://github.com/Bash-it/bash-it)
```bash
sudo apt install -y undistract-me
wget -c https://github.com/hbin/top-programming-fonts/raw/master/Monaco-Linux.ttf
mkdir -p ~/.fonts;cp -rv Monaco* ~/.fonts
gsettings set org.gnome.desktop.interface monospace-font-name 'Monaco Regular 11'
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.fonts
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
bash ~/.bash_it/install.sh --silent
sed -i 's/bobby/powerline/g' ~/.bashrc
echo '
# Undistract-Me
. /usr/share/undistract-me/long-running.bash
notify_when_long_running_commands_finish_install' >> ~/.bashrc
sudo sed -i 's/took/levou/g' /usr/share/undistract-me/long-running.bash
sudo sed -i 's/dialog-information/xterm/g' /usr/share/undistract-me/long-running.bash
sudo sed -i 's/Long\ command\ completed/Comando\ concluído\!/g' /usr/share/undistract-me/long-running.bash
echo DPkg::Post-Invoke \{\"sed -i \'s/took/levou/g\' /usr/share/undistract-me/long-running.bash\"\;\}\; | sudo tee /etc/apt/apt.conf.d/100undistract-me
echo DPkg::Post-Invoke \{\"sed -i \'s/dialog-information/xterm/g\' /usr/share/undistract-me/long-running.bash\"\;\}\; | sudo tee -a /etc/apt/apt.conf.d/100undistract-me
echo DPkg::Post-Invoke \{\"sed -i \'s/Long\ command\ completed/Comando\ concluído\!/g\' /usr/share/undistract-me/long-running.bash\"\;\}\; | sudo tee -a /etc/apt/apt.conf.d/100undistract-me
```
