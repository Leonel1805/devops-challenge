Que tal. Para la realización del despliegue de esta apliación, se realizaron dos Dockerfile, uno por cada sección de la aplicación (backend y frontend) para posteriormente ser lanzados por medio de docker-compose, siendo que en el archivo docker-compose.yml se definieron los servicios necesarios para tal app.

En el respectivo Dockerfile de la apliación Django (backend), se ejecutaron los comandos pertinentes para realizar la correcta instalacion de los requerimientos ubicados en el archivo requeriments.txt y saltear así los errores que presentó la apliación al despliegue del docker-compose. Por ejemplo:

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2

A su vez, en se configuraron las variables de entorno correspondientes.

Para desplegar y acceder a cada apliación, primero es necesario ejecutar el comando:

docker-compose up 

Esto desplegara la apliación a los puertos que han sido expuestos en el archivo docker-compose.yml. Con la configuración de este archivo, los puertos 8000 y 3000 se exponen para los servicios backend y frontend, lo que significa que se mapearán los puertos 8000 y 3000 en el host a los puertos correspondientes en los contenedores.

Una vez expuestos los puertos, se puede acceder a las aplicaciones desde el ordenador local usando la dirección IP del host seguida del puerto correspondiente. Por ejemplo, para acceder a la aplicación backend, simplemente basta con abrir un navegador y navegar a http://localhost:8000. De manera similar, para acceder a la aplicación frontend, se puede navegar a la direccióm http://localhost:3000.

Para desplegar la aplicación en la nube, en este caso AWS, deben seguirse los siguientes pasos:

1) Crear una instancia EC2 en la consola de AWS.

2) Conectarse a la instancia EC2 mediante SSH.

3) Clonar el repositorio de GitHub en la instancia EC2 y acceder a la carpeta del proyecto.

4) Instalar Docker en la instancia EC2.

5) Ejecutar el comando "docker-compose up" para desplegar las aplicaciones.

6) Configurar y exponer correctamente los puertos en el firewall de la instancia EC2 para poder acceder a tus aplicaciones.

7) Acceder a la aplicación en el navegador utilizando la dirección IP pública de la instancia EC2 y el puerto 3000 u 8000, tal como se configuró originalmente en el docker-compose.yml.
