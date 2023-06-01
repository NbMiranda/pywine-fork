#!/bin/sh

#Cria o container
docker run -d -t --name python-wine --rm pywine

# Criar executavel 
docker exec -w /opt python-wine wine pyinstaller --onefile script.py

# Copia o executavel para a pasta atual
docker cp python-wine:/opt/dist/script.exe .

# Encerra o container
docker stop python-wine
