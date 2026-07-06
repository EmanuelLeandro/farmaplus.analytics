@echo off
chcp 65001 >nul
echo ============================================================
echo  Farmaplus Analytics - Descarga de librerias (modo offline)
echo ============================================================
echo.
echo Este script descarga 3 archivos UNA sola vez para que la
echo aplicacion funcione sin conexion a internet.
echo Debe ejecutarse en la MISMA carpeta donde esta casi.html
echo.
if not exist libs mkdir libs
echo [1/3] Descargando Tailwind CSS...
curl -L -s -o libs\tailwind.js https://cdn.tailwindcss.com
echo [2/3] Descargando SheetJS (lectura de Excel)...
curl -L -s -o libs\xlsx.full.min.js https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js
echo [3/3] Descargando Chart.js (graficos)...
curl -L -s -o libs\chart.umd.js https://cdn.jsdelivr.net/npm/chart.js
echo.
if exist libs\tailwind.js if exist libs\xlsx.full.min.js if exist libs\chart.umd.js (
    echo LISTO! La aplicacion ahora funciona sin internet.
) else (
    echo ATENCION: alguna descarga fallo. Verifica tu conexion e intenta de nuevo.
)
echo.
pause
