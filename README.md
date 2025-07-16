# 🛠️ Instalador DEV — FASE 1 + FASE 2

Este repositorio automatiza la configuración de un entorno de desarrollo en una máquina Linux limpia (por ejemplo, una VM con Ubuntu Desktop).

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

2. Descarga y ejecuta el script de generación de clave SSH:

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/fase2_ssh.sh | bash
```

📋 El script generará tu clave SSH y te la mostrará por pantalla.

🔗 Ve a: [https://github.com/settings/keys](https://github.com/settings/keys)  
Clica en "New SSH Key", pega la clave y guárdala.

---

### Parte 2️⃣: Clonar el repo y configurar Git

Una vez tengas configurada la clave SSH y verificada la conexión:

1. Clona este repositorio con:

```bash
git clone git@github.com:AJCG13121981/gitconfig.git
cd gitconfig
```

2. Da permisos y ejecuta el configurador:

```bash
chmod +x fase2_configura_git.sh
./fase2_configura_git.sh
```

El script te pedirá tu nombre y correo para Git, creará un repositorio local y hará el primer commit.

---

✅ ¡Listo! Ya tienes tu entorno DEV inicializado, Git configurado y conectado con GitHub.

Próxima FASE: subir el proyecto remoto o trabajar en proyectos nuevos sincronizados.