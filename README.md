# 🚀 Instalador automático de Git + GitHub para Linux

Este repositorio contiene un instalador guiado que configura Git, genera clave SSH, conecta con GitHub y deja tu entorno listo para clonar, crear y trabajar con repositorios.

---

## 🟢 USO RÁPIDO: SOLO COPIA Y PEGA ESTE COMANDO

```bash
curl -s https://raw.githubusercontent.com/AJCG13121981/gitconfig/main/instalador_git.sh | bash
```

⚠️ Ejecuta este único comando desde cualquier equipo Linux (Ubuntu/Debian) y sigue las instrucciones en pantalla.

---

## 📁 Qué hace automáticamente

- Comprueba si tienes clave SSH
- La genera y te muestra dónde pegarla en GitHub
- Verifica la conexión con GitHub
- Clona este mismo repositorio
- Actualiza el sistema e instala Git
- Te guía para continuar después del reinicio

---

## 🔁 Tras el reinicio...

Cuando el sistema se reinicie, entra de nuevo a la carpeta clonada y ejecuta:

```bash
cd gitconfig
./configura_git.sh
```

Este script pedirá:
- Tu nombre
- Tu email
- La URL SSH del repo que quieras usar
Y te configurará todo el entorno Git.

---

## ✉️ Autor

**Ángel Cumbreño**  
GitHub: [@AJCG13121981](https://github.com/AJCG13121981)