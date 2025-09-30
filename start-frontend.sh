#!/bin/bash

# Script para iniciar apenas o frontend
# Uso: ./start-frontend.sh

echo "🎨 Iniciando frontend do AgendaPro..."
echo "================================================"

# Verificar se as dependências estão instaladas
if [ ! -d "frontend/node_modules" ]; then
    echo "❌ Dependências do frontend não encontradas. Execute ./install-deps.sh primeiro."
    exit 1
fi

echo "✅ Dependências encontradas"
echo ""

# Navegar para o diretório do frontend
cd frontend

# Iniciar o frontend
echo "🚀 Iniciando servidor frontend na porta 5173..."
echo ""
echo "📍 URLs de acesso:"
echo "   Frontend: http://localhost:5173"
echo "   Painel:   http://localhost:5173/painel"
echo "   Login:    http://localhost:5173/login"
echo ""
echo "💡 Pressione Ctrl+C para parar o serviço"
echo "================================================"

npm run dev

