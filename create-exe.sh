#!/bin/sh

docker run -d -t --name python-wine --rm pywine

# Criar executavel para um sistema 64 bits
docker exec -w /opt python-wine wine pyinstaller --onefile script.py

# Descomente essa linha e comenta a de cima para
# Criar executavel para um sistema 32 bits
# docker exec python-wine wine pyinstaller --onefile --target=win32 /opt/script.py

docker cp python-wine:/opt/dist/script.exe .

docker stop python-wine
