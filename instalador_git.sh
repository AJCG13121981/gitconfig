#!/bin/bash

echo "🔧 FASE 1: PREPARACIÓN DEL ENTORNO DEV"
echo "--------------------------------------"
sleep 1

# Clonar repo de configuración
echo ""
echo "📥 Clonando el repositorio de configuración..."
git clone https://github.com/AJCG13121981/gitconfig.git || { echo "❌ Error al clonar el repositorio."; exit 1; }
cd gitconfig || { echo "❌ No se encontró la carpeta 'gitconfig'."; exit 1; }

# Ejecutar fase 1
echo ""
echo "🛠️ Ejecutando instalación de herramientas básicas..."
chmod +x fase1_setup.sh
./fase1_setup.sh

# Final
echo ""
echo "✅ FASE 1 completada correctamente."
echo "🔁 Reinicia ahora el sistema antes de continuar con futuras fases."