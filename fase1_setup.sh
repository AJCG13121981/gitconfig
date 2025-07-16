#!/bin/bash

echo "🔧 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "🔧 Instalando Git..."
sudo apt install git -y

echo ""
echo "✅ Fase 1 completada."
echo "🔁 Es recomendable REINICIAR el sistema antes de ejecutar la Fase 2."