<p align="center">
  <a href="#">
    <img src="https://github.com/Gelzieny/nlw-agents-server/blob/main/.github/img/logo.png?raw=true"  alt="NLW Agents" />
  </a>
</p>


<p align="center">

API desenvolvida durante o **NLW Agents** da [Rocketseat](https://www.rocketseat.com.br), com foco em performance, escalabilidade e uso de tecnologias modernas.
</p>

## Documentação

A documentação do projeto está disponível no [Notion](<https://efficient-sloth-d85.notion.site/Trilha-Intermedi-ria-21b395da5770803ebebee92c5ddbea47>)


<p align="center" style="display: flex; align-items: flex-start; justify-content: center;">
  <img src="https://github.com/Gelzieny/nlw-agents-server/blob/main/.github/img/server.png?raw=true" width="400px"/>

  <img src="https://github.com/Gelzieny/nlw-agents-server/blob/main/.github/img/aget-rooms.png?raw=true" width="400px" alt="" />
</p>

## 🚀 Tecnologias Utilizadas

- 🟢 **[Node.js](https://nodejs.org/)**: Plataforma JavaScript utilizada para construir o servidor.
- 🟦 **[TypeScript](https://www.typescriptlang.org/)**: Superconjunto do JavaScript que adiciona tipagem estática opcional.
- ⚡ **[Fastify](https://www.fastify.io/)**: Framework web para Node.js, focado em alta performance e baixo overhead.
- 🐳 **[Docker](https://www.docker.com/)**: Containerização do ambiente de banco de dados.
- 🐳 **[Docker Compose](https://docs.docker.com/compose/)**: Ferramenta para configurar e executar múltiplos containers Docker.
- 🐘 **[Postgres](https://www.postgresql.org/)**: Banco de dados relacional utilizado para armazenamento de dados.
- 🛡️ **[Zod](https://zod.dev/)**: Biblioteca para validação de esquemas de dados e validações runtime.
- 🗄️ **[Drizzle ORM](https://orm.drizzle.team/)**: ORM leve e focado em performance.
- 🆔 **[@paralleldrive/cuid2](https://github.com/paralleldrive/cuid2)**: Biblioteca para geração de IDs únicos de forma segura.
- 🌱 **[Biome](https://biomejs.dev/)**: Ferramenta de linting e formatação para garantir código limpo.

## 🏗️ Arquitetura do Projeto

O projeto segue uma arquitetura modular, com foco em clareza e organização:

- Separação clara entre **rotas**, **schemas** e **persistência de dados**
- **Validação de entrada** rigorosa com Zod
- Operações de banco de dados seguras com **Drizzle ORM**
- **Gerenciamento centralizado** de variáveis de ambiente

## ⚙️ Como Configurar o Projeto

### Pré-requisitos

<p align="justify">Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:</p>

<a href="https://skillicons.dev">
  <img src="https://skillicons.dev/icons?i=git,nodejs,docker,vscode" />
</a>

### 🔧 Passo a Passo

### 1. Clone o repositório
```bash
git clone https://github.com/Gelzieny/nlw-agents-server.git
cd nlw-agents-server
```

### 2. Configure o banco de dados
```bash
docker-compose up -d
```

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto:

```env
PORT=3333
DATABASE_URL=postgresql://docker:docker@localhost:5432/agents
```

### 4. Instale as dependências
```bash
npm install
```

### 5. Execute as migrações do banco
```bash
npx drizzle-kit migrate
```

### 6. (Opcional) Popule o banco com dados de exemplo
```bash
npm run db:seed
```

### 7. Execute o projeto

**Desenvolvimento:**
```bash
npm run dev
```

**Produção:**
```bash
npm start
```

## 📚 Scripts Disponíveis

- `npm run dev` - Executa o servidor em modo de desenvolvimento com hot reload
- `npm start` - Executa o servidor em modo de produção
- `npm run db:seed` - Popula o banco de dados com dados de exemplo

## 🌐 Endpoints

A API estará disponível em `http://localhost:3333`

- `GET /health` - Health check da aplicação
- `GET /rooms` - Lista as salas disponíveis

# 🧑🏻‍💻 Autor

Feito com ❤️ por Gelzieny R. Martins 👋🏽 [Entre em contato!](https://www.linkedin.com/in/gelzieny-r-martins-180551106/)

## 📝 Licença

Este projeto esta sobe a licença [MIT](./LICENSE).