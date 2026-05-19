#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR" ]; then
  echo "[-] No existe $LAB_DIR. Ejecuta primero: ./scripts/01_crear_estructura.sh"
  exit 1
fi

echo "[+] Mostrando estructura con find:"
find "$LAB_DIR" -maxdepth 4 -print
