# Verwende Node.js als Basisimage
FROM node:18-alpine

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die package.json und package-lock.json in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest der App-Dateien
COPY . .

# Baue die Anwendung für die Produktion
RUN npm run build

# Setze den Port, auf dem die App laufen wird
EXPOSE 4173

# Starte die App im Vorschau-Modus und ermögliche externen Zugriff
CMD ["npm", "run", "preview", "--", "--host"]
