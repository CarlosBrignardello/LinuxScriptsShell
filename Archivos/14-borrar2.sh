#!/bin/bash
echo -e "\nElige los archivos:\c"
read archivos
while true; do
	read -p "Estas seguro?,Se borraran todos los archivos(Y/n):"  Yn
	case $Yn in
 		Y ) break;;
 		n ) exit;;
		* ) echo "por favor responda Y o n";;
esac
done
echo `rm -r $archivos`
echo -e "Archivos eliminados!"
