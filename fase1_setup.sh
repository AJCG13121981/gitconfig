#!/bin/bash

echo "📦 INSTALANDO HERRAMIENTAS BÁSICAS PARA DESARROLLO"
echo "--------------------------------------------------"
sleep 1

echo ""
echo "📦 Instalando curl (necesario para descargas remotas)..."
sudo apt install curl -y

echo ""
echo "📦 Actualizando lista de paquetes..."
sudo apt update -y

echo ""
echo "📦 Actualizando paquetes del sistema..."
sudo apt upgrade -y

echo ""
echo "📦 Instalando Git..."
sudo apt install git -y

echo ""
echo "📦 Instalando Node.js..."
sudo apt install nodejs -y

echo ""
echo "📦 Instalando npm (gestor de paquetes para Node)..."
sudo apt install npm -y

echo ""
echo "✅ Instalación completada."
echo "🔁 Se recomienda reiniciar el sistema ahora."