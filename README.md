# memorytest

#Prueba local:
construir el container

`docker build -t=scc .`

iniciar el container

`docker run --rm=true -it -P scc:latest`

ver RSS del container

`ps -axv | grep scc`

entrar en el contenedor para ver las estadisticas (javaSccPid es el pid del proceso java)

`sudo nsenter --target javaSccPid --mount --uts --ipc --net --pid`

`ps -axv`

Lo que comprobamos es que tanto desde dentro, como desde fuera, las estadísticas son las mismas.

