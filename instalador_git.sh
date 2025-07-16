#!/bin/bash

echo "🧠 Verificando entorno SSH..."

# ¿Existe clave SSH?
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo "✅ Clave SSH detectada."
else
    echo "🔐 No se detectó una clave SSH. Vamos a crearla."
    read -p "📧 Introduce tu correo para la clave SSH: " EMAIL
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
    echo ""
    echo "📋 Copia esta clave y añádela en GitHub (Settings > SSH and GPG keys):"
    echo "👉 https://github.com/settings/keys"
    echo ""
    cat ~/.ssh/id_ed25519.pub
    echo ""
    read -p "⏳ Pulsa [ENTER] cuando hayas añadido la clave en GitHub..."
fi

echo ""
echo "🔗 Verificando conexión SSH con GitHub..."
ssh -T git@github.com

echo ""
echo "📥 Clonando el repositorio de configuración..."
git clone git@github.com:AJCG13121981/gitconfig.git
cd gitconfig

echo ""
echo "🛠️ Ejecutando fase 1: instalación y actualización del sistema..."
chmod +x fase1_setup.sh
./fase1_setup.sh

echo ""
echo "📢 🔁 REINICIA ahora el sistema para continuar con la fase 2"
echo "📂 Cuando vuelvas, entra en la carpeta 'gitconfig' y ejecuta:"
echo "     ./configura_git.sh"