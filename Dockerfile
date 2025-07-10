FROM node:22 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npx tsc --noEmit || true

FROM node:22

WORKDIR /app

COPY --from=build /app /app

RUN npm install --omit=dev

ENV NODE_ENV=production

EXPOSE 3333

CMD ["node", "--experimental-strip-types", "--no-warnings", "src/server.ts"]
