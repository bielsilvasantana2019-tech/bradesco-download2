@echo off
echo Inicializando Git...
git init

echo Adicionando arquivos...
git add .

echo Fazendo commit inicial...
git commit -m "Initial commit - Upload projeto Bradesco"

echo Adicionando repositório remoto...
git remote add origin https://github.com/bielsilvasantana2019-tech/bradesco-download2.git

echo Renomeando branch para main...
git branch -M main

echo Fazendo push para o GitHub...
git push -u origin main

echo Deploy concluído!
pause
