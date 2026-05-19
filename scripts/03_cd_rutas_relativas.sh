#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR/empresa" ]; then
  echo "[-] No existe la estructura. Ejecuta primero: ./scripts/01_crear_estructura.sh"
  exit 1
fi

cd "$LAB_DIR/empresa"

echo "[+] Estamos en:"
pwd

echo
echo "[+] Entrando a tecnologia con ruta relativa:"
cd tecnologia
pwd

echo
echo "[+] Entrando a desarrollo desde tecnologia:"
cd desarrollo
pwd

echo
echo "[+] Regresando un nivel con .."
cd ..
pwd

echo
echo "[+] Regresando a empresa con .."
cd ..
pwd
