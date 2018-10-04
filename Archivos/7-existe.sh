#!/bin/bash
echo -e "\nNombre del archivo:\c"
read nombre

if [ -f $nombre ];then
	echo -e "Sin duda es el archivo mas lindo que he visto , solo superado por la persona que esta leyendo esto ;)"

else 
	echo -e "\nEs una verguenza!"
	echo `touch $nombre`
	echo -e "\n$nombre fue creado exitosamente! (:"
fi
