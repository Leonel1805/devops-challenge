# Use python as the base image
FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV SECRET_KEY=45

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install python-dev-tools
RUN pip install psycopg2-binary

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .
RUN echo "SECRET_KEY = '$SECRET_KEY'" >> backend/settings.py
# Specify the command to run the application
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
