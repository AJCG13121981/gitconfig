#!/bin/bash

echo "🚀 INICIANDO CONFIGURACIÓN AUTOMÁTICA DE GIT + GITHUB"
echo "-----------------------------------------------------"

# === PREGUNTAR DATOS AL USUARIO ===
read -p "📝 Introduce tu nombre (Git user.name): " NOMBRE
read -p "📧 Introduce tu email (Git user.email): " EMAIL
read -p "🔗 Introduce la URL SSH de tu repositorio GitHub (ej: git@github.com:usuario/repo.git): " REPO_SSH

# === ACTUALIZAR EL SISTEMA ===
echo ""
echo "🔧 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

# === INSTALAR GIT ===
echo ""
echo "🔧 Instalando Git..."
sudo apt install git -y

# === CONFIGURAR GIT ===
echo ""
echo "⚙️ Configurando Git con tu nombre y correo..."
git config --global user.name "$NOMBRE"
git config --global user.email "$EMAIL"

# === GENERAR CLAVE SSH SI NO EXISTE ===
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo ""
    echo "✅ Clave SSH ya existe. Usando la existente."
else
    echo ""
    echo "🔐 Generando nueva clave SSH..."
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
fi

# === MOSTRAR CLAVE PÚBLICA PARA COPIAR ===
echo ""
echo "📋 Copia esta clave y añádela a tu GitHub aquí:"
echo "👉 https://github.com/settings/keys"
echo ""
cat ~/.ssh/id_ed25519.pub
echo ""
read -p "⏳ Pulsa [ENTER] cuando hayas pegado la clave en GitHub..."

# === TEST CONEXIÓN SSH A GITHUB ===
echo ""
echo "🔗 Verificando conexión con GitHub vía SSH..."
ssh -T git@github.com

# === ELEGIR ENTRE CLONAR O CREAR REPO ===
echo ""
read -p "¿Quieres clonar el repositorio ($REPO_SSH) (c) o crear uno nuevo local (n)? [c/n]: " OPCION

if [[ "$OPCION" == "c" ]]; then
    git clone "$REPO_SSH"
    echo "📥 Repositorio clonado correctamente."
else
    mkdir mi_proyecto && cd mi_proyecto
    git init
    echo "# Mi proyecto" > README.md
    git add .
    git commit -m "Primer commit"
    git remote add origin "$REPO_SSH"
    git branch -M main
    git push -u origin main
    echo "🚀 Repositorio local creado y subido a GitHub."
fi

echo ""
echo "✅ Configuración completa. Git y GitHub están listos para usarse."