echo 'update & upgrade'
apt update && apt upgrade -y
echo 'install unzip'
apt install unzip

echo 'set new wallpaper'
wget -O /tmp/wallpaper.jpg 'https://wallpapercave.com/wp/wp8149239.jpg'
gsettings set org.gnome.desktop.background picture-uri file:////tmp/wallpaper.jpg

echo 'install gnome-tweaks & -shell'
apt install gnome-tweaks gnome-shell gnome-shell-extensions -y

echo 'install chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb 

echo 'remove firefox'
apt remove firefox -y

echo 'open gnome extentions website'
google-chrome 'https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep'
sleep 4 
google-chrome 'https://extensions.gnome.org/extension/19/user-themes/'

sleep 5

echo 'install icon-theme'
wget https://github.com/vinceliuice/WhiteSur-icon-theme/archive/refs/tags/2022-05-11.zip
unzip 2022-05-11.zip
./WhiteSur-icon-theme-2022-05-11/install.sh

echo 'install gtk-theme'
wget https://github.com/vinceliuice/WhiteSur-gtk-theme/archive/refs/tags/2022-02-21.zip
unzip 2022-02-21.zip
./WhiteSur-gtk-theme-2022-02-21/install.sh

echo 'install discord'
snap install discord
echo 'install vscode'
snap install --classic code

echo 'install gitkraken'
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb

echo 'open gnome-tweaks'
gnome-tweaks