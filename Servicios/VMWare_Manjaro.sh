# VMWare

## Manjaro




I also check this vmware service is the one only service failed on boot

sudo systemctl list-units --state=failed

but vmmon and vmnet successfully installed

vmware-modconfig --console --install-status

This is the result from journalctl -xeu

sudo journalctl -xeu vmware.service


dmesg | grep -iE 'secure|vmmon'





## Arch

pacman -S linux-headers

#VMWare-Keymaps
https://aur.archlinux.org/vmware-keymaps.git 

mhwd-kernel -l


#Herramientas GUI Kernels
manjaro-settings-manager -m msm_kernel




git clone -b workstation-15.1.0 https://github.com/mkubecek/vmware-host-modules.git
cd vmware-host-modules/
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
vmware-modconfig --console --install-all



#Instalar VMWare

sudo pacman -S dkms libxcrypt-compat
cd /tmp/
git clone https://aur.archlinux.org/vmware-keymaps.git
cd vmware-keymaps
makepkg -si

cd ..
git clone https://aur.archlinux.org/vmware-workstation.git
cd vmware-workstation
makepkg -si


