# Installing snap on Manjaro Linux

sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#Installing snap on Fedora

sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap
