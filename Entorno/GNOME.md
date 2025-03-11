# [GNOME 3](https://wiki.manjaro.org/index.php/Install_Desktop_Environments)

GNOME 3 is an intuitive desktop environment that utilises a tablet or smartphone style interface to access applications. It is not compatible with compiz. Although GNOME is very easy to learn and use, it has limited customisation options and it can be difficult to configure. A 64 bit installation of Manjaro running GNOME uses about 447MB of memory.
Install a basic GNOME environment


```bash
sudo pacman -S gnome
 ```

Optional: To install extra themes, games, and features

```bash
sudo pacman -S gnome-extra

 ```

Optional: Install and use GDM, the recommended display manager for GNOME

GDM is installed as a dependency of GNOME. To enable it:

```bash
systemctl enable gdm.service --force
 ```

Optional: Install the Manjaro configuration and theming for GNOME

```bash
sudo pacman -S manjaro-gnome-settings manjaro-settings-manager
 ```

Create a new user for the new desktop environment

```bash
sudo useradd -mG lp,network,power,sys,wheel <username>
sudo passwd <username>
 ```
