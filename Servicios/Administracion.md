# Comandos de interes

### Cambiar propietario de archivo o carpeta

```bash
#Cambia el propietario del archivo o carpeta
#Para cambiar tambien el propietario del contenidos dentro de la carpeta usamos -R
sudo chown -R $USER:$USER archivo
```

### Cambiar permisos sobre un archivo o carpeta

Esto se cambian según la suma de las siguientes opciones:

   - r (read)     –  4
   - w (write)    –  2
   - x (execute)  –  1

Primer número para el usuario, segundo para el grupo y el tercero para otros

```bash
chmod 744 archivo
```

### Impresoras HP

```bash
sudo pacman -S print-manager system-config-printer
$ sudo pacman -S hplip
```
