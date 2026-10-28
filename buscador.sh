	
#!/bin/bash

# ===== Parte 3: salida de resultados (Integrante 3) =====

total=0

while IFS= read -r -d '' archivo; do
    # Mostrar la ubicacion del archivo
    echo "Ubicacion: $archivo"
    ((total++))
done < <(find "$carpeta" -type f -print0)

# Mostrar el total de archivos encontrados
echo "--------------------------------"
echo "Total de archivos encontrados: $total"

