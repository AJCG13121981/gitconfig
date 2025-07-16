#!/bin/bash

echo "🔧 Configuración de Git local"

read -p "Introduce tu nombre de usuario Git: " USERNAME
read -p "Introduce tu correo electrónico Git: " EMAIL

git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

echo ""
echo "✅ Git configurado con:"
git config --global --get user.name
git config --global --get user.email

echo ""
echo "🔐 Comprobando si ya existe una clave SSH..."

if [ -f ~/.ssh/id_rsa.pub ]; then
    echo "✅ Clave SSH ya existe."
else
    echo "🚧 No se encontró clave SSH. Vamos a generarla ahora."
    ssh-keygen -t rsa -b 4096 -C "$EMAIL"
fi

echo ""
echo "📋 Esta es tu clave pública. Cópiala y pégala en tu cuenta de GitHub:"
echo ""
cat ~/.ssh/id_rsa.pub
echo ""
echo "🔗 Accede a: https://github.com/settings/keys y pulsa en 'New SSH Key'"
read -p "Presiona ENTER cuando la hayas pegado en GitHub..."

echo "🔗 Probando conexión con GitHub..."
ssh -T git@github.com

echo ""
echo "📁 Creando carpeta de prueba y primer commit"
mkdir -p ~/mi_proyecto
cd ~/mi_proyecto
git init
echo "# Proyecto de prueba" > README.md
git add .
git commit -m "Primer commit desde configurador automático"

echo ""
echo "✅ FASE 2 completada."