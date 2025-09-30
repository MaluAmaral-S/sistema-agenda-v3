#!/bin/bash

# Script para instalar todas as dependências do projeto AgendaPro
# Uso: ./install-deps.sh

echo "🚀 Instalando dependências do AgendaPro..."
echo "================================================"

# Verificar se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Por favor, instale o Node.js primeiro."
    exit 1
fi

# Verificar se o npm está instalado
if ! command -v npm &> /dev/null; then
    echo "❌ npm não encontrado. Por favor, instale o npm primeiro."
    exit 1
fi

echo "✅ Node.js $(node --version) encontrado"
echo "✅ npm $(npm --version) encontrado"
echo ""

# Instalar dependências do backend
echo "📦 Instalando dependências do backend..."
if npm install; then
    echo "✅ Dependências do backend instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências do backend"
    exit 1
fi

echo ""

# Instalar dependências do frontend
echo "📦 Instalando dependências do frontend..."
cd frontend

if npm install --legacy-peer-deps; then
    echo "✅ Dependências do frontend instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências do frontend"
    exit 1
fi

cd ..

echo ""
echo "🎉 Todas as dependências foram instaladas com sucesso!"
echo ""
echo "Para iniciar o projeto, use:"
echo "  ./start-dev.sh    # Inicia frontend e backend simultaneamente"
echo "  ./start-backend.sh # Inicia apenas o backend"
echo "  ./start-frontend.sh # Inicia apenas o frontend"
echo ""
echo "URLs de acesso:"
echo "  Backend:  http://localhost:3000"
echo "  Frontend: http://localhost:5173"
echo "================================================"

