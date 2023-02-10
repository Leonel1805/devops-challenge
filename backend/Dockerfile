# Usar una imagen base de Python
FROM python:3.9.5-slim

ENV DJANGO_SETTINGS_MODULE=backend.settings

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
    
RUN python -m pip install --upgrade pip setuptools wheel

RUN python -m pip install Pillow

RUN pip install setuptools~=57.5.0

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . .

RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    zlib1g-dev

RUN pip install Pillow

RUN sudo apt-get install -y python-pygraphviz


# Instalar los requisitos
RUN pip install -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# Ejecutar el comando para iniciar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
