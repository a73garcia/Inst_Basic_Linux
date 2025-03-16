# VMWare WorkStation

# Instalar VMWare
cd /tmp/
git clone https://aur.archlinux.org/paru-bin
cd paru-bin/
makepkg -si

sudo pacman -S fuse2 gtkmm linux-headers pcsclite libcanberra

git clone https://aur.archlinux.org/vmware-keymaps.git
cd vmware-keymaps
makepkg -si
cd ..
git clone https://aur.archlinux.org/vmware-workstation.git
cd vmware-workstation
makepkg -si

paru -S --noconfirm --needed ncurses5-compat-libs
paru -S --noconfirm --needed  vmware-workstation

sudo systemctl enable vmware-networks.service vmware-usbarbitrator.service vmware-networks-configuration.service
sudo systemctl start vmware-networks.service vmware-usbarbitrator.service vmware-networks-configuration.service

sudo systemctl status vmware-networks.service 
sudo systemctl status vmware-usbarbitrator.service 
sudo systemctl status vmware-networks-configuration.service

#vmware-networks-configuration.service first to generate /etc/vmware/networking
#vmware-networks.service for guest network access (otherwise you will get an error could no connect 'ethernet 0' to virtual network and you will not be able to use vmware-netcfg)
#vmware-usbarbitrator.service for connecting USB devices to guest

sudo modprobe -a vmw_vmci vmmon

#VM-Tools
sudo /usr/bin/vmware-uninstall-tools.pl
sudo pacman -S open-vm-tools

reboot

vmware
