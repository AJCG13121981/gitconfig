#!/bin/bash

echo "🧠 Verificando entorno SSH..."

# Comprobar existencia de SSH
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo "✅ Clave SSH detectada."
else
    echo "🔐 Generando nueva clave SSH..."
    read -p "📧 Introduce tu correo para la clave SSH: " EMAIL
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
    echo "✅ Clave SSH generada correctamente."
fi

# Mostrar clave
echo ""
echo "📋 Clave pública generada:"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "🔗 Puedes añadirla a GitHub más adelante: https://github.com/settings/keys"

# Clonar repo y ejecutar FASE 1
echo ""
echo "📥 Clonando el repositorio de configuración..."
git clone git@github.com:AJCG13121981/gitconfig.git || { echo "❌ Error al clonar el repositorio."; exit 1; }
cd gitconfig || { echo "❌ No se encontró la carpeta 'gitconfig'."; exit 1; }

echo ""
echo "🛠️ Ejecutando FASE 1: instalación de herramientas básicas..."
chmod +x fase1_setup.sh
./fase1_setup.sh

echo ""
echo "✅ Fase 1 completada. El sistema está preparado."
echo "🔁 Reinicia ahora para continuar con la siguiente fase más adelante."