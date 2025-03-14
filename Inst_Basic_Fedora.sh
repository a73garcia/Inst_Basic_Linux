#!/bin/bash

echo -e "\033[33m
Configuración inicial del terminal e instalación de paquetes basicos despues de la intalación del SO de \033[1m\033[4m\033[32mFedora\033[0m

\033[0m"

# Actualizar paquetes y refrescar metadatos
echo -e "\033[31mActualizando sistema...\033[0m"

# Añadir repositorio de Visual Studio Code
echo -e "\033[31mAñadiendo repositorio de Visual Studio Code y PlexServer...\033[0m"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

echo -e "\033[31mActualizando los repositorios...\033[0m"
sudo dnf update --refresh -y

# Instalar paquetes necesarios
echo -e "\033[31mInstalando paquetes...\033[0m"
sudo dnf install git wget kate feh p7zip locate lsd bat net-tools neovim gparted curl fastfetch kitty dolphin gimp inkscape hexchat qbittorrent putty thunderbird keepassxc texlive texmaker powerline-fonts gnome-boxes code plexmediaserver timeshift

# Verificar actualizaciones
echo -e "\033[31mVerificando actualizaciones...\033[0m"
dnf check-update

echo -e "\033[31mInstalando Zsh...\033[0m"
sudo dnf install zsh -y

# Instalar ZSH y Clonar el tema powerlevel10k
echo -e "\033[31mInstalando Oh My Zsh...\033[0m"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Cambiar el shell a Zsh
echo -e "\033[31mCambiando el shell a Zsh...\033[0m"
chsh -s $(which zsh)

echo -e "\033[31mClonando Powerlevel10k...\033[0m"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Añadir plugins de Zsh
echo -e "\033[31mAñadiendo plugins para ZSH: Syntax Highlighting, Autosuggestions, zsh-z, Fast Syntax Highlighting, Autocomplete, fzf...\033[0m"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Descargar y configurar las fuentes Meslo
echo -e "\033[31mDescargando y configurando las fuentes Meslo...\033[0m"
cd /tmp/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip
mkdir -p ~/.local/share/fonts/meslolg
unzip Meslo.zip -d ~/.local/share/fonts/meslolg
fc-cache -v
cd ${ZSH_CUSTOM:-$HOME/}  

# Copiar la configuración personalizada de zshrc y p10k del repositorio
echo -e "\033[31mCopiando configuraciones personalizadas zshrc y p10k del repositorio...\033[0m"
curl -o /home/$USER/.zshrc https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/zshrc
curl -o /home/$USER/.p10k.zsh https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/p10k.zsh

# Copiar la configuración personalizada de Kitty del repositorio
echo -e "\033[31mCopiando configuraciones personalizadas de Kitty del repositorio...\033[0m"
mkdir .config/kitty
curl -o /home/$USER/.config/kitty/color.ini https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/kitty/color.ini
curl -o /home/$USER/.config/kitty/kitty.conf https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/kitty/kitty.conf

#---------------------------------

# Instalamos ZSH en Root
echo -e "\033[31mInstalamos ZSH en Root...\033[0m"

# Ir al directorio raiz usuario
echo -e "\033[31mIr al directorio raiz usuario...\033[0m"
sudo cd /root/

# Instalar ZSH y Clonar el tema powerlevel10k
echo -e "\033[31mInstalando Oh My Zsh...\033[0m"
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\033[31mClonando Powerlevel10k...\033[0m"
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k

# Añadir plugins de Zsh
echo -e "\033[31mAñadiendo plugins para ZSH: Syntax Highlighting, Autosuggestions, zsh-z, Fast Syntax Highlighting, Autocomplete, fzf...\033[0m"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo git clone https://github.com/agkozak/zsh-z /root/.oh-my-zsh/custom/plugins/zsh-z
sudo git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
sudo git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git /root/.oh-my-zsh/custom/plugins/zsh-autocomplete
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf
sudo /root/.fzf/install

# Copiar la configuración personalizada de zshrc y p10k
echo -e "\033[31mCopiando configuraciones personalizadas zshrc y p10k...\033[0m"
sudo curl -o /root/.zshrc https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/zshrc
sudo curl -o /root/.p10k.zsh https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Config/p10k.zsh

sudo rm -r /home/$USER/.zshrc.pre* /root/.zshrc.pre* /home/$USER/.z /root/.z

clear

echo -e "

\033[1m\033[4m\033[33mInstalacion finalizada correctamente\033[0m

\033[1m\033[32mResumen de la instalacion:\033[0m

- Se ha actualizado SO
- Se ha instalado repositorio para aplicacion Visual Studio Code y PlexServer
- Se han instalado los siguientes paquetes:\033[1m\033[33m

            git             net-tools           inkscape            texmaker
            wget            neovim              hexchat             powerline-fonts
            kate            gparted             qbittorrent         gnome-boxes
            feh             curl                putty               code
            p7zip           fastfetch           thunderbird         plexmediaserver
            locate          kitty               timeshift
            lsd             dolphin             keepassxc
            bat             gimp                texlive\033[0m

- Se ha verificado actualizaciones
- Se ha instalado ZSH y cambiado la Shell para el Usuario y Root
- Se ha añadido Powerlevel10k
- Se han Añadido los plugins para ZSH para el Usuario y Root\033[1m\033[33m

            Syntax Highlighting
            Autosuggestions
            zsh-z
            Fast Syntax Highlighting
            Autocomplete
            fzf\033[0m

- Se ha descargado y configurando las fuentes Meslo
- Se han copiando configuraciones personalizadas zshrc y p10k
- Se ha cambiado el propietario del archivo p10k.zsh de root al usuario
- Se levanta el servicio PlexServer

        URL: \033[1m\033[33mhttp://localhost:32400/web\033[0m

"
