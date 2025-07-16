# 🛠️ Instalador DEV — FASE 1

Este repositorio instala automáticamente herramientas clave de desarrollo para cualquier sistema Linux limpio (por ejemplo, una nueva máquina virtual con Ubuntu Desktop).

---

## 🚀 ¿Cómo usarlo? (2 pasos)

### 1️⃣ Instala `curl` (si no lo tienes)

```bash
sudo apt install curl -y
```

### 2️⃣ Lanza el instalador FASE 1

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/fase1_setup.sh | bash
```

---

## ✅ ¿Qué instala este script?

- 🔧 Sistema actualizado (`apt update && upgrade`)
- 🧰 Herramientas esenciales de desarrollo:
  - `git` – Control de versiones
  - `nodejs` + `npm` – Desarrollo JS/Node
  - `python3` + `python3-pip` – Desarrollo en Python
  - `default-jdk` – Entorno de desarrollo Java
  - `build-essential` – Compiladores y librerías base
  - `curl` y `wget` – Descarga de archivos
  - `zip` y `unzip` – Gestión de archivos comprimidos
  - `htop` – Monitor del sistema avanzado
  - `gnupg` – Firmado y cifrado de claves
  - `software-properties-common` y `ca-certificates` – Repositorios y seguridad

---

📢 Al finalizar se mostrará un mensaje recordándote que debes reiniciar el sistema.  
🧩 Después podrás continuar con la FASE 2 (configuración de Git y conexión con GitHub).