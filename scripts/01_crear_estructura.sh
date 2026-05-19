#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"

echo "[+] Creando laboratorio en: $LAB_DIR"

mkdir -p "$LAB_DIR"/empresa/{finanzas,recursos_humanos,tecnologia,ventas}
mkdir -p "$LAB_DIR"/empresa/tecnologia/{servidores,desarrollo,soporte}

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
echo
echo "Ahora puedes entrar con:"
echo "cd $LAB_DIR"
