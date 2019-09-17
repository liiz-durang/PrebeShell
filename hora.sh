#!/bin/bash
#prebeshell.sh
#Muestra la hora


source colores.sh


touch hora
hora=`stat hora | grep "Cambio:" | sed 's/\s\+/,/g' | cut -d , -f4 |cut -c 1-8` 

echo -e " ${anaranjado}         __^__                                      __^__ "
echo -e "         ( ___ )------------------------------------( ___ )  "
echo -e "          | / |                                      | \ |  "
echo -e "          | / |         La hora es $hora          | \ | "
echo -e "          |___|                                      |___| "
echo -e "         (_____)------------------------------------(_____)  ${reset}"

rm hora 