# Usar una imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY . .

# Instalar las dependencias
RUN npm install

# Exponer el puerto 3000
EXPOSE 3000

# Ejecutar el comando para iniciar la aplicación React
CMD ["npm", "start"]
