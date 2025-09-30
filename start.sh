#!/bin/bash

echo "🚀 Iniciando o AgendaPro..."

# Verificar se o PostgreSQL está rodando
if ! pgrep -x "postgres" > /dev/null; then
    echo "⚠️  PostgreSQL não está rodando. Iniciando..."
    sudo systemctl start postgresql
fi

# Verificar se o banco existe
if ! sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -qw agendamentos_db; then
    echo "📊 Criando banco de dados..."
    sudo -u postgres createdb agendamentos_db
fi

echo "🔧 Instalando dependências do backend..."
npm install

echo "🔧 Instalando dependências do frontend..."
cd frontend
npm install --legacy-peer-deps
cd ..

echo "✅ Projeto configurado com sucesso!"
echo ""
echo "Para executar o projeto:"
echo "1. Backend: npm run dev (porta 3000)"
echo "2. Frontend: cd frontend && npm run dev (porta 5173)"
echo ""
echo "Ou execute os comandos em terminais separados:"
echo "Terminal 1: npm run dev"
echo "Terminal 2: cd frontend && npm run dev"

