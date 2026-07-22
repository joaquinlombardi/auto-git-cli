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