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

#============================

- Enter the demobuilder VM, open a terminal an run `oc login...`
- Create a new app running the following command

   `$ oc new-app git://github.com/marmendo/memorytest`  (Or use your own repository)

   Open the the project on the OpenShift web console
   After some seconds it will launch a builder
   Once the builder finished you must create the route from the command line
   (you can do this from the web console too)

   `$ oc expose service/memorytest -l name=memorytest`
   
   From the OpenShift console go to overview and test the application
