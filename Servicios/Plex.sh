# Iniciar el servicio de Plex
#echo "\033[31mIniciando Plex Media Server y habilitando dn el arranque...\033[0m"
sudo systemctl start plexmediaserver
sudo systemctl enable plexmediaserver

# Comprobar el estado del servicio
echo -e "\033[31mComprobando el estado de Plex Media Server...\03q3[0m"
sudo systemctl status plexmediaserver
