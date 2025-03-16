# Instalar VMWare WorkStation

# Instalar VMWare
cd /tmp/
git clone https://aur.archlinux.org/paru-bin
cd paru-bin/
makepkg -si

sudo pacman -S fuse2 gtkmm linux-headers pcsclite libcanberra
paru -S --noconfirm --needed ncurses5-compat-libs
paru -S --noconfirm --needed  vmware-workstation

sudo systemctl enable vmware-networks.service vmware-usbarbitrator.service vmware-networks-configuration.service
sudo systemctl start vmware-networks.service vmware-usbarbitrator.service vmware-networks-configuration.service

sudo systemctl status vmware-networks.service vmware-usbarbitrator.service vmware-networks-configuration.service

#vmware-networks-configuration.service first to generate /etc/vmware/networking
#vmware-networks.service for guest network access (otherwise you will get an error could no connect 'ethernet 0' to virtual network and you will not be able to use vmware-netcfg)
#vmware-usbarbitrator.service for connecting USB devices to guest

sudo modprobe -a vmw_vmci vmmon

vmware
