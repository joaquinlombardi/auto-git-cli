# auto-git-cli

Herramienta en Bash impulsada por `fzf` para agilizar comandos frecuentes de Git desde la terminal.

## Características

* **Switch de ramas:** Cambia de rama con vista previa en tiempo real de sus commits.
* **Merge visual:** Previsualiza el `diff` antes de fusionar.
* **Borrado rápido:** Elimina ramas locales de forma interactiva.
* **Manejo de errores:** Cancela operaciones de forma limpia con `ESC` o `Ctrl+C`.

## Requisitos

* [Git](https://git-scm.com/)
* [fzf](https://github.com/junegunn/fzf)

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/joaquinlombardi/auto-git-cli.git
   cd auto-git-cli

2. Otorga permisos de ejecución al script:
   chmod +x auto-git.sh

## Uso

### Uso local (desde la carpeta del proyecto)
./auto-git.sh

### Uso global (instalación en el sistema)
Si quieres ejecutar la herramienta desde cualquier repositorio usando la palabra autogit:

1. Copia el script a tu carpeta de binarios locales y dale permisos:
   mkdir -p ~/.local/bin
   cp auto-git.sh ~/.local/bin/autogit
   chmod +x ~/.local/bin/autogit

2. Asegúrate de que ~/.local/bin esté en tu $PATH:
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
   source ~/.zshrc

3. ¡Listo! Ahora solo escribe autogit en cualquier terminal.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.  