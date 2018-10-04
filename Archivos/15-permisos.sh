#!/bin/bash
echo -e "\nArchivo:\c"
read arch
echo -e "\nLa dirección ingresada es:$PWD/$arch\n"
echo -e `ls -l $PWD/$arch`
echo -e "\nTiene los siguientes permisos:"
if [ -r $arch ];then
	echo "-Lectura"

if [ -w $arch ];then
	echo "-Escritura"

if [ -x $arch ];then
	echo "-Ejución"
fi
fi
fi
