# Instalacion VMWare

Instalacion de VMWare Workstation en Fedora

1. Descargamos la aplicacion desde de la [pagina de Broadcom](https://support.broadcom.com/group/ecx/free-downloads)

2. Check sha256sum

```bash
sha256sum VMware-Workstation-Full-17.6.3-24583834.x86_64.bundle
```

3. Convertimos el archivo en ejecutable

```bash
chmod +x ~/Downloads/VMware-Workstation-Full-17.6.3-24583834.x86_64.bundle
```
4. Change root user

```bash
su
## OR ##
sudo -i
```

5. Verificamos que el sistema este actualizado

```bash
dnf update
```
Despues de actualizar el Kernel, reiniciamos el sistema

```bash
reboot
```

6. Instalamos la dependecias necesarias

```bash
dnf install kernel-devel kernel-headers gcc make patch wget
```

7. Ejecutamos er archivo de instalacion de vmware

```bash
/home/<username>/Downloads/VMware-Workstation-Full-17.6.3-24583834.x86_64.bundle
```

8. Construimos los módulos VMware

```bash
/usr/bin/vmware-modconfig --console --install-all
```

9. Ejecutamos VMware

```bash
reboot
```

10. Comprobamos estado del servicio

```bash
sudo systemctl status vmware
```

11. Ejecutamos VMware

```bash
vmware
```

# Problemas de instalacion

Si tenemos problemas en la instalacion, ejecutar las siguientes instancias

```bash
TMP_FOLDER=/tmp/patch-vmware
rm -fdr $TMP_FOLDER
mkdir -p $TMP_FOLDER
cd $TMP_FOLDER


git clone -b tmp/workstation-17.5.2-k6.9.1 https://github.com/nan0desu/vmware-host-modules.git
cd vmware-host-modules/
sudo make tarballs && sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
```
Una vez ejecutada, reiniciamos el sistema

```bash
reboot
```

# Desistalación VMWare

1. Change root user

```bash
su -
## OR ##
sudo -i
```

2. Check Installed Products

```bash
root@fedora-box:~$ vmware-installer -l
Product Name         Product Version     
==================== ====================
vmware-workstation   17.6.3-24583834  
```

3. Uninstall VMware Workstation

```bash
root@fedora-box:~$ vmware-installer -u vmware-workstation
All configuration information is about to be removed. Do you wish to
keep your configuration files? You can also input 'quit' or 'q' to
cancel uninstallation. [yes]: no

Uninstalling VMware Installer 3.1.0
    Deconfiguring...
[######################################################################] 100%
Uninstallation was successful.
```












