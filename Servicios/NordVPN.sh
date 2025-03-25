# NordVPN
# Instalar desde snapcraft
# https://snapcraft.io/nordvpn

sudo snap install nordvpn


sudo groupadd nordvpn
sudo usermod -aG nordvpn $USER


# https://support.nordvpn.com/hc/es/articles/20196094470929-Instala-NordVPN-en-distribuciones-Linux


sudo snap connect nordvpn:hardware-observe
sudo snap connect nordvpn:network-control
sudo snap connect nordvpn:network-observe
sudo snap connect nordvpn:firewall-control
sudo snap connect nordvpn:login-session-observe
sudo snap connect nordvpn:system-observe



nordvpn login

# Entrar en https://api.nordvpn.com/v1/users/oauth/login-redirect?attempt=ec39ae4d-4e87-4c21-b1c8-f6815138030f
# Loguearnos
# Pulsar entro en la cosola

nordvpn connect

# Ver el estado
nordvpn status 

# Ver la lista de países
nordvpn countries

# Ver la lista de ciudades
nordvpn cities

# lista de los grupos de servidores disponibles:
nordvpn groups


# https://geekland.eu/instalar-configurar-y-usar-nordvpn-en-linux-desde-la-terminal/
# https://support.nordvpn.com/hc/es/articles/20196094470929-Instala-NordVPN-en-distribuciones-Linux
