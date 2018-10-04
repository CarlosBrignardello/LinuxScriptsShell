#!/bin/bash
echo -e "Escriba nombre de la carpeta:\c"
read carpeta
if [ -d $carpeta ];then
	echo "Segun mi doctorado '$carpeta' se trata de una carpeta"

else 
	echo "Pues no , no es una carpeta"
fi


