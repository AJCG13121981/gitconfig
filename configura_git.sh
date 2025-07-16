#!/bin/bash

echo "⚙️ FASE 2: CONFIGURACIÓN DE GIT + ENLACE CON GITHUB"
echo "---------------------------------------------------"
sleep 1

# 0. Verificar cuenta en GitHub
read -p "❓ ¿Tienes ya una cuenta de GitHub? [s/n]: " TIENES_GITHUB
if [[ "$TIENES_GITHUB" != "s" && "$TIENES_GITHUB" != "S" ]]; then
    echo ""
    echo "🔗 Crea tu cuenta gratuita aquí: https://github.com/signup"
    echo "📌 Completa el registro antes de continuar."
    read -p "⏳ Pulsa ENTER cuando hayas creado tu cuenta..."
fi

# 1. Crear repositorio en GitHub
echo ""
echo "📁 Ahora crea tu repositorio vacío en GitHub:"
echo "👉 https://github.com/new"
echo "   - Asigna un nombre (ej: mi-repo)"
echo "   - NO marques ninguna casilla (sin README, .gitignore ni licencia)"
echo