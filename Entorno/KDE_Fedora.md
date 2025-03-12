# KDE

Instalar Plasma desde la linea de comados

dnf group install kde-desktop-environment


### Cambiar el administrador de pantalla a SDDM 

Para habilitar SDDM o reemplazar su administrador de pantalla existente

systemctl enable --force sddm.service
