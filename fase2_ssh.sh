#!/bin/bash

echo "🔧 FASE 2 - Generación y configuración de clave SSH"
echo "---------------------------------------------------"
sleep 1

# Generar clave SSH si no existe
if [ ! -f ~/.ssh/id_rsa.pub ]; then
    echo ""
    echo "🚧 No se encontró una clave SSH."
    echo "🔐 Generando nueva clave SSH..."
    read -p "Introduce tu correo para la clave SSH: " EMAIL
    ssh-keygen -t rsa -b 4096 -C "$EMAIL" -f ~/.ssh/id_rsa -N ""
    echo "✅ Clave SSH generada correctamente."
else
    echo ""
    echo "✅ Clave SSH ya existe."
fi

# Mostrar clave pública
echo ""
echo "📋 Esta es tu clave pública. Cópiala y pégala en GitHub:"
cat ~/.ssh/id_rsa.pub
echo ""
echo "🔗 Accede a GitHub en: https://github.com/settings/keys y pulsa en 'New SSH Key'"
echo "📌 Pega la clave y guárdala."

read -p "⏳ Pulsa ENTER cuando hayas pegado la clave en GitHub..."

# Verificar conexión SSH con GitHub
echo ""
echo "🔗 Probando conexión con GitHub..."
ssh -T git@github.com

if [ $? -eq 1 ]; then
    echo "✅ Conexión SSH con GitHub establecida correctamente."
else
    echo "❌ Error al conectar con GitHub. Asegúrate de haber pegado la clave correctamente."
    exit 1
fi

echo ""
echo "✅ FASE 2 (Parte 1) completada. Ahora puedes continuar con la siguiente fase."