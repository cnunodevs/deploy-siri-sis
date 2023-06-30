@echo off

REM 2. Ejecutar "docker compose down"

if [ $( docker ps | grep -E 'server-siri|client-siri' | wc -l ) -gt 0 ]; then
  echo Ejecutando docker-compose down...
  docker-compose down
else 
  echo "no hay ningun contenedor activo"
