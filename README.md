# Directorios básicos en Linux
Repositorio educativo para enseñar el concepto de directorios, cómo moverse entre carpetas, cómo listar contenido y cómo entender rutas relativas y absolutas.

## Objetivo

Al terminar este flujo, la persona debería entender:

- Qué es un directorio.
- Cómo saber en qué directorio está con `pwd`.
- Cómo listar contenido con `ls`.
- Cómo moverse con `cd`.
- Qué significa `..`.
- Diferencia entre ruta relativa y ruta absoluta.
- Cómo ver una estructura de carpetas con `find`.

## Requisitos

Sistema Linux, macOS o WSL con Bash.

Antes de ejecutar los scripts:

```bash
chmod +x scripts/*.sh
```

## Flujo recomendado

### 1. Crear el laboratorio

```bash
./scripts/01_crear_estructura.sh
```

Esto crea una carpeta llamada `directorio_lab` con una estructura simulada de empresa.

También puedes usar otro nombre:

```bash
./scripts/01_crear_estructura.sh mi_lab
```

### 2. Ver dónde estás y listar contenido

```bash
./scripts/02_pwd_y_ls.sh
```

Este script muestra el uso de:

```bash
pwd
ls
ls -la
```

### 3. Practicar movimiento con rutas relativas

```bash
./scripts/03_cd_rutas_relativas.sh
```

Aquí se enseña cómo moverse usando:

```bash
cd carpeta
cd ..
```

`..` significa “subir un nivel”.

### 4. Ver rutas absolutas

```bash
./scripts/04_rutas_absolutas.sh
```

Una ruta absoluta empieza desde `/`, por ejemplo:

```bash
/home/usuario/directorio_lab/empresa/tecnologia/desarrollo
```

### 5. Ver la estructura completa

```bash
./scripts/05_tree_sin_tree.sh
```

Este script usa `find` para mostrar la estructura sin necesitar instalar `tree`.

### 6. Práctica manual

```bash
./scripts/06_practica_guiada.sh
```

Este script imprime comandos para que la persona los escriba manualmente.

La práctica manual es importante porque ayuda a memorizar el flujo real de navegación.

### 7. Limpiar el laboratorio

```bash
./scripts/99_limpiar_lab.sh
```

Esto elimina únicamente la carpeta `directorio_lab`.

## Orden sugerido para enseñar

Primero explica que una carpeta puede contener archivos y otras carpetas.

Después ejecuta:

```bash
./scripts/01_crear_estructura.sh
./scripts/05_tree_sin_tree.sh
```

Luego entra al laboratorio manualmente:

```bash
cd directorio_lab
pwd
ls
cd empresa
ls
cd tecnologia
pwd
cd desarrollo
ls
cd ..
pwd
```

Finalmente explica:

```bash
.
..
/
```

Significado:

`.` representa el directorio actual.

`..` representa el directorio padre.

`/` representa la raíz del sistema.

## Estructura generada

```text
directorio_lab/
└── empresa/
    ├── README_EMPRESA.txt
    ├── finanzas/
    │   └── presupuesto.txt
    ├── recursos_humanos/
    │   └── politicas.txt
    ├── tecnologia/
    │   ├── desarrollo/
    │   │   └── app.txt
    │   ├── servidores/
    │   └── soporte/
    └── ventas/
        └── clientes.txt
```
