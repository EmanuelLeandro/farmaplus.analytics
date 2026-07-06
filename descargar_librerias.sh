#!/bin/bash
# Farmaplus Analytics - Descarga de librerías para modo sin internet
# Ejecutar una sola vez en la misma carpeta donde está casi.html
echo "Descargando librerías para modo offline..."
mkdir -p libs
echo "[1/3] Tailwind CSS..."
curl -L -s -o libs/tailwind.js https://cdn.tailwindcss.com
echo "[2/3] SheetJS (lectura de Excel)..."
curl -L -s -o libs/xlsx.full.min.js https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js
echo "[3/3] Chart.js (gráficos)..."
curl -L -s -o libs/chart.umd.js https://cdn.jsdelivr.net/npm/chart.js
if [ -s libs/tailwind.js ] && [ -s libs/xlsx.full.min.js ] && [ -s libs/chart.umd.js ]; then
    echo "✅ Listo. La aplicación ahora funciona sin internet."
else
    echo "⚠️ Alguna descarga falló. Verificá tu conexión e intentá de nuevo."
fi
