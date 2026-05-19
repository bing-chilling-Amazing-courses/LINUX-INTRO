#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR" ]; then
  echo "[-] No existe $LAB_DIR. Ejecuta primero: ./scripts/01_crear_estructura.sh"
  exit 1
fi

cd "$LAB_DIR"

echo "[+] Directorio actual:"
pwd

echo
echo "[+] Contenido básico:"
ls

echo
echo "[+] Contenido detallado:"
ls -la

echo
echo "[+] Contenido de empresa:"
ls -la empresa
