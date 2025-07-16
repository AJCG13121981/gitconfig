#!/bin/bash

echo "🚀 INICIANDO CONFIGURACIÓN INTERACTIVA DE GIT + GITHUB"
echo "------------------------------------------------------"

# === PREGUNTAR DATOS AL USUARIO ===
read -p "📝 Introduce tu nombre (Git user.name): " NOMBRE
read -p "📧 Introduce tu email (Git user.email): " EMAIL
read -p "🔗 Introduce la URL SSH de tu repositorio GitHub (ej: git@github.com:usuario/repo.git): " REPO_SSH

# === CONFIGURAR GIT ===
echo ""
echo "⚙️ Configurando Git..."
git config --global user.name "$NOMBRE"
git config --global user.email "$EMAIL"

# === GENERAR CLAVE SSH SI NO EXISTE ===
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo "✅ Clave SSH ya existe."
else
    echo "🔐 Generando nueva clave SSH..."
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
fi

# === MOSTRAR CLAVE PÚBLICA ===
echo ""
echo "📋 Copia esta clave y añádela en: https://github.com/settings/keys"
cat ~/.ssh/id_ed25519.pub
echo ""
read -p "⏳ Pulsa [ENTER] cuando hayas añadido la clave a GitHub..."

# === PROBAR CONEXIÓN SSH ===
echo ""
ssh -T git@github.com

# === ELEGIR ENTRE CLONAR O CREAR ===
echo ""
read -p "¿Quieres clonar el repo ($REPO_SSH) (c) o crear uno nuevo local (n)? [c/n]: " OPCION

if [[ "$OPCION" == "c" ]]; then
    git clone "$REPO_SSH"
    echo "📥 Repo clonado correctamente."
else
    mkdir mi_proyecto && cd mi_proyecto
    git init
    echo "# Mi proyecto" > README.md
    git add .
    git commit -m "Primer commit"
    git remote add origin "$REPO_SSH"
    git branch -M main
    git push -u origin main
    echo "🚀 Proyecto local creado y subido."
fi

echo ""
echo "✅ Git y GitHub configurados correctamente."