#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR" ]; then
  echo "[i] No existe $LAB_DIR. Nada que limpiar."
  exit 0
fi

echo "[!] Se eliminará únicamente el laboratorio local: $LAB_DIR"
rm -rf "$LAB_DIR"
echo "[+] Laboratorio eliminado."
