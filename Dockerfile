# Etapa 1: build
FROM node:22 AS build

WORKDIR /app

# Copia arquivos de dependência e instala
COPY package*.json ./
RUN npm install

# Copia todo o projeto
COPY . .

# (Opcional) Validação do código TypeScript
RUN npx tsc --noEmit || true  # <- Isso apenas valida, sem quebrar build

# Etapa 2: produção
FROM node:22

WORKDIR /app

COPY --from=build /app /app

# Instala só dependências de produção
RUN npm install --omit=dev

ENV NODE_ENV=production

EXPOSE 3333

# Comando para rodar a API Fastify
CMD ["npm", "run", "start"]
