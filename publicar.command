#!/bin/zsh
# Publica la Guía comercial online: copia el HTML de la carpeta 01-mediabros al repo y hace push.
cd "$(dirname "$0")"
cp ../guia-comercial-mediabros-q4.html index.html
cp ../mediabros-logo.svg ../mediabros-isologo.svg .
git add -A
git commit -m "Actualizar guía comercial $(date '+%Y-%m-%d %H:%M')" || true
git push
echo "Listo: https://mediabrosgh.github.io/guia-comercial-mediabros/"
