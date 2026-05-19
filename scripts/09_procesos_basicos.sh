#!/usr/bin/env bash
set -euo pipefail

echo "[+] Procesos actuales del usuario:"
ps -u "$(whoami)" -o pid,ppid,comm,%cpu,%mem --sort=comm | head -20

echo
echo "[+] Proceso de shell actual:"
echo "PID actual: $$"

echo
echo "[+] Ejemplo seguro: iniciar un proceso temporal sleep 5"
sleep 5 &
PID_DEMO=$!

echo "Proceso creado con PID: $PID_DEMO"
echo "Puedes verlo con:"
echo "ps -p $PID_DEMO -o pid,ppid,comm"

wait "$PID_DEMO"

echo
echo "[+] El proceso temporal terminó."
