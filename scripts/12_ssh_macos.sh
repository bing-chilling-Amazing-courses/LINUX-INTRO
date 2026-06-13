#!/usr/bin/env bash
set -euo pipefail

echo "[+] Cliente SSH instalado:"
if command -v ssh >/dev/null 2>&1; then
  ssh -V 2>&1
else
  echo "ssh no está instalado."
fi

echo
echo "[+] Directorio local típico de configuración SSH:"
echo "$HOME/.ssh"

if [ -d "$HOME/.ssh" ]; then
  echo
  echo "[+] Contenido actual de ~/.ssh:"
  ls -la "$HOME/.ssh"
else
  echo
  echo "[i] No existe ~/.ssh todavía."
fi
echo
echo "[i] Conceptos clave:"
echo "- ssh permite conectarse a otra máquina de forma remota."
echo "- ~/.ssh/config puede guardar alias de conexión."
echo "- authorized_keys se usa en el servidor para permitir llaves públicas."
echo "- known_hosts guarda servidores ya visitados."
echo
