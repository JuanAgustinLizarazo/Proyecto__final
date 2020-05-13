# Proyecto__final



En el inicio del script se despliega en pantalla las opciones predeterminadas con las que cuenta el usuario para realizar una accion:

1) 5 procesos que más CPU estan consumiendo 
2) Discos conectados a la maquina
3) Desplegar el nombre y el tamaño del archivo más grande almacenado
4) Cantidad de memoria libre y la cantidad del espacio swap
5) Numero de conexiones de red activadas actualmente.

1)Se hace uno del comando ps con la opción -A para mostrar todos los procesos en formato generico. Se especifican los campos.
Se hace uso de la opcion --sort=-pcpu para ordenarlos con respecto al porcentahe de uso de la CPU. Con pipeline se transfiere la salida al comando head,
quien lista solo 5 resultados.
2) Para la opcion 2 se hace uso del comando df -h
3) Para la opcion 3 se pide la entrada de un directorio al usuario en el que realizara la busqueda.
Haciendo uso del comando du -sm <directorio> se listaran los archivos con respecto a su tamaño de menor a mayor,
usando pipeline se transfiere a sort -nr para que invierta el orden, de nuevo pipeline al comando head.
Quien mostrará solo el primer contenido de la lista.
4)Se hace uso del comando free quien despliega la memoria total, utilizada y libre.
5)Se hace uso de el comando netstat -putona y se filtra segun su estado (ESTABLISHED).

