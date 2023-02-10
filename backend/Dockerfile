# Usar una imagen base de Python
FROM python:3.9.5-slim

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
    
RUN pip install setuptools~=57.5.0
RUN sudo apt-get install python3-dev python3-setuptools
RUN sudo apt-get install graphviz graphviz-dev
RUN pip install pygraphviz==1.7

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade Pillow

RUN pip install django-celery

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . .

# Instalar los requisitos
RUN pip install -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# Ejecutar el comando para iniciar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
