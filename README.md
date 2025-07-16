# 🔧 Configurador automático de Git + GitHub

Este repositorio contiene dos scripts que te permiten configurar Git y enlazarlo con GitHub desde cualquier equipo Linux, paso a paso y de forma automatizada.

---

## 📁 Estructura del repositorio

```
gitconfig/
├── fase1_setup.sh         # Paso 1: actualiza el sistema e instala Git
├── configura_git.sh       # Paso 2: configuración personalizada + conexión GitHub
└── README.md              # Instrucciones paso a paso
```

---

## 🚀 ¿Cómo se usa?

Sigue estos pasos **en orden** para que todo funcione correctamente:

---

### 1️⃣ Clonar este repositorio en tu dispositivo

Abre la terminal y ejecuta:

```bash
git clone git@github.com:AJCG13121981/gitconfig.git
cd gitconfig
```

---

### 2️⃣ Ejecutar el primer script (actualiza e instala Git)

Este script actualiza el sistema e instala Git automáticamente:

```bash
chmod +x fase1_setup.sh
./fase1_setup.sh
```

Cuando termine, el propio script te dirá que **reinicies el equipo**.  
Esto es importante para aplicar correctamente todos los cambios del sistema.

---

### 🔁 Reinicia tu sistema antes de continuar

Una vez reiniciado...

---

### 3️⃣ Ejecutar el segundo script (configura Git + GitHub)

Este script te pedirá los siguientes datos:
- 📝 Tu nombre completo (para Git)
- 📧 Tu correo electrónico (para Git)
- 🔗 La URL SSH de tu repositorio GitHub (ej: `git@github.com:usuario/mi-repo.git`)

Y después:
- Generará tu clave SSH si no existe
- Te mostrará la clave para que la copies en GitHub
- Verificará la conexión SSH con GitHub
- Te preguntará si quieres clonar un repo o crear uno nuevo

Ejecuta así:

```bash
chmod +x configura_git.sh
./configura_git.sh
```

---

## 💡 Requisitos

- Ubuntu/Debian o derivado (Linux)
- Permisos de superusuario (`sudo`)
- Conexión a internet
- Una cuenta en GitHub

---

## ✉️ Autor

**Ángel Cumbreño**  
GitHub: [@AJCG13121981](https://github.com/AJCG13121981)