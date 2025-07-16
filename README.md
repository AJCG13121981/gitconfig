# 🛠️ Instalador DEV — FASE 1

Este repositorio instala automáticamente herramientas clave de desarrollo para cualquier sistema Linux limpio (por ejemplo, una nueva máquina virtual con Ubuntu Desktop).

---

## 🧭 PASO PREVIO — Configurar idioma y hora en Ubuntu

### 🌐 Cambiar idioma a español

```bash
sudo apt update
sudo apt install language-pack-es -y
sudo update-locale LANG=es_ES.UTF-8
reboot
```

### ⏰ Cambiar zona horaria (hora de España)

Tras reiniciar, abre de nuevo la terminal y ejecuta:

```bash
sudo timedatectl set-timezone Europe/Madrid
timedatectl
```

---

## 🚀 ¿Cómo usar el instalador? (2 pasos)

### 1️⃣ Instala `curl` (si no lo tienes)

```bash
sudo apt install curl -y
```

### 2️⃣ Lanza el instalador FASE 1

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/fase1_setup.sh | bash
```

---

## ✅ ¿Qué hace este script?

- Actualiza tu sistema (`apt update && upgrade`)
- Instala herramientas esenciales:
  - `git`
  - `nodejs`
  - `npm`

---

📢 Al finalizar se mostrará un mensaje recordándote que debes reiniciar el sistema.  
🧩 Después podrás continuar con la FASE 2 (configuración de Git y conexión con GitHub).