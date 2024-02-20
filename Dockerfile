# Utiliser l'image officielle de Node.js comme base
FROM node:latest

# Créer le répertoire de travail de l'application dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va tourner
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "start"]
