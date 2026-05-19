#!/usr/bin/env bash
set -euo pipefail

if ! command -v systemctl >/dev/null 2>&1; then
  echo "[-] systemctl no está disponible en este entorno."
  echo "[i] Esto puede pasar en contenedores, macOS o algunos WSL."
  exit 0
fi

echo "[+] Estado general de systemd:"
systemctl is-system-running || true

echo
echo "[+] Algunos servicios cargados:"
systemctl list-units --type=service --no-pager | head -20

echo
echo "[i] Este script solo lee información."
echo "[i] No inicia, detiene ni modifica servicios."
