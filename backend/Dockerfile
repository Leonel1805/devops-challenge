FROM python:alpine

RUN apk --update add libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev curl

RUN apk add libjpeg zlib tiff freetype lcms libwebp tcl openjpeg

RUN pip install Pillow

RUN pip install --upgrade setuptools

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
