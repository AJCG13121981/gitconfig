# 🔧 Script de configuración Git + GitHub

Este script automatiza la configuración inicial de Git en cualquier dispositivo Linux.  
Incluye instalación de Git, configuración global, generación de clave SSH y sincronización con un repositorio remoto en GitHub.

---

## ⚙️ ¿Qué hace este script?

- ✅ Actualiza e instala Git
- ✅ Configura tu nombre y email global de Git
- ✅ Genera clave SSH si no existe
- ✅ Muestra la clave pública para que la pegues en GitHub
- ✅ Verifica conexión con GitHub vía SSH
- ✅ Te permite clonar o crear un repositorio y hacer el primer push

---

## 🚀 Uso rápido (un solo comando)

En cualquier dispositivo con Linux, ejecuta:

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/configura_git.sh | bash