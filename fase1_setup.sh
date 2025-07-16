#!/bin/bash

echo "🔧 FASE 1: INSTALACIÓN DE HERRAMIENTAS BÁSICAS"
echo "---------------------------------------------"
sleep 1

# Verificar si curl está disponible
if ! command -v curl >/dev/null 2>&1; then
    echo ""
    echo "⚠️  curl no está instalado."
    echo "👉 Ejecuta:"
    echo "   sudo apt install curl -y"
    echo ""
    echo "🔁 Luego vuelve a lanzar este script:"
    echo "   ./fase1_setup.sh"
    exit 1
fi

# Actualizar sistema
echo ""
echo "📦 Actualizando paquetes..."
sudo apt update -y
sudo apt upgrade -y

# Instalar herramientas básicas
echo ""
echo "📦 Instalando Git..."
sudo apt install git -y

echo ""
echo "📦 Instalando Node.js..."
sudo apt install nodejs -y

echo ""
echo "📦 Instalando npm..."
sudo apt install npm -y

# Final
echo ""
echo "✅ Instalación finalizada."
echo "🔁 Reinicia ahora el sistema antes de continuar con futuras fases."