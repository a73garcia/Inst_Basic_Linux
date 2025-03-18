# [KDE Plasma 6](https://wiki.manjaro.org/index.php/Install_Desktop_Environments)

The KDE community offers Plasma, a feature-rich and versatile desktop environment that provides several different styles of menu to access applications. An excellent built-in interface to easily access and install new themes, widgets, etc, from the internet is also worth mentioning. A 64 bit installation of Manjaro running KDE uses about 455MB of memory.

WarningThe various components for Plasma which is available using the internet, should be used with care. Theming on Plasma is not just a bunch of icons and colors - it is based on QML, the Qt model language which is specific for the used version of Qt.
Install a basic KDE Plasma environment

```bash
sudo pacman -S plasma kio-extras
 ```

Optional: Install KDE applications

To install a full set of K* applications use kde-applications-meta. This will be ~300 packages(including dependencies)

```bash
sudo pacman -S kde-applications-meta
 ```

Optional: Install and use SDDM, the recommended display manager for KDE

SDDM is installed as a dependency of plasma. To enable it

```bash
systemctl enable sddm.service --force
systemctl reboot
 ```

```bash
sudo pacman -S manjaro-kde-settings sddm-breath-theme manjaro-settings-manager
 ```

Create a new user for the new desktop environment

```bash
sudo useradd -mG lp,network,power,wheel <username>
sudo passwd <username>
 ```
