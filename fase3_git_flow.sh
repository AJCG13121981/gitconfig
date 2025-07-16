#!/bin/bash

clear
echo "🔄 CONFIGURANDO FLUJO DE TRABAJO GIT"
echo "--------------------------------------------"

# Nos aseguramos de estar dentro del proyecto creado
cd ~/mi_proyecto || {
    echo "❌ No se encontró el directorio ~/mi_proyecto"
    exit 1
}

# Verificar si ya hay un repositorio remoto
REMOTE_URL=$(git remote get-url origin 2>/dev/null)
if [[ -z "$REMOTE_URL" ]]; then
    read -p "🔗 Introduce la URL SSH de tu repositorio en GitHub (git@github.com:usuario/repo.git): " REPO_URL
    git remote add origin "$REPO_URL"
    git branch -M main
    echo "✅ Repositorio remoto configurado."
else
    echo "✅ Ya existe un repositorio remoto: $REMOTE_URL"
fi

# Crear alias útiles en Git global
read -p "¿Deseas añadir alias útiles a tu configuración de Git? (s/n): " ADD_ALIAS
if [[ "$ADD_ALIAS" =~ ^[sS]$ ]]; then
    git config --global alias.st status
    git config --global alias.cm "commit -m"
    git config --global alias.br branch
    git config --global alias.co checkout
    git config --global alias.lg "log --oneline --graph --all"
    echo "✅ Alias añadidos a Git."
fi

# Crear .gitignore si no existe
if [[ ! -f .gitignore ]]; then
    echo -e "# Archivos comunes a ignorar\nnode_modules/\n.DS_Store\n.env" > .gitignore
    git add .gitignore
    echo "📁 Archivo .gitignore creado."
fi

# Confirmar primer commit si no hay ninguno
if ! git log > /dev/null 2>&1; then
    git add .
    git commit -m "🚀 Primer commit"
    echo "✅ Primer commit realizado."
fi

# Subir al repositorio remoto
read -p "¿Deseas hacer push ahora al repositorio remoto? (s/n): " PUSH_NOW
if [[ "$PUSH_NOW" =~ ^[sS]$ ]]; then
    git push -u origin main
    echo "✅ Cambios subidos al repositorio."
else
    echo "📌 Push manual pendiente. Puedes hacerlo con: git push -u origin main"
fi