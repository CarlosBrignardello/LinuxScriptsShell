#!/bin/bash
echo -e "\nNombre de la carpeta:\c"
read carpeta

if [ -d $carpeta ];then
	echo "Muy bonita su carpeta amigo (:"

else 
	
	echo -e "\nTranquilo... Quedara solo entre nosotros"
	echo `mkdir $carpeta`
	echo "La carpeta: '$carpeta' fue creada exitosamente!" 
fi
