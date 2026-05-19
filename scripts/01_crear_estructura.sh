#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

echo "[+] Creando laboratorio en: $LAB_DIR"

mkdir -p "$LAB_DIR"/empresa/finanzas
mkdir -p "$LAB_DIR"/empresa/recursos_humanos
mkdir -p "$LAB_DIR"/empresa/tecnologia/servidores
mkdir -p "$LAB_DIR"/empresa/tecnologia/desarrollo
mkdir -p "$LAB_DIR"/empresa/tecnologia/soporte
mkdir -p "$LAB_DIR"/empresa/ventas

cat > "$LAB_DIR"/empresa/README_EMPRESA.txt <<'TXT'
Este directorio simula una estructura simple de una empresa.
Usaremos estas carpetas para aprender a movernos, listar archivos y entender rutas.
TXT

cat > "$LAB_DIR"/empresa/finanzas/presupuesto.txt <<'TXT'
Presupuesto Q1:
- Infraestructura
- Nómina
- Herramientas internas
TXT

cat > "$LAB_DIR"/empresa/recursos_humanos/politicas.txt <<'TXT'
Políticas internas:
- Horarios
- Vacaciones
- Equipo asignado
TXT

cat > "$LAB_DIR"/empresa/tecnologia/desarrollo/app.txt <<'TXT'
Proyecto interno:
- Backend
- Frontend
- Pruebas
TXT

cat > "$LAB_DIR"/empresa/ventas/clientes.txt <<'TXT'
Clientes demo:
- Cliente A
- Cliente B
- Cliente C
TXT

echo "[+] Estructura creada."
echo "Ahora puedes entrar con: cd $LAB_DIR"
