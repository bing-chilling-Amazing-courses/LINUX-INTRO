#!/usr/bin/env bash
set -euo pipefail

echo "[+] Usuario actual:"
whoami

echo
echo "[+] UID, GID y grupos:"
id

echo
echo "[+] Grupos del usuario:"
groups

echo
echo "[+] Información del usuario en macOS con dscl:"
dscl . -read "/Users/$(whoami)" UniqueID PrimaryGroupID NFSHomeDirectory UserShell 2>/dev/null || {
  echo "[i] No se pudo leer información con dscl."
}

echo
echo "[i] Este script solo muestra información."
echo "[i] No crea usuarios ni modifica grupos."
