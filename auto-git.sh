#!/usr/bin/env bash

# auto-git: Herramienta interactiva para acelerar el flujo de trabajo de Git con fzf

set -e

# Verificación de dependencias
if ! command -v fzf &> /dev/null; then
    echo "Error: 'fzf' no está instalado. Por favor instálalo para usar esta herramienta."
    exit 1
fi

if ! git rev-parse --is-inside-work-tree &> /dev/null; then
    echo "Error: No estás dentro de un repositorio Git."
    exit 1
fi

show_menu() {
    echo "=== AUTO-GIT CLI ==="
    echo "1) Switch Branch (Cambiar de rama)"
    echo "2) Git Merge (Fusionar rama)"
    echo "3) Delete Branch (Eliminar rama)"
    echo "4) Salir"
}

main() {
    show_menu
    read -p "Selecciona una opción [1-4]: " choice

    case $choice in
        1)
            BRANCH=$(git branch --all | sed 's/^[ *]*//' | fzf --preview 'git log --oneline --graph --date=short --color=always {}')
            if [ -n "$BRANCH" ]; then
                git checkout "$BRANCH"
            fi
            ;;
        2)
            TARGET_BRANCH=$(git branch --all | sed 's/^[ *]*//' | fzf --preview 'git diff HEAD..{} --color=always')
            if [ -n "$TARGET_BRANCH" ]; then
                git merge "$TARGET_BRANCH"
            fi
            ;;
        3)
            DEL_BRANCH=$(git branch | sed 's/^[ *]*//' | fzf)
            if [ -n "$DEL_BRANCH" ]; then
                read -p "¿Seguro que deseas eliminar $DEL_BRANCH? (s/N): " confirm
                if [[ "$confirm" =~ ^[Ss]$ ]]; then
                    git branch -d "$DEL_BRANCH"
                fi
            fi
            ;;
        4)
            echo "¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción no válida."
            exit 1
            ;;
    esac
}

main "$@"