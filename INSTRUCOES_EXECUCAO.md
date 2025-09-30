# 🚀 Instruções de Execução - AgendaPro

## ✅ Projeto Integrado com Sucesso!

O projeto foi integrado com sucesso, combinando:
- **Backend**: Node.js + Express + Sequelize + PostgreSQL
- **Frontend**: React + Vite + Tailwind CSS + Shadcn/ui

## 📋 Pré-requisitos

- Node.js (versão 18 ou superior)
- PostgreSQL instalado e rodando
- npm ou yarn

## 🔧 Configuração Inicial

### 1. Configurar PostgreSQL

```bash
# Iniciar PostgreSQL
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Configurar usuário e banco
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
sudo -u postgres createdb agendamentos_db
```

### 2. Configurar Variáveis de Ambiente

O arquivo `.env` já está configurado na raiz do projeto com:

```env
DB_NAME=agendamentos_db
DB_USER=postgres
DB_PASS=130610
DB_HOST=localhost
DB_PORT=5432
JWT_SECRET=seu_jwt_secret_super_seguro_aqui_123456789
JWT_EXPIRES_IN=7d
PORT=3000
NODE_ENV=development
```

## 🚀 Como Executar

### Opção 1: Execução Automática (Recomendada)

```bash
cd projeto-integrado
./start.sh
```

### Opção 2: Execução Manual

#### Terminal 1 - Backend
```bash
cd projeto-integrado
npm install
npm run dev
```
O backend estará rodando em: http://localhost:3000

#### Terminal 2 - Frontend
```bash
cd projeto-integrado/frontend
npm install --legacy-peer-deps
npm run dev
```
O frontend estará rodando em: http://localhost:5173

## 🌐 Acessando a Aplicação

- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:3000
- **API Docs**: http://localhost:3000 (retorna JSON com endpoints disponíveis)

## 🔗 Endpoints da API

### Autenticação
- `POST /api/auth/register` - Registro de usuário
- `POST /api/auth/login` - Login de usuário
- `POST /api/auth/logout` - Logout de usuário

### Serviços
- `GET /api/servicos` - Listar serviços
- `POST /api/servicos` - Criar serviço
- `PUT /api/servicos/:id` - Atualizar serviço
- `DELETE /api/servicos/:id` - Deletar serviço

### Horários de Funcionamento
- `GET /api/business-hours` - Obter horários
- `PUT /api/business-hours` - Atualizar horários

## 🛠️ Funcionalidades Implementadas

### Backend
- ✅ Servidor Express configurado
- ✅ Conexão com PostgreSQL via Sequelize
- ✅ Modelos de dados (User, Service, BusinessHours)
- ✅ Autenticação JWT
- ✅ CORS configurado para frontend
- ✅ Rotas de API organizadas
- ✅ Middleware de proteção

### Frontend
- ✅ Aplicação React com Vite
- ✅ Roteamento com React Router
- ✅ Context API para autenticação
- ✅ Componentes UI com Shadcn/ui
- ✅ Estilização com Tailwind CSS
- ✅ Integração com API do backend
- ✅ Páginas principais (Home, Login, Dashboard, etc.)

## 🔧 Estrutura do Projeto

```
projeto-integrado/
├── backend/
│   ├── src/
│   │   ├── config/database.js
│   │   ├── controllers/
│   │   ├── models/
│   │   └── routes/
│   ├── server.js
│   ├── package.json
│   └── .env
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── services/
│   │   ├── context/
│   │   └── utils/
│   ├── package.json
│   └── vite.config.js
├── README.md
├── INSTRUCOES_EXECUCAO.md
└── start.sh
```

## 🐛 Solução de Problemas

### Backend não conecta ao PostgreSQL
```bash
# Verificar se PostgreSQL está rodando
sudo systemctl status postgresql

# Reiniciar se necessário
sudo systemctl restart postgresql
```

### Frontend não carrega
```bash
# Limpar cache e reinstalar dependências
cd frontend
rm -rf node_modules package-lock.json
npm install --legacy-peer-deps
```

### Erro de CORS
- O CORS já está configurado no backend
- Certifique-se de que o backend está rodando na porta 3000

## 📝 Notas Importantes

1. **Dependências**: Use `--legacy-peer-deps` ao instalar dependências do frontend
2. **Portas**: Backend (3000) e Frontend (5173) devem estar livres
3. **PostgreSQL**: Deve estar rodando antes de iniciar o backend
4. **Desenvolvimento**: Execute ambos os servidores simultaneamente





