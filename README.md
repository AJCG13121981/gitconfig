# 🛠️ Instalador DEV — FASE 1 + FASE 2

Este repositorio automatiza la configuración de un entorno de desarrollo completo en una máquina Linux limpia (por ejemplo, una VM con Ubuntu Desktop).

---

## 🚀 ¿Cómo usarlo? (2 fases)

---

### 🔧 FASE 1 — Preparar el entorno

1️⃣ Instala `curl` (si aún no lo tienes):

```bash
sudo apt install curl -y
```

2️⃣ Ejecuta el instalador principal:

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/fase1_setup.sh | bash
```

📢 Al finalizar, se te pedirá que reinicies el sistema.  
🔁 Hazlo antes de continuar con la FASE 2.

---

### 🔐 FASE 2 — Configurar Git y enlazar con GitHub

1️⃣ Después de reiniciar, entra en la carpeta del proyecto:

```bash
cd ~/gitconfig
```

2️⃣ Da permisos y ejecuta el script:

```bash
chmod +x configura_git.sh
./configura_git.sh
```

📌 Este script:

- Configura tu nombre y correo de Git
- Genera tu clave SSH (si no existe)
- Muestra la clave pública para que la pegues en GitHub  
  🔗 [https://github.com/settings/keys](https://github.com/settings/keys)
- Verifica la conexión SSH con GitHub
- Crea un proyecto local con README y realiza el primer commit

---

✅ Una vez completadas las dos fases, tu entorno estará listo para trabajar y enlazado con tu cuenta de GitHub.