#!/bin/bash
# ===== Parte 2: busqueda en los archivos (Integrante 2) =====

# Recorrer los archivos de la carpeta y sus subcarpetas
while IFS= read -r -d '' archivo; do

    # Revisar si el archivo contiene la palabra
    if grep -qF -- "$palabra" "$archivo" 2>/dev/null; then

        # ===== Parte 3: salida de resultados (Integrante 3) =====

        # Mostrar la ubicacion del archivo
        echo "Ubicacion: $archivo"
        ((total++))
    fi

done < <(find "$carpeta" -type f -print0)

# Mostrar el total de archivos encontrados
echo "--------------------------------"
echo "Total de archivos encontrados: $total"
