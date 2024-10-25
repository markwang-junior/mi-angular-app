# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json para instalar dependencias
COPY mi-angular-app/package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto donde correrá la aplicación (el puerto por defecto de Angular es el 4200)
EXPOSE 4200

# Comando por defecto para iniciar el servidor de desarrollo de Angular
CMD ["npm", "start"]
