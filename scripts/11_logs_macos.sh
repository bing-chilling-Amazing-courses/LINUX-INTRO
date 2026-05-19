#!/usr/bin/env bash
set -euo pipefail

echo "[+] macOS usa Unified Logging."
echo "[+] Mostrando eventos recientes de forma limitada:"

log show --last 1m --style compact 2>/dev/null | head -30 || {
  echo "[i] No se pudieron leer logs con log show."
  echo "[i] Puede depender de permisos, versión de macOS o políticas del sistema."
}

echo
echo "[+] Directorios comunes de logs:"
ls -la /var/log 2>/dev/null | head -20 || echo "[i] No se pudo leer /var/log."

echo
echo "[i] Este script solo lee logs disponibles para el usuario actual."
