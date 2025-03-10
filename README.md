# Configuración inicial en Fedora

Modificamos el Terminal para las distribuciones Fedora o ArchLinux con ZSH e instalamos una colección de paquetes basicos.


# Script de configuracion

### En FEDORA

Ejecutar desde el terminal:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Inst_Basic_Fedora.sh)"
 ```

### En ARCH

Ejecutar desde el terminal:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a73garcia/Inst_Basic_Linux/refs/heads/main/Inst_Basic_Arch.sh)"
 ```


## Procesos llevados a cabo en la configuración

1. Actualizacion del SO
  
2. Repositorio para instalación de Visual Studio Code y PlexServer en fedora, para Archlinux se utilizan las fuentes de los repositorios
  
3. Se instalan las siguientes utilidades:
  
            git             net-tools           inkscape            texmaker
            wget            neovim              hexchat             powerline-fonts
            kate            gparted             qbittorrent         gnome-boxes
            feh             curl                putty               code
            p7zip           fastfetch           thunderbird         plexmediaserver
            locate          kitty               keepass
            lsd             dolphin             keepassxc
            bat             gimp                texlive

4. Se realiza una verificación de nuevas actualizaciones después de la intalación de la utilidades
  
5. Instalamos ZSH y cambiamos la Shell
  
6. Añadimos Powerlevel10k y una colección pluguins para ZSH

[Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
[Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
[zsh-z](https://www.google.com)
[Fast Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
[Autocomplete](https://www.google.com)
[fzf](https://github.com/junegunn/fzf)


            
            
            
            
            
            

7. Descargamos y añadimos las fuentes Meslo
  
8. Se modifican los archivos zshrc y p10k por los que se encuentran el la carpeta config del repositorio
  
