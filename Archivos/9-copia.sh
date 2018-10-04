#!/bin/bash
echo -e "\nSelecciona el destino:\c"
read destino

if [ -d $destino ];then

	echo `cp $PWD/* $destino`
	echo -e "\nListo! - Todo el contenido de $PWD fue copiado en $destino"
else
	echo `mkdir $destino`
	echo `cp $PWD/* $destino`
	echo -e "\nListo! - Todo el contenido de $PWD fue copiado en $destino"
fi	
