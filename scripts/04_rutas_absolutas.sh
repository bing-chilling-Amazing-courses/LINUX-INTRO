#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR/empresa" ]; then
  echo "[-] No existe la estructura. Ejecuta primero: ./scripts/01_crear_estructura.sh"
  exit 1
fi

ABS_PATH="$(cd "$LAB_DIR/empresa/tecnologia/desarrollo" && pwd)"

echo "[+] Una ruta absoluta empieza desde /"
echo "[+] Ruta absoluta del directorio desarrollo:"
echo "$ABS_PATH"

echo
echo "[+] Listando archivos usando ruta absoluta:"
ls -la "$ABS_PATH"
