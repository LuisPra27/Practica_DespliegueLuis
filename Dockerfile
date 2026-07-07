FROM node:22-alpine

# Crear directorio de la aplicación
WORKDIR /usr/src/app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias (asegúrate de que Jest esté en devDependencies)
RUN yarn install --frozen-lockfile || yarn install

# Copiar TODO el código fuente y la carpeta de tests
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]