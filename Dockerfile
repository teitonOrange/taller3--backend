# Usa la imagen base de Node.js
FROM node:18

# Configura el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios para instalar las dependencias
COPY package.json* ./

# Instala las dependencias
RUN npm install

# Copia todos los archivos de la aplicación
COPY . .

# Expone el puerto 5000
EXPOSE 5000

# Comando para iniciar la aplicación usando Babel
CMD ["npm", "run", "start"]
