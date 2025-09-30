#!/bin/bash

# Script para iniciar apenas o backend
# Uso: ./start-backend.sh

echo "🔧 Iniciando backend do AgendaPro..."
echo "================================================"

# Verificar se as dependências estão instaladas
if [ ! -d "node_modules" ]; then
    echo "❌ Dependências do backend não encontradas. Execute ./install-deps.sh primeiro."
    exit 1
fi

# Verificar se o PostgreSQL está rodando
if ! pgrep -x "postgres" > /dev/null; then
    echo "⚠️  PostgreSQL não está rodando. Tentando iniciar..."
    sudo systemctl start postgresql
    sleep 2
    
    if ! pgrep -x "postgres" > /dev/null; then
        echo "❌ Não foi possível iniciar o PostgreSQL. Verifique a instalação."
        exit 1
    fi
fi

echo "✅ PostgreSQL está rodando"
echo ""

# Iniciar o backend
echo "🚀 Iniciando servidor backend na porta 3000..."
npm run dev

