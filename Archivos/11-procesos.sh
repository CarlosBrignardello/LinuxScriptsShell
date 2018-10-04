#!/bin/bash
echo -e "\nIntroduce el proceso que buscas:\c"
read proceso
echo `ps -A -c -f | egrep $proceso`
