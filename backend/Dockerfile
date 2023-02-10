# Usar una imagen base de Python
FROM python:3.8-alpine

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
