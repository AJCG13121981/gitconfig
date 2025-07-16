#!/bin/bash

echo "🔧 FASE 2 - Configuración de Git y creación de proyecto"
echo "------------------------------------------------------"
sleep 1

# Clonar el repositorio
echo ""
echo "📥 Clonando el repositorio de configuración..."
git clone git@github.com:AJCG13121981/gitconfig.git || { echo "❌ Error al clonar el repositorio."; exit 1; }
cd gitconfig || { echo "❌ No se encontró la carpeta 'gitconfig'. Abortando."; exit 1; }

# Configuración de Git
echo ""
read -p "📝 Introduce tu nombre para Git (user.name): " USERNAME
read -p "📧 Introduce tu correo para Git (user.email): " EMAIL

git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

echo "✅ Git configurado con:"
git config --global --get user.name
git config --global --get user.email

# Crear proyecto de prueba
echo ""
echo "📁 Creando carpeta de prueba y primer commit"
mkdir -p ~/mi_proyecto
cd ~/mi_proyecto
git init
echo "# Mi proyecto" > README.md
git add .
git commit -m "Primer commit desde configurador automático"

echo ""
echo "✅ FASE 2 (Parte 2) completada. Proyecto listo para ser trabajado."