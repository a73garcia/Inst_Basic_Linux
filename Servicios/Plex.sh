#!/bin/bash

echo -e "\033[33m
Configuración de \033[1m\033[4m\033[32mPlex\033[0m

\033[0m"

#Eliminacion de configuraciones previas
#Activar solo si es necesario
# sudo rm -r /root/.oh-my-zsh /root/.zshrc ~/.local/share/fonts/meslolg /root/.fzf /root/.fzf.zsh /root/.fzf.bash /root/.shell.pre-oh-my-zsh /home/gh0stwalk3r/.oh-my-zsh

# Añadir repositorio de PlexServer
echo -e "\033[31mAñadiendo repositorio de PlexServer...\033[0m"
sudo tee /etc/yum.repos.d/plex.repo <<EOF
[Plexrepo]
name=plexrepo
baseurl=https://downloads.plex.tv/repo/rpm/\$basearch/
enabled=1
gpgkey=https://downloads.plex.tv/plex-keys/PlexSign.key
gpgcheck=1
EOF

# Instalar paquetes necesarios
echo -e "\033[31mInstalando paquetes...\033[0m"
sudo dnf install plexmediaserver

# Iniciar el servicio de Plex
#echo "\033[31mIniciando Plex Media Server y habilitando dn el arranque...\033[0m"
#sudo systemctl start plexmediaserver
#sudo systemctl enable plexmediaserver

# Comprobar el estado del servicio
echo -e "\033[31mComprobando el estado de Plex Media Server...\03q3[0m"
sudo systemctl status plexmediaserver


echo -e "


\033[1m\033[4m\033[33mLa instalacion de PlexServer ha finalizado PlexServer\033[0m

La URL del servicio es:

        \033[1m\033[33mhttp://localhost:32400/web\033[0m

"
