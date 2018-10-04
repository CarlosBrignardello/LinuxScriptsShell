Linux Scripts - Creación de comandos de terminal
=================

El siguiente repositorio contiene diversos Scripts en Shell para Linux, puede resultar útil para cualquier persona que necesite aprender un poco mas sobre Bash Shell y la creación de comandos de terminal. En el repositorio puedes encontrar una bien resumida guia sobre [Comandos Linux]() para Shell.
Contenidos en el mismo espacio del **README.md** se encuentran las explicaciones de cada Shell creado,y en la carpeta [Archivos](https://github.com/CarlosBrignardello/LinuxScriptsShell/tree/master/Archivos) los pertinentes Scripts disponibles para descarga.

(Recomiendo abrir cada archivo con cat antes de ejecutar,nunca se sabe.....)

![Screenshot](https://github.com/CarlosBrignardello/LinuxScriptsShell/blob/master/IMAGENES/PORTRAIT.png)

Instalación de Vim
==================================

![Screenshot](https://github.com/CarlosBrignardello/LinuxScriptsShell/blob/master/IMAGENES/README1.png)

Los siguientes procedimientos seran todos creados con Vim , para poder hacer uso de este editor de texto requerimos de su previa instalación. 
En caso de que no dispongamos del mismo su instalación resulta muy sencilla.

**1)Nos dirijimos al terminal**

**2)Solicitamos la instalación**
```
sudo apt-get install vim
```
**3)Aceptamos el aviso [Y/n]**

Simplemente confirmamos introduciendo "Y" en el terminal.

Crear y editar un archivo Vim
================
Para crear un archivo Vim introducimos el siguiente comando:
```
vim mi-archivo.sh
```
Donde: ``mi-archivo`` es el nombre que escogeremos para crear nuestro archivo y ``.sh``(Shell) es simplemente el parametro que define el tipo de archivo que crearemos , en este caso utilizamos ``.sh`` debido a que crearemos Shell Scripts.

Una vez introducido el comando visualizaremos algo como esto:

![Screenshot](https://github.com/CarlosBrignardello/LinuxScriptsShell/blob/master/IMAGENES/README2.png)

Estamos dentro del Vim que creamos , para que tenga algo de gracia procederemos a programar el archivo.
```
#!/bin/bash
echo -e "\nIngresa tu nombre:\c"
read nombre
echo -e "Tu nombre es: $nombre y actualmente estas ubicado en:\n$PWD\n"

```
Nota: Cada vez que abres un archivo en Vim primero debes presionar almenos una letra del teclado para ingresar al cuerpo del archivo , si no comenzaras a editar las opciones del archivo completo.

Puede parecer sumamente confuso al comienzo pero es tan facil como esto:
``#!/bin/bash`` Siempre sera lo primero que colocaremos pues es el formato que tiene todo Shell Script.
``echo``(Eco) en Shell es un comando que puede escribir en pantalla cualquier cosa que introduzcamos entre " ".

``read``(Leer) es tan obvio como se ve , con el podemos leer cualquier valor , en este caso ya que anteriormente incluimos un ``echo`` , al ejecutar el Script se nos detendra ese texto y nos solitara introducir algun valor o dato , el cual sera guardado posteriormente como variable en ``read``. Es por eso que acompañamos ``read`` de un identificador o variable.

En este caso puntual utilizamos ``echo -e`` , esto lo hacemos para que los indicadores {\n y \c} no sean vistos como parte del texto y sean ejecutados.

\n: Sirve para dar un salto de línea.

\c: Sirve para introducir valores justamente a continuación del ``echo``.

Por si no entiendes el código , basicamente se podria leer así: 

Se imprimira un texto solicitando que introduzcas un valor , este valor sera leído ,y a continuación se imprimira un texto indicando que valor ingresaste y ademas como extra tu ubicación actual.

Si estas confundido respecto a lo de la ubicación: 

Con $PWD indicamos que queremos que se imprima la ubicación desde donde la consola ejecuto el Script.
Otra forma de hacerlo es con el siguiente codigo.

```sh
#!/bin/bash
echo -e "\nIngresa tu nombre:\c"
read nombre
echo -e "Tu nombre es: $nombre y actualmente estas ubicado en:\n"
echo `pwd`
```
Explicación: Al introducir ``pwd`` de esa manera, dentro de un ``echo`` estamos solicitando que se ejecute en consola. 


(El comando "pwd" por si aun no te has dado cuenta sirve para indicar la ubicación actual).
Podemos realizar lo mismo con cualquier línea que escribamos dentro.

**Permisos del Shell Script**

Una vez creado el archivo es sumamente importante darle permisos de ejecución(Si no , no serviria de nada). Para ello simplemente introducimos el siguiente comando:
```
chmod +x ejemplo.sh
```
Donde: ``chmod`` es un comando utilizado para ver y editar los permisos de cualquier archivo o directorio en linux.
``+x`` índica que el archivo tendra permisos de ejecución(Esperemos que jamas se te ocurra introducir ``-x``).

**RESULTADO:**

![Screenshot](https://github.com/CarlosBrignardello/LinuxScriptsShell/blob/master/IMAGENES/README3.png)

Convertir un Shell Script en un Comando de Linux
================

Aquí reside el verdadero potencial de los Shell Scripts: Poder ejecutarlos de forma local. En este ejemplo útilizare el siguiente Script:
```
#!/bin/bash
echo -e "Tu dirección IP es: \c"
echo -e `hostname -I` | cut -d " " -f 1
```
El cual permite visualizar de forma inmediata la IP en uso del terminal actual(Este Script se enseñara mas adelante).

Para ejecutar un Script de forma local debemos realizar el siguiente procedimiento:

1) Renombramos el archivo
```
mv 4-ip.sh my-ip
```
El comando ``mv`` sirve tanto para mover archivos y directorios como para cambiarles el nombre.
Esto se hace para simplificar la ejecución del comando en futuros usos , evitando asi escribir siempre ``.sh`` al final.

2) Convertir en comando
```
cp my-ip /usr/bin
```
El comando ``cp`` sirve para copiar archivos y directorios , en este caso: realizamos una copia y la enviamos a un directorio en especifico , el cual corresponde al directorio donde estan ubicados los comandos de Linux.

De este modo hemos convertido nuestro Script en un Comando,capaz de ser ejecutado de forma local en cualquier momento.

![Screenshot](https://github.com/CarlosBrignardello/LinuxScriptsShell/blob/master/IMAGENES/README4.png)

Desarollador
=========
[Carlos Alberto Brignardello C.](https://www.linkedin.com/in/carlos-alberto-brignardello-c-360a12170/)

