#!/bin/bash
echo -e "Ingrese un número : \c"
read numero1
echo -e "Ingrese otro número : \c"
read numero2

if [ $numero1 -gt $numero2 ];then
	echo -e "\n$numero1 es mayor que $numero2\n"
fi

if [ $numero1 -lt $numero2 ];then
	echo -e "\n$numero1 es menor que $numero2\n"	
fi

if [ $numero1 -eq $numero2 ];then
	echo -e "\n$numero1 es igual a $numero2\n"
fi
