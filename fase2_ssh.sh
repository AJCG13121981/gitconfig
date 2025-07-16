#!/bin/bash

clear
echo "🔐 Generando clave SSH para conectar con GitHub..."
echo "----------------------------------------------------"

# Solicitar correo del usuario para identificar la clave
read -p "Introduce tu correo (GitHub email): " EMAIL

# Comprobar si ya existe una clave SSH
if [[ -f ~/.ssh/id_ed25519 ]]; then
    echo "✅ Ya existe una clave SSH en ~/.ssh/id_ed25519"
else
    # Generar nueva clave SSH sin passphrase
    ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""
    echo "✅ Clave SSH generada con éxito."
fi

# Mostrar la clave pública
echo -e "\n📋 Copia la siguiente clave y pégala en GitHub:"
echo "(https://github.com/settings/keys)"
echo "----------------------------------------------------"
cat ~/.ssh/id_ed25519.pub

echo -e "\n🕐 Cuando hayas añadido la clave pública en GitHub, pulsa ENTER para continuar."
read

# Verificar conexión SSH con GitHub
clear
echo "🔗 Verificando conexión SSH con GitHub..."
echo "----------------------------------------------------"
ssh -T git@github.com

echo -e "\n✅ Si has visto un mensaje de bienvenida, la conexión es correcta."
echo "❗️ Si hubo algún error, asegúrate de que has pegado la clave correctamente en GitHub."