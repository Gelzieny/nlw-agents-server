# Etapa 1: build
FROM node:22 AS build

# Diretório de trabalho
WORKDIR /app

# Copia arquivos de dependência e instala
COPY package*.json ./
RUN npm install

# Copia todo o projeto
COPY . .

# Verifica o TypeScript (sem gerar arquivos)
RUN npm run start

# Etapa 2: produção
FROM node:22

WORKDIR /app

# Copia apenas o necessário da etapa anterior
COPY --from=build /app /app

# Garante que as dependências estejam disponíveis
RUN npm install --omit=dev

# Define variáveis de ambiente padrão
ENV NODE_ENV=production

# Expõe a porta (ajuste se necessário)
EXPOSE 3333

# Comando para iniciar o servidor
CMD ["node", "--env-file", ".env", "--experimental-strip-types", "--no-warnings", "src/server.ts"]
