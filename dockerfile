# 1. Basis-Image
FROM node:14

# 2. Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# 3. Abhängigkeiten installieren
COPY package*.json ./
RUN npm install

# 4. Code kopieren und Projekt bauen
COPY . .
RUN npm run build  # Baut die statischen Dateien

# 5. Exponiere den Port
EXPOSE 4173  # Vite Preview verwendet standardmäßig Port 4173

# 6. Start-Script
CMD ["npm", "start"]
