#!/usr/bin/env bash
set -euo pipefail

LAB_DIR="${1:-directorio_lab}"
DEMO_DIR="$LAB_DIR/permisos_demo"

mkdir -p "$DEMO_DIR"

cat > "$DEMO_DIR/documento.txt" <<'TXT'
Archivo de práctica para permisos en macOS.
TXT

cat > "$DEMO_DIR/script_demo.sh" <<'TXT'
#!/usr/bin/env bash
echo "Hola desde un script con permiso de ejecución."
TXT

chmod 644 "$DEMO_DIR/documento.txt"
chmod 755 "$DEMO_DIR/script_demo.sh"

echo "[+] umask actual del usuario:"
umask

echo
echo "[+] Permisos creados explícitamente para la práctica:"
ls -la "$DEMO_DIR"

echo
echo "[i] En macOS normalmente verás archivos como -rw-r--r-- y directorios como drwxr-xr-x,"
echo "[i] dependiendo de la umask del usuario."
echo
echo "Prueba manual:"
echo "chmod 600 $DEMO_DIR/documento.txt"
echo "ls -la $DEMO_DIR"
echo "chmod 644 $DEMO_DIR/documento.txt"
