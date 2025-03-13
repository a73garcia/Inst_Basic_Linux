# Comandos de interes

### Cambiar propietario de archivo o carpeta

```bash
#Cambia el propietario del archivo o carpeta (usamos -R para cambiar el propietario tambien de las subcarpetas y archivos contenidos dentro de la carpeta)
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
