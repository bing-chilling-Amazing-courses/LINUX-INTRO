#!/usr/bin/env bash
set -euo pipefail

echo "[+] Buscando logs comunes de lectura pública..."

if command -v journalctl >/dev/null 2>&1; then
  echo
  echo "[+] Últimos logs del usuario actual con journalctl:"
  journalctl --user -n 10 --no-pager 2>/dev/null || echo "[i] No hay journal de usuario disponible."
else
  echo "[i] journalctl no está disponible."
fi

echo
echo "[+] Archivos comunes en /var/log:"
ls -la /var/log 2>/dev/null | head -20 || echo "[i] No se pudo leer /var/log."

echo
echo "[i] Este script solo muestra logs accesibles para el usuario actual."
