#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

if [ ! -d "$LAB_DIR/empresa" ]; then
  echo "[-] No existe la estructura. Ejecuta primero: ./scripts/01_crear_estructura.sh"
  exit 1
fi

echo "Practica estos comandos manualmente:"
echo
echo "cd $LAB_DIR"
echo "pwd"
echo "ls"
echo "ls empresa"
echo "cd empresa"
echo "ls"
echo "cd tecnologia"
echo "pwd"
echo "cd desarrollo"
echo "ls -la"
echo "cd .."
echo "cd .."
echo "pwd"
echo
echo "Objetivo: entender dónde estás, qué hay dentro y cómo regresar."
