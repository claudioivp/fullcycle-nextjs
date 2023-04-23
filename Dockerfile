# Use uma imagem oficial do Node.js como imagem base
FROM node:18-alpine

# Defina o diretório de trabalho na imagem
WORKDIR /app

# Copie os arquivos de package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do Node.js
RUN npm ci --production

# Copie os arquivos da aplicação para o diretório de trabalho
COPY . .

RUN npx prisma generate

# Construa a aplicação Next.js
RUN npm run build

# Exponha a porta em que a aplicação estará ouvindo
EXPOSE 3000

# Inicie a aplicação
CMD ["npm", "start"]