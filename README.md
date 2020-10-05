# 2020B-SistDist
Ejercicios curso univalle sistemas distribuidos sem B-2020

Los ejercicios seran implementados en una maquina virtual utilizando vagrant en virtualbox.

El uso de vagrant se puede encontrar en el tutorial [vagrant getting started](https://learn.hashicorp.com/vagrant).

[2020B-SistDist/vagrant/procesosHilos](https://github.com/jandresh/2020B-SistDist/tree/master/vagrant/procesosHilos) es el directorio base de las pruebas en C que se estan adelantando en el curso.

[2020B-SistDist/vagrant/procesosHilos/20201005Sugeridos](https://github.com/jandresh/2020B-SistDist/tree/master/vagrant/procesosHilos/20201005Sugeridos) es el directorio base para la solución de los ejercicos sugeridos de acuerdo al documento  [Ejercicios Sugeridos](https://drive.google.com/open?id=1goEpa69QGNtUf7zEALV2cS3fkpHAHC8bwJ2Dy8WRB-s&authuser=0)

Para correr la maquina virtual ingrese por el terminal del host al directorio en el que haya clonado o descagado el repositorio ```2020B-SistDist/vagrant``` y ejecute el comando

```
vagrant up
``` 

De acuerdo a la configuración suministrada la maquina virtual se provisiona con un servidor web al cual se puede acceder desde un navegador web a la ip local 127.0.0.1:4567. El directorio base del servidor web es [2020B-SistDist/vagrant/html](https://github.com/jandresh/2020B-SistDist/tree/master/vagrant/html)

Conectese a la maquina virtual usando el comando 

```
vagrant ssh
```

Ejecute los siguientes comandos para instalar el compilador de C

```
sudo apt update
sudo apt install build-essential
``` 

El directorio [2020B-SistDist/vagrant](https://github.com/jandresh/2020B-SistDist/tree/master/vagrant) se puede acceder desde la maquina virtual en el path ```/vagrant``` ingrese al directorio de trabajo con el comando 

```
cd /vagrant/procesosHilos/20201005Sugeridos/
```

Revise el archivo [README Ejercicios Sugeridos](https://github.com/jandresh/2020B-SistDist/tree/master/vagrant/procesosHilos/20201005Sugeridos) para conocer la ejecución de los programas implementados.