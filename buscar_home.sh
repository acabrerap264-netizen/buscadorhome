#!/bin/bash

# ===== Parte 1: configuracion y validacion (Integrante 1) =====

# Palabra que se desea buscar
palabra="home"

# Pedir la carpeta donde se realizara la busqueda
read -r -p "Escribe la ruta de la carpeta: " carpeta

# Validar que la carpeta exista
if [[ ! -d "$carpeta" ]]; then
    echo "Error: la carpeta no existe."
    exit 1
fi

# Inicializar el contador de archivos encontrados
total=0

echo ""
echo "Buscando: $palabra"
echo "Carpeta: $carpeta"
echo "--------------------------------"
