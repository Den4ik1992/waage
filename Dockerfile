# Beispiel für ein Node.js-Projekt
FROM node:14

# Arbeitsverzeichnis erstellen
WORKDIR /app

# Abhängigkeiten installieren
COPY package*.json ./
RUN npm install

# Anwendungscode kopieren
COPY . .

# Port öffnen
EXPOSE 3000

# Startbefehl
CMD ["npm", "start"] 