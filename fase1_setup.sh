#!/bin/bash

echo "🛠️ Ejecutando fase 1: actualización del sistema y herramientas DEV..."

sudo apt update && sudo apt upgrade -y

sudo apt install -y \
  curl \
  wget \
  git \
  nodejs \
  npm \
  python3 \
  python3-pip \
  default-jdk \
  build-essential \
  zip unzip \
  htop \
  gnupg \
  software-properties-common \
  ca-certificates

echo ""
echo "✅ Instalación completada."

echo "📢 🔁 REINICIA ahora el sistema para continuar con la FASE 2"