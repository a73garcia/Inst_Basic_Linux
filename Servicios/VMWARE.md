# Instalacion VMWare

## Revision kernel instalados

Instalacion de VMWare Workstation en Fedora

Determinar que paquetes de Kernels estan instalados

```bash
dnf list installed "kernel-*"
# or
rpm -qa kernel
```

Ver el Kernel que se esta ejecutando

```bash
uname -r
```

Eliminar kerner

```bash
sudo dnf remove kernel-4.0.4-301.fc22.x86_64
```

## Instalación de VMWare

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

10. Levantar,parar, restablecer o comprobar el estado del servicio

Iniciar el servicio

```bash
sudo systemctl start vmware
#or
sudo systemctl start vmware.service
```

Parar el servicio

```bash
sudo systemctl stop vmware
#or
sudo systemctl stop vmware.service
```

Restablecer el servicio

```bash
sudo systemctl restart vmware
#or
sudo systemctl restart vmware.service
```

Comprobar el servicio

```bash
sudo systemctl status vmware
#or
sudo systemctl status vmware.service
```

11. Ejecutamos VMware

```bash
vmware
```

# Problemas de instalacion

Si tenemos problemas en la instalacion, ejecutar las siguientes instancias

Opción 1

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
Opción 2

```bash
wget https://github.com/mkubecek/vmware-host-modules/archive/player-15.5.2.tar.gz
tar -xvzf player-15.5.2.tar.gz
cd vmware-host-modules-player-15.5.2/
tar --create --file vmmon.tar vmmon-only
tar --create --file vmnet.tar vmnet-only
cp vm*.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
```
Opción 3

```bash
wget --debug --inet4-only https://codeload.github.com/mkubecek/vmware-host-modules/tar.gz/refs/heads/workstation-17.5.1

tar -zxvf workstation-17.5.1.tar.gz
cd vmware-host-modules-workstation-17.5.1/
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
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












