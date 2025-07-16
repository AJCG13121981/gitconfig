#!/bin/bash

echo "🧠 Verificando entorno SSH..."

# 1. Verificar si ya hay clave
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo "✅ Clave SSH detectada."
else
    echo "🔐 No se detectó una clave SSH. Vamos a crearla."
    read -p "📧 Introduce tu correo para la clave SSH: " EMAIL
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
    echo "✅ Clave SSH generada."
fi

# 2. Mostrar la clave pública
echo ""
echo "📋 Esta es tu clave pública actual:"
cat ~/.ssh/id_ed25519.pub

# 3. Recordatorio: crear el repositorio en GitHub
echo ""
echo "⚠️ Asegúrate también de haber creado tu repositorio en GitHub:"
echo "👉 https://github.com/new"
echo "   - Elige un nombre para el repo (ej: mi-repo)"
echo "   - No marques ninguna opción (ni README, ni .gitignore)"
echo ""

# 4. Confirmar que la clave está subida
read -p "❓ ¿Has añadido esta clave y creado el repositorio? [s/n]: " OK

if [[ "$OK" != "s" && "$OK" != "S" ]]; then
    echo ""
    echo "📌 Sube la clave aquí 👉 https://github.com/settings/keys"
    echo "📌 Y crea el repositorio aquí 👉 https://github.com/new"
    echo ""
    read -p "⏳ Pulsa ENTER cuando lo hayas hecho..."
fi

# 5. Verificar conexión SSH con GitHub
echo ""
echo "🔗 Verificando conexión SSH con GitHub..."
ssh -T git@github.com

if [ $? -ne 1 ]; then
    echo "❌ Error: GitHub no reconoce tu clave SSH."
    echo "⛔ Revisa si la has pegado correctamente en tu cuenta."
    exit 1
fi

# 6. Clonar el repositorio
echo ""
echo "📥 Clonando el repositorio de configuración..."
git clone git@github.com:AJCG13121981/gitconfig.git || { echo "❌ Error al clonar el repositorio. Abortando."; exit 1; }
cd gitconfig || { echo "❌ No se encontró la carpeta 'gitconfig'. Abortando."; exit 1; }

# 7. Ejecutar fase 1
echo ""
echo "🛠️ Ejecutando fase 1: instalación y actualización del sistema..."
chmod +x fase1_setup.sh
./fase1_setup.sh

# 8. Final
echo ""
echo "📢 🔁 REINICIA ahora el sistema para continuar con la fase 2"
echo "📂 Cuando vuelvas, entra en la carpeta 'gitconfig' y ejecuta:"
echo "     ./configura_git.sh"