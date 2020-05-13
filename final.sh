#!/bin/bash
echo "1) 5 procesos que mas CPU estan consumiendo"
echo "2) discos conectados a la màquina"
echo "3) Deplegar el nombre y el tamano del archivo mas grande almacenado"
echo "4) Cantidad de memoria libre y cantidad del espacio swap."
echo "5) Numero de conexiones de red activadas actualmente"

typeset opcion
read -p "Elija una opcion: " opcion

if [ $opcion -eq 1 ] 
 then 
   ps  -Ao user,uid,comm,pid,pcpu,tty --sort=-pcpu | head -n 6
   
 else
	if [ $opcion -eq 2 ]
	 then 
             df -h

         else
	  if [ $opcion -eq 3 ] 	  
	   then 
	     read -p "Introduce el nombre del disco: " entrada
	    	disco=$entrada
		echo "$entrada"
	     if [ -d $disco ]
		     
  	       then
		  sudo  du -sm $disco | sort -nr | head -1  |  awk  '{ print $1}' 
		else
                 echo "no se ha encontrado el archivo"
                fi		 
	 fi
 fi
fi
