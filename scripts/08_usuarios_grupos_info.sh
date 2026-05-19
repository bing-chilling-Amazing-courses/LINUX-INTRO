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
echo "[i] Este script solo muestra información."
echo "[i] No crea usuarios ni modifica grupos."
