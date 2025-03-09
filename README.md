# Configuración inicial en Fedora

Modificar el Terminal con ZSH e intalación de paquetes basicos.

#FEDORA

Ejecutar desde el terminal:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a73garcia/Fedora/refs/heads/main/Ini_Fedora.sh)"
 ```

#ARCH

Ejecutar desde el terminal:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a73garcia/Fedora/refs/heads/main/Ini_Fedora.sh)"
 ```


- Actualizacion del SO
- Repositorio para instalación de Visual Studio Code y PlexServer
- Paquetes que se instalan:

            git             net-tools           inkscape            texmaker
            wget            neovim              hexchat             powerline-fonts
            kate            gparted             qbittorrent         gnome-boxes
            feh             curl                putty               code
            p7zip           fastfetch           thunderbird         plexmediaserver
            locate          kitty               keepass
            lsd             dolphin             keepassxc
            bat             gimp                texlive

- Verificación de actualización
- Instalación de ZSH y cambio de Shell
- Se añade Powerlevel10k y pluguins para ZSH

            Syntax Highlighting
            Autosuggestions
            zsh-z
            Fast Syntax Highlighting
            Autocomplete
            fzf

- Se descargan fuentes Meslo
- Se modifican los archivos zshrc y p10k por las configuraciones del repositorio
- Se levanta el servicio PlexServer

        URL: http://localhost:32400/web
