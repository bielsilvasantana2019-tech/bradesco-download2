@echo off
echo Configurando Git...

REM Adicionar Git ao PATH temporariamente
set PATH=%PATH%;C:\Program Files\Git\bin

echo Verificando se Git está disponível...
git --version

if %errorlevel% neq 0 (
    echo Git não encontrado. Tentando caminho alternativo...
    set PATH=%PATH%;C:\Program Files\Git\cmd
    git --version
)

if %errorlevel% neq 0 (
    echo ERRO: Git não foi encontrado. Por favor, reinicie o computador após a instalação.
    pause
    exit /b 1
)

echo Inicializando Git...
git init

echo Adicionando arquivos...
git add .

echo Configurando usuário Git...
git config user.email "seu-email@exemplo.com"
git config user.name "Seu Nome"

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
