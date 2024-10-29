# Basis-Image auswählen (z.B. Node.js)
FROM node:14

# Arbeitsverzeichnis erstellen
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY package*.json ./
RUN npm install

# Code kopieren
COPY . .

# Port festlegen
EXPOSE 3000

# Startbefehl
CMD ["npm", "start"]
