# Usar una imagen base de Python
FROM python:3.9.5-slim

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
    
RUN python -m pip install --upgrade pip setuptools wheel

RUN python -m pip install Pillow

RUN pip install --upgrade setuptools

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . .

# Instalar los requisitos
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# Ejecutar el comando para iniciar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
