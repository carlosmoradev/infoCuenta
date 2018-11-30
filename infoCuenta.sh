#!/bin/sh

# Autor: Carlos Mario Mora Restrepo.  contacto@carlosmora.biz

# OBJETIVO: Realizar un shel script para bash que solicite el nombre de la cuenta
# de un usuario, verificar que exista y si existe muestre la siguiente 
# informacion:

# Nombre de usuario   :   XXXX
# ID del usuario      :   XXXX
# ID del Grupo        :   XXXX
# Shell               :   /bin/XXX
# Directorio          :   /home/xxx

echo "Ingrese el nombre de la cuenta"

read CUENTA

if getent passwd $CUENTA >/dev/null 2>&1;
    then
        echo "Usuario existe"
    else
        echo "Usuario no existe"
fi