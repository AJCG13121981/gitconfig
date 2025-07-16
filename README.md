# 🛠️ Instalador DEV — FASE 1 + FASE 2

Este repositorio automatiza la configuración de un entorno de desarrollo en una máquina Linux limpia (como una VM con Ubuntu).

---

## 🔧 FASE 1 — Preparar el entorno básico

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

## 🔐 FASE 2 — Conectar con GitHub y configurar Git

---

### Parte 1️⃣: Crear y registrar tu clave SSH

1. Asegúrate de tener una cuenta de GitHub creada.  
   📌 Si no la tienes, regístrate en: [https://github.com/join](https://github.com/join)

2. Ejecuta el script para generar tu clave SSH:

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/fase2_ssh.sh | bash
```

📋 El script:

- Te pedirá tu email.
- Generará tu clave SSH si no existe.
- Mostrará la clave pública por pantalla.

🔗 Copia esa clave y pégala en [https://github.com/settings/keys](https://github.com/settings/keys)

Cuando termines, pulsa ENTER para verificar la conexión.

---

### Parte 2️⃣: Clonar el repo y configurar Git

Una vez confirmada la conexión con GitHub:

```bash
git clone git@github.com:AJCG13121981/gitconfig.git
cd gitconfig
chmod +x fase2_configura_git.sh
./fase2_configura_git.sh
```

📦 Esto:

- Te pedirá tu nombre y correo para Git.
- Creará la carpeta `~/mi_proyecto`.
- Hará el primer commit local.

---

✅ ¡Entorno DEV conectado y listo!  
📌 Próxima fase: flujo completo GitHub → trabajo → push/pull automático.