FROM python:3.7-alpine

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev zlib-dev jpeg-dev graphviz-dev libpq
RUN pip install --upgrade pip
RUN pip install gunicorn

WORKDIR /backend

COPY . /backend/

RUN python -m pip install -r requirements.txt

# Instalar los requisitos
RUN pip install -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# Ejecutar el comando para iniciar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
