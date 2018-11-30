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


validaInfo() {
    getent passwd $CUENTA |cut -d ":" -f $1
}

formatoInfo() {
        echo
        echo "Nombre de usuario : $(validaInfo 1)"
        echo "ID del usuario    : $(validaInfo 3)"
        echo "ID del Grupo      : $(validaInfo 4)"
        echo "Shell             : $(validaInfo 7)"
        echo "Directorio        : $(validaInfo 6)"
        echo
}

echo
echo "Ingrese el nombre de la cuenta"
echo

read CUENTA

if getent passwd $CUENTA >/dev/null 2>&1;
    then
        formatoInfo
    else
        echo "Usuario no existe"
fi
