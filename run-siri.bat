@echo off

REM 1. Detener y eliminar contenedores de Docker activos
echo Verificando contenedores activos...
docker ps -q > nul 2>&1
if %errorlevel%==0 (
    echo Deteniendo y eliminando contenedores activos...
    docker compose down
) else (
    echo No se encontraron contenedores activos.
)

REM 2. Ejecutar "docker compose up"
echo Ejecutando docker-compose up...
docker compose up
