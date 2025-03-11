#VMWare




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
