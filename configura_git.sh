#!/bin/bash

### === VARIABLES A PERSONALIZAR === ###
NOMBRE="AJCG13121981"
EMAIL="ajcg.git.github@gmail.com"
REPO_SSH="git@github.com:AJCG13121981/gitconfig.git"
#######################################

echo "🔧 Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

echo "🔧 Instalando Git..."
sudo apt install git -y

echo "⚙️ Configurando usuario global de Git..."
git config --global user.name "$NOMBRE"
git config --global user.email "$EMAIL"

# Comprobar si la clave SSH ya existe
if [ -f "$HOME/.ssh/id_ed25519.pub" ]; then
    echo "✅ Clave SSH ya existe. No se genera nueva."
else
    echo "🔐 Generando nueva clave SSH..."
    ssh-keygen -t ed25519 -C "$EMAIL" -f "$HOME/.ssh/id_ed25519" -N ""
fi

# Mostrar clave pública para que el usuario la copie
echo ""
echo "📋 Copia esta clave y pégala en GitHub:"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "🌐 Añádela aquí: https://github.com/settings/keys"
read -p "⏳ Pulsa [ENTER] cuando hayas pegado la clave..."

# Probar conexión SSH con GitHub
ssh -T git@github.com

# Preguntar si se desea clonar o iniciar repo
echo ""
read -p "¿Quieres clonar el repo $REPO_SSH (c) o crear uno nuevo local (n)? [c/n]: " OPCION

if [[ "$OPCION" == "c" ]]; then
    git clone "$REPO_SSH"
    echo "📥 Repositorio clonado."
else
    mkdir mi_proyecto && cd mi_proyecto
    git init
    echo "# Mi proyecto" > README.md
    git add .
    git commit -m "Primer commit"
    git remote add origin "$REPO_SSH"
    git branch -M main
    git push -u origin main
    echo "🚀 Repo local creado y sincronizado con GitHub."
fi