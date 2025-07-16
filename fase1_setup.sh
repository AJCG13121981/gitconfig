#!/bin/bash

echo "🔧 FASE 1: PREPARACIÓN DEL ENTORNO DEV"
echo "--------------------------------------"
sleep 1

echo ""
echo "📦 Paso 1: Instalando curl..."
echo "   👉 curl es necesario para descargar scripts remotos como este."
sudo apt install curl -y

echo ""
echo "📦 Paso 2: Actualizando la lista de paquetes del sistema..."
sudo apt update -y

echo ""
echo "📦 Paso 3: Actualizando los paquetes instalados..."
sudo apt upgrade -y

echo ""
echo "📦 Paso 4: Instalando Git..."
echo "   👉 Git es el sistema de control de versiones más usado en desarrollo."
sudo apt install git -y

echo ""
echo "📦 Paso 5: Instalando Node.js..."
echo "   👉 Node.js permite ejecutar JavaScript en el servidor y es usado por muchas herramientas modernas."
sudo apt install nodejs -y

echo ""
echo "📦 Paso 6: Instalando npm (gestor de paquetes para Node.js)..."
sudo apt install npm -y

# Puedes añadir más herramientas base aquí si lo crees conveniente.

echo ""
echo "✅ Fase 1 completada correctamente."
echo "🔁 Es MUY recomendable reiniciar ahora el sistema para aplicar todos los cambios."