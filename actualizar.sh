#!/bin/bash
# Publica el directorio InnovaClub en GitHub Pages.
# Uso: bash actualizar.sh   (pide un token classic con permiso `repo`; revocarlo después)

REPO_DIR="/Users/jpmaldonado/catalogo_innovaclub"
REPO_NAME="$(cat "$REPO_DIR/.repo_name")"
REMOTE="github.com/jpmaldonadoa/${REPO_NAME}.git"

cd "$REPO_DIR" || exit 1
grep -q 'name="robots" content="noindex' index.html || { echo "Error: index.html sin meta noindex. Abortando."; exit 1; }

echo ""
echo "Token de GitHub (no se mostrará en pantalla):"
read -s TOKEN
echo ""
[ -z "$TOKEN" ] && { echo "Error: no ingresaste un token. Abortando."; exit 1; }

git add index.html .gitignore
git commit -m "Actualización directorio $(date '+%Y-%m-%d %H:%M')" || echo "(sin cambios que commitear)"
git push "https://jpmaldonadoa:${TOKEN}@${REMOTE}" main
echo ""
echo "✓ Publicado en https://jpmaldonadoa.github.io/${REPO_NAME}/"
echo "  (puede tardar ~1 minuto en reflejarse)"
