#!/usr/bin/env bash
set -euo pipefail

echo "[+] En macOS, launchd administra servicios y agentes."
echo "[+] launchctl permite consultar esos servicios."

echo
echo "[+] Algunos servicios/agentes visibles para el usuario:"
launchctl list | head -20

echo
echo "[i] Este script solo lista información."
echo "[i] No carga, descarga, inicia ni detiene servicios."
