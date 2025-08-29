@echo off
echo Atualizando repositório GitHub...

REM Adicionar Git ao PATH temporariamente
set PATH=%PATH%;C:\Program Files\Git\bin

echo Verificando se Git está disponível...
git --version >nul 2>&1

if %errorlevel% neq 0 (
    echo Git não encontrado. Tentando caminho alternativo...
    set PATH=%PATH%;C:\Program Files\Git\cmd
    git --version >nul 2>&1
)

if %errorlevel% neq 0 (
    echo ERRO: Git não foi encontrado. 
    echo Por favor, faça o upload manual pelo navegador:
    echo 1. Vá para: https://github.com/bielsilvasantana2019-tech/bradesco-download2
    echo 2. Clique em "Add file" -^> "Upload files"
    echo 3. Arraste os arquivos atualizados
    echo 4. Commit message: "Update: Adicionado favicon e melhorias"
    pause
    exit /b 1
)

echo Adicionando arquivos modificados...
git add .

echo Fazendo commit das alterações...
git commit -m "Update: Adicionado favicon e melhorias na interface"

echo Enviando para o GitHub...
git push origin main

echo Atualização no GitHub concluída!
echo.
echo Agora vamos configurar o Netlify...
pause
