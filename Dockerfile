# Usa un'immagine di Node.js LTS come base
FROM node:lts-alpine

# Imposta la directory di lavoro all'interno dell'immagine
WORKDIR /app

# Copia i file del tuo progetto nell'immagine
COPY package.json server.js public/ /app/

# Installa le dipendenze
RUN npm install

# Esponi la porta su cui l'applicazione sarà in ascolto
EXPOSE 3000

# Comando per avviare l'applicazione
CMD ["node", "server.js"]
