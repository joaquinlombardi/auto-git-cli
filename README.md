# Auto-Git CLI 🚀

**Auto-Git CLI** es una herramienta de línea de comandos (Bash) interactiva diseñada para agilizar y simplificar el flujo de trabajo diario con Git. Utiliza el buscador difuso [`fzf`](https://github.com/junegunn/fzf) para permitir la selección rápida de ramas mediante previsualizaciones interactivas en tiempo real, evitando la necesidad de escribir comandos complejos o recordar nombres exactos de ramas.

---
## 📸 Vista Previa (Preview)

<img width="861" height="529" alt="demo1" src="https://github.com/user-attachments/assets/a8724f4b-9f9e-4558-b1cd-bceec76406c3" /><img width="862" height="530" alt="demo2" src="https://github.com/user-attachments/assets/68d780c8-eb43-4472-a7a6-c1c4259d3364" />



## 💡 Características Principales

- **Cambio de rama (Switch Branch):** Explora de forma interactiva todas las ramas (locales y remotas) con previsualización en vivo del historial de commits (`git log`) de la rama seleccionada.
- **Fusión de ramas (Git Merge):** Selecciona una rama para fusionar en tu rama actual observando una vista previa instantánea del diff de cambios (`git diff`).
- **Eliminación segura de ramas (Delete Branch):** Lista y selecciona ramas locales para su eliminación con confirmación previa para evitar descuidos.
- **Validaciones integradas:** Comprueba automáticamente la presencia de dependencias requeridas y asegura que el comando se ejecute dentro de un repositorio Git válido.

---

## 📋 Requisitos Previos

Para ejecutar la herramienta asegúrate de contar con los siguientes elementos instalados en tu sistema:

1. **Bash** (entorno de terminal compatible Unix/Linux, macOS o Git Bash en Windows).
2. **Git** ([https://git-scm.com/](https://git-scm.com/)).
3. **fzf** (Buscador difuso de línea de comandos).

### Instalación de `fzf`

- **macOS (Homebrew):**
  ```bash
  brew install fzf
  ```
- **Debian / Ubuntu:**
  ```bash
  sudo apt install fzf
  ```
- **Arch Linux:**
  ```bash
  sudo pacman -S fzf
  ```
- **Fedora:**
  ```bash
  sudo dnf install fzf
  ```

---

## 🛠️ Instalación y Configuración

1. Clona este repositorio o descarga el script:
   ```bash
   git clone [https://github.com/tu-usuario/auto-git-cli.git](https://github.com/tu-usuario/auto-git-cli.git)
   cd auto-git-cli
   ```
2. Otorga permisos de ejecución al script:
   ```bash
   chmod +x auto-git.sh
   ```
3. (Opcional) Haz la herramienta accesible globalmente:
Puedes mover el script a tu directorio de binarios globales o crear un alias en tu shell:
   
   - Opción A: Mover al PATH global
   ```bash
   sudo mv auto-git.sh /usr/local/bin/auto-git
   ```
   - Opción B: Crear un alias en ~/.bashrc o ~/.zshrc
   ```bash
   alias auto-git="/ruta/hacia/tu/script/auto-git.sh"
   ```

---

## 🚀 Mapeo de Funcionalidades y Uso

Ejecuta el script situándote en cualquier repositorio Git:
```bash
 ./auto-git.sh
```
### o simplemente 'auto-git' si configuraste el PATH/alias

Al iniciarse, se mostrará el menú principal interactivo:
```plaintex
=== AUTO-GIT CLI ===
1) Switch Branch (Cambiar de rama)
2) Git Merge (Fusionar rama)
3) Delete Branch (Eliminar rama)
4) Salir
```

Explicación del funcionamiento interno:
1) Switch Branch:
Muestra todas las ramas con git branch --all. Al navegar sobre ellas, fzf muestra en la ventana previa un gráfico coloreado del historial de commits (git log --oneline --graph). Una vez seleccionada, ejecuta git checkout.

2) Git Merge:
Permite seleccionar una rama objetivo y visualiza las diferencias entre la rama actual y la elegida (git diff HEAD..{}). Al pulsar Enter, ejecuta git merge <rama_seleccionada>.

3) Delete Branch:
Lista las ramas locales disponibles. Tras seleccionar una, solicita una confirmación explícita (s/N) antes de realizar la eliminación con git branch -d.

4) Salir:
Finaliza la ejecución del script limpiamente.

---

## 📄 Licencia

Este proyecto está distribuido bajo la licencia MIT. Siéntete libre de modificarlo, adaptarlo y contribuir.

   
